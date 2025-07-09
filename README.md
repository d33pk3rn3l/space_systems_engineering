This repo contains the student symmary of the fall 2024 Space Systems Engineering course at ETHZ, published at: https://k3rn3l.me/space_systems_engineering/.

To edit/extend the summary, simply edit the markdown files in `content/`, either from a local checkout of the repo (requires Nix), or from your browser in the pre-configured GitHub codespace (create one [here](https://codespaces.new/d33pk3rn3l/space_systems_engineering)).

* build the website: `nix-build`, then see the `result` symlink
    * you may test it via `nix-shell --run 'npx http-server ./result -p 8000'`
* manual build: `nix-shell` and follow the instructions
* build and publish the website: `./deploy.sh`
