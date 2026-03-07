# Party Character Spinner

Local hosted site for party picks across up to 5 Overwatch profiles:

- D6 roll for rank (`1-6`)
- Stat wheel pulled from Overwatch Top Heroes dropdown
- 5 profile columns (left-most defaults to Flash)
- Each column shows Tank, Damage, and Support picks at the rolled rank for the selected stat
- Hero portraits are pulled from the Overwatch profile data

## Run locally

1. Open terminal in this folder:
   `C:\Users\Gordo\Documents\github\Overwatch`
2. Start server:
   `npm start`
3. Open host view:
   `http://localhost:3010/host`
4. Open viewer view:
   `http://localhost:3010/view`

No dependencies are required beyond Node.js.

## Run with your Porkbun domain

Use Porkbun for DNS, and keep this app running on your machine/server as the backend.

1. In Porkbun DNS, point your domain or subdomain to your public IP:
   - `A` record for `@` (or `spin`) -> your public IPv4
2. Forward ports from your router to the machine running this app:
   - TCP `80` and `443` to your reverse proxy machine
   - TCP `3010` only if you are not using a reverse proxy
3. Start this app on a stable local port:
   - PowerShell:
     `$env:HOST='127.0.0.1'; $env:PORT='3010'; npm start`
4. Put a reverse proxy in front (recommended) for HTTPS:
   - Route `https://bownsfam.app` (or your chosen host) to `http://127.0.0.1:3010`
5. Set the app origin so logs show public URLs:
   - PowerShell:
     `$env:PUBLIC_ORIGIN='https://bownsfam.app'; npm start`

Environment variables supported by `server.js`:
- `PORT` (default `3010`)
- `HOST` (default `0.0.0.0`)
- `PUBLIC_ORIGIN` (default `http://localhost:<PORT>`)

## Use it

1. Keep the app running at `/host`
2. Viewers open `/view`
3. Profiles auto-load on page open
4. Host clicks **Roll + Spin** (single button)
5. Viewer page updates live in real-time
6. Read results per profile under:
   - Tank
   - Damage
   - Support

Support and Damage show two ranks each:
- If roll is `1`: use ranks `1` and `2`
- If roll is `2-6`: use ranks `roll` and `roll-1`
