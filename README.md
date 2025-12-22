# nixar template

Minimal starter template using nixar with a tiny site and JSON endpoint.

## Run
```bash
nix run
```

## Develop
```bash
nix develop
```

## Build
```bash
nix build
```

## Styling (Tailwind + DaisyUI)
Install dependencies with npm or pnpm:
```bash
npm install
# or
pnpm install
```

Build the CSS (outputs to `static/app.css`):
```bash
npm run build:css
# or
pnpm run build:css
```

Watch while editing HTML/CSS:
```bash
npm run watch:css
# or
pnpm run watch:css
```

## Live reload (air)
From the dev shell (`nix develop`):
```bash
air
```

Recommended during development:
```bash
pnpm run watch:css
```

## Routes
- `/` Home page
- `/about` About page
- `/api/hello` JSON sample
- `/health` Health check
- `/static/*` Static files
