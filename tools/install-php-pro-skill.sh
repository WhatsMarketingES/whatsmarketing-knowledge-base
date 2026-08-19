#!/usr/bin/env bash
#
# Instala la skill "php-pro" de https://github.com/jeffallan/claude-skills
# para que Claude Code la tenga disponible.
#
# Dos destinos posibles:
#   GLOBAL  (~/.claude/skills)   -> disponible en TODOS los proyectos de esa maquina.
#   PROYECTO (./.claude/skills)  -> viaja con el repositorio; es la unica forma de
#                                   que sobreviva en Claude Code web, donde el
#                                   contenedor se recrea en cada sesion.
#
# Uso:
#   ./tools/install-php-pro-skill.sh                # global (por defecto)
#   ./tools/install-php-pro-skill.sh --project      # dentro del repo actual
#   ./tools/install-php-pro-skill.sh --all          # las 67 skills del pack
#   ./tools/install-php-pro-skill.sh --if-missing   # no hace nada si ya esta (para hooks)
#   ./tools/install-php-pro-skill.sh --quiet        # sin salida salvo errores
#   ./tools/install-php-pro-skill.sh --uninstall
#
# Los flags se combinan, p. ej.:
#   ./tools/install-php-pro-skill.sh --project --if-missing --quiet
#
# Es idempotente: re-ejecutarlo actualiza la skill a la ultima version.

set -euo pipefail

REPO_URL="https://github.com/jeffallan/claude-skills.git"
TARGET="global"
ALL=0
IF_MISSING=0
QUIET=0
UNINSTALL=0

for arg in "$@"; do
  case "$arg" in
    --project)    TARGET="project" ;;
    --global)     TARGET="global" ;;
    --all)        ALL=1 ;;
    --if-missing) IF_MISSING=1 ;;
    --quiet|-q)   QUIET=1 ;;
    --uninstall)  UNINSTALL=1 ;;
    -h|--help)    awk 'NR>1 && /^#/ {sub(/^# ?/, ""); print; next} NR>1 {exit}' "$0"; exit 0 ;;
    *)            echo "Opcion desconocida: $arg" >&2; exit 2 ;;
  esac
done

if [ -n "${CLAUDE_SKILLS_DIR:-}" ]; then
  SKILLS_DIR="$CLAUDE_SKILLS_DIR"
elif [ "$TARGET" = "project" ]; then
  SKILLS_DIR="$(git rev-parse --show-toplevel 2>/dev/null || pwd)/.claude/skills"
else
  SKILLS_DIR="$HOME/.claude/skills"
fi

say() { [ "$QUIET" -eq 1 ] || echo "$@"; }

if [ "$UNINSTALL" -eq 1 ]; then
  rm -rf "${SKILLS_DIR:?}/php-pro"
  say "php-pro desinstalada de $SKILLS_DIR"
  say "Reinicia Claude Code para aplicar el cambio."
  exit 0
fi

if [ "$IF_MISSING" -eq 1 ] && [ -f "$SKILLS_DIR/php-pro/SKILL.md" ]; then
  say "php-pro ya presente en $SKILLS_DIR; nada que hacer."
  exit 0
fi

command -v git >/dev/null 2>&1 || { echo "Error: se requiere git." >&2; exit 1; }

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

say "Descargando $REPO_URL ..."
git clone --depth 1 --quiet "$REPO_URL" "$TMP_DIR/claude-skills"

mkdir -p "$SKILLS_DIR"

if [ "$ALL" -eq 1 ]; then
  count=0
  for skill in "$TMP_DIR/claude-skills/skills"/*/; do
    name="$(basename "$skill")"
    rm -rf "${SKILLS_DIR:?}/$name"
    cp -r "$skill" "$SKILLS_DIR/$name"
    count=$((count + 1))
  done
  say "Instaladas $count skills en $SKILLS_DIR"
else
  SRC="$TMP_DIR/claude-skills/skills/php-pro"
  [ -d "$SRC" ] || { echo "Error: no se encontro skills/php-pro en el repo." >&2; exit 1; }
  rm -rf "${SKILLS_DIR:?}/php-pro"
  cp -r "$SRC" "$SKILLS_DIR/php-pro"
  say "Instalada php-pro en $SKILLS_DIR/php-pro"
fi

if [ "$QUIET" -eq 0 ]; then
  echo
  echo "Archivos:"
  find "$SKILLS_DIR/php-pro" -type f | sort | sed 's/^/  /'
  echo
  echo "Listo. Reinicia Claude Code y verifica con /skills."
fi
