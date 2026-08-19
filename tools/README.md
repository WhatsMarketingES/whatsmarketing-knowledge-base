# Herramientas

## Skill `php-pro` para Claude Code

Instalador de la skill [`php-pro`](https://github.com/jeffallan/claude-skills/tree/main/skills/php-pro)
del pack *fullstack-dev-skills* de [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) (MIT).

Es un experto en PHP 8.3+, Laravel y Symfony: tipado estricto (`declare(strict_types=1)`),
PSR-12, PHPStan nivel 9, DTOs y value objects readonly, inyeccion de dependencias,
patrones async (Swoole / ReactPHP) y tests con PHPUnit/Pest.

### Instalacion global (todos los proyectos)

```bash
./tools/install-php-pro-skill.sh
```

Copia la skill a `~/.claude/skills/php-pro`. Al vivir en el directorio global de
Claude Code, se activa en **cualquier** proyecto, no solo en este repositorio.
Reinicia Claude Code al terminar.

Opciones:

```bash
./tools/install-php-pro-skill.sh --all        # instala las 67 skills del pack
./tools/install-php-pro-skill.sh --uninstall  # elimina php-pro
```

Variable opcional: `CLAUDE_SKILLS_DIR` para instalar en otra ruta
(por defecto `~/.claude/skills`).

### Alternativa: instalar el pack completo como plugin

Desde dentro de Claude Code:

```
/plugin marketplace add jeffallan/claude-skills
/plugin install fullstack-dev-skills@jeffallan
```

Esto agrega las 67 skills mas los comandos de workflow (`/common-ground`,
`/project:*`) y se actualiza solo con `/plugin update`. Es la opcion recomendada
si te interesa todo el pack; el script de arriba es la opcion minima si solo
quieres PHP.

### Verificar

Ejecuta `/skills` dentro de Claude Code y busca `php-pro`, o:

```bash
ls ~/.claude/skills/php-pro
```
