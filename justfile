# use PowerShell instead of sh:
set shell := ["powershell.exe", "-c"]


# Run backend with dev mode
run-back:
    cd backend | py -3.12 .\api.py

# Run frontend with dev mode
dev-front:
    cd frontend | pnpm run dev

clear:
    rd /s /q node_modules | del package-lock.json

install:
    cd frontend/react-web | pnpm install

clear-install:
  just clear
  just install