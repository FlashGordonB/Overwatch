# Party Character Spinner

Local hosted site for party picks across up to 5 Overwatch profiles:

- D6 roll for rank (`1-6`)
- Stat wheel pulled from Overwatch Top Heroes dropdown
- 5 profile columns (left-most defaults to Flash)
- Each column shows Tank, Damage, and Support picks at the rolled rank for the selected stat
- Hero portraits are pulled from the Overwatch profile data

## Run locally

1. Open terminal in this folder:
   `C:\Users\Gordo\Documents\github\party-character-spinner`
2. Start server:
   `npm start`
3. Open host view:
   `http://localhost:3010/host`
4. Open viewer view:
   `http://localhost:3010/view`

No dependencies are required beyond Node.js.

## Use it

1. Keep the app running at `http://localhost:3010/host`
2. Viewers open `http://localhost:3010/view`
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
