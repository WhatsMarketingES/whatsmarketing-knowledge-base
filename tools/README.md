# Herramientas

## Skill `php-pro` para Claude Code

Instalador de la skill [`php-pro`](https://github.com/jeffallan/claude-skills/tree/main/skills/php-pro)
del pack *fullstack-dev-skills* de [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) (MIT).

Experto en PHP 8.3+, Laravel y Symfony: tipado estricto (`declare(strict_types=1)`),
PSR-12, PHPStan nivel 9, DTOs y value objects readonly, inyeccion de dependencias,
patrones async (Swoole / ReactPHP) y tests con PHPUnit/Pest.

---

## Como conseguir que exista en TODOS los proyectos

Claude Code busca skills en dos sitios, y la respuesta correcta depende de donde
lo ejecutes:

| Ubicacion | Alcance | Persiste |
|---|---|---|
| `~/.claude/skills/` | todos los proyectos de esa maquina | si, en Claude Code local (CLI, escritorio, IDE) |
| `<repo>/.claude/skills/` | solo ese repositorio, para todo el equipo | si, viaja en git — funciona tambien en Claude Code web |

**Claude Code local:** basta la instalacion global, una sola vez.

**Claude Code web (claude.ai/code):** cada sesion arranca en un contenedor nuevo y
`~/.claude/` se pierde al terminar. Ahi la skill tiene que estar **en el repositorio**,
o instalarse al arrancar mediante un hook `SessionStart`.

### 1. Instalacion global (maquina local)

```bash
./tools/install-php-pro-skill.sh
```

Copia la skill a `~/.claude/skills/php-pro`. Reinicia Claude Code al terminar.
Una vez hecho, esta activa en cualquier proyecto de esa maquina.

### 2. Instalacion por repositorio (obligatorio para Claude Code web)

Desde la raiz de cada proyecto PHP:

```bash
curl -fsSL https://raw.githubusercontent.com/WhatsMarketingES/whatsmarketing-knowledge-base/main/tools/install-php-pro-skill.sh \
  | bash -s -- --project
git add .claude/skills/php-pro && git commit -m "Add php-pro Claude Code skill"
```

Deja la skill en `<repo>/.claude/skills/php-pro` (6 archivos, 72 KB) y la versiona,
asi esta disponible en cada sesion web y para todo el equipo sin descargar nada.

### 3. Alternativa: hook `SessionStart` (descarga al arrancar, sin versionar)

Si prefieres no commitear los archivos de la skill, añade esto al
`.claude/settings.json` del proyecto y versiona solo el script:

```json
{
  "hooks": {
    "SessionStart": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "./tools/install-php-pro-skill.sh --project --if-missing --quiet"
          }
        ]
      }
    ]
  }
}
```

Requiere acceso de red a github.com desde el entorno de la sesion. `--if-missing`
lo convierte en no-op cuando la skill ya esta, y `--quiet` evita ruido en el log.

---

## Opciones del script

```
--project      instala en <repo>/.claude/skills en vez de ~/.claude/skills
--global       fuerza ~/.claude/skills (por defecto)
--all          instala las 67 skills del pack, no solo php-pro
--if-missing   no hace nada si la skill ya esta (pensado para hooks)
--quiet, -q    sin salida salvo errores
--uninstall    elimina php-pro del destino elegido
--help, -h     ayuda
```

Los flags se combinan. Variable `CLAUDE_SKILLS_DIR` para forzar una ruta arbitraria.
El script es idempotente: re-ejecutarlo actualiza la skill a la ultima version.

---

## Alternativa: el pack completo como plugin

Desde dentro de Claude Code:

```
/plugin marketplace add jeffallan/claude-skills
/plugin install fullstack-dev-skills@jeffallan
```

Instala las 67 skills mas los comandos de workflow (`/common-ground`, `/project:*`)
y se actualiza con `/plugin update`. Los plugins tambien viven en el perfil del
usuario, con lo que aplica el mismo aviso: en Claude Code web hay que reinstalarlos
por sesion.

## Verificar

Ejecuta `/skills` dentro de Claude Code y busca `php-pro`, o:

```bash
ls ~/.claude/skills/php-pro      # instalacion global
ls .claude/skills/php-pro        # instalacion por repositorio
```
