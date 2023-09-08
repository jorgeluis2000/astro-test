# Astro Test by Jorge

This is a little example of Astro.

## Envirinnment variables

You need at following variables.

```env
PORT_HOST=<NUMBER PORT like 3000>
HOSTNAME=<just put the page's domain, if you don't put this variable this will have a default value (default: localhost)>
```

## Run build and dev

### Windows with PowerShell

You must exec at following command on **PowerShell** if you want change the port where expose for.

```powershell
// Run build
$env:PORT_HOST="3000"; pnpm build

// Run dev
$env:PORT_HOST="3000"; pnpm dev
```

### Linux with Bash

You must exec at following command on **Bash** if you want change the port where expose for.

```powershell
// Run build
set PORT_HOST="3000" && pnpm build

// Run dev
set PORT_HOST="3000" && pnpm dev
```
