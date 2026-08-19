#!/usr/bin/env bash
#
# Instala la skill "php-pro" de https://github.com/jeffallan/claude-skills
# de forma GLOBAL en ~/.claude/skills, para que quede disponible en TODOS
# los proyectos que uses con Claude Code.
#
# Uso:
#   ./tools/install-php-pro-skill.sh              # instala solo php-pro
#   ./tools/install-php-pro-skill.sh --all        # instala las 67 skills del pack
#   ./tools/install-php-pro-skill.sh --uninstall  # desinstala php-pro
#
# Es idempotente: volver a ejecutarlo actualiza la skill a la ultima version.

set -euo pipefail

REPO_URL="https://github.com/jeffallan/claude-skills.git"
SKILLS_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
MODE="single"

for arg in "$@"; do
  case "$arg" in
    --all)       MODE="all" ;;
    --uninstall) MODE="uninstall" ;;
    -h|--help)   sed -n '2,15p' "$0"; exit 0 ;;
    *)           echo "Opcion desconocida: $arg" >&2; exit 2 ;;
  esac
done

if [ "$MODE" = "uninstall" ]; then
  rm -rf "$SKILLS_DIR/php-pro"
  echo "php-pro desinstalada de $SKILLS_DIR"
  echo "Reinicia Claude Code para aplicar el cambio."
  exit 0
fi

command -v git >/dev/null 2>&1 || { echo "Error: se requiere git." >&2; exit 1; }

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

echo "Descargando $REPO_URL ..."
git clone --depth 1 --quiet "$REPO_URL" "$TMP_DIR/claude-skills"

mkdir -p "$SKILLS_DIR"

if [ "$MODE" = "all" ]; then
  count=0
  for skill in "$TMP_DIR/claude-skills/skills"/*/; do
    name="$(basename "$skill")"
    rm -rf "${SKILLS_DIR:?}/$name"
    cp -r "$skill" "$SKILLS_DIR/$name"
    count=$((count + 1))
  done
  echo "Instaladas $count skills en $SKILLS_DIR"
else
  SRC="$TMP_DIR/claude-skills/skills/php-pro"
  [ -d "$SRC" ] || { echo "Error: no se encontro skills/php-pro en el repo." >&2; exit 1; }
  rm -rf "${SKILLS_DIR:?}/php-pro"
  cp -r "$SRC" "$SKILLS_DIR/php-pro"
  echo "Instalada php-pro en $SKILLS_DIR/php-pro"
fi

echo
echo "Archivos:"
find "$SKILLS_DIR/php-pro" -type f | sort | sed 's/^/  /'
echo
echo "Listo. Reinicia Claude Code y verifica con /skills o /doctor."
