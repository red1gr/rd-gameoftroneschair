# RD-GAMEOFTRONESCHAIR

[![GitHub license](https://img.shields.io/github/license/red1gr/rd-gameoftroneschair?style=for-the-badge&logo=apache&logoColor=white)](LICENSE)

## OVERVIEW

This project is a FiveM resource for GTA V that integrates a custom game object, specifically a Game of Thrones-themed chair. It provides the necessary archetype definitions and client-side logic to ensure the asset is correctly streamed and handled within the game environment.
<p align="center">
  <img src="https://img.freepik.com/premium-photo/game-thrones-chair-with-iron-throne-it_902639-63174.jpg" alt="Iron Throne" width="700">
</p>
## FEATURES

- **Custom Asset Streaming:** Integrates a `.ytyp` data file to define custom object archetypes for the game world.
- **Client-Side Execution:** Utilizes Lua scripts to manage resource behavior on the client end.
- **Modern FiveM Compatibility:** Built using the 'cerulean' FX version and Lua 5.4 for improved performance and stability.

## TECH STACK

[![Lua](https://img.shields.io/badge/Lua-5.4-2C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)](https://www.lua.org/)
[![FiveM](https://img.shields.io/badge/FiveM-cerulean-F44336.svg?style=for-the-badge&logo=fivem&logoColor=white)](https://fivem.net/)

### INSTALLATION

1. **Deploy Resource**
    - Move the `rd-gameoftroneschair` folder into your server's `resources` directory:
      ```text
      server-data/
      └── resources/
              └── rd-gameoftroneschair/
      ```
2. **Configure Server**
    - Add the resource to your `server.cfg` file to ensure it loads on startup:
      ```cfg
      ensure rd-gameoftroneschair
      ```
3. **Initialize Server**
    - Restart your FiveM server or start the resource via the console using `start rd-gameoftroneschair`.

## PROJECT STRUCTURE

```text
rd-gameoftroneschair/
├── client/               # Client-side script directory
│   └── r.lua             # Client logic implementation
├── stream/               # Asset streaming directory
│   └── rd1.ytyp          # Archetype definition for the custom chair
└── fxmanifest.lua        # Resource manifest and metadata
```

## CONTRIBUTING

- WE WELCOME CONTRIBUTIONS! IF YOU HAVE SUGGESTIONS FOR IMPROVEMENTS, FEATURE REQUESTS, OR BUG REPORTS, PLEASE OPEN AN ISSUE OR SUBMIT A PULL REQUEST ON OUR GITHUB REPOSITORY.

## LICENSE

- THIS PROJECT IS LICENSED UNDER THE [APACHE-2.0](LICENSE) - SEE THE [LICENSE](LICENSE) FILE FOR DETAILS.

## SUPPORT & CONTACT

- CONTACT: [SUPPORT CONTACT](mailto:mail@red1gr.dev)
