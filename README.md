## Editing

To alter the contents of the pages, edit the markdown files in `content/`.

* Option 1: Clone and commit locally, like any other git repo
* Option 2: Changes can be committed from a basic codespace (press the `.` (DOT) key)
* Option 3: Changes can be committed *and published* to the website from devcontainer codespace (see below)

## Development

To make fundamental changes and build the site yourself, use the Nix file.

* Run `nix-shell` to get a shell with the development tools
    * An explainer message will pop up on your terminal
* Run `nix-build` to build the site
    * The last line in the output will point to the directory with the generated artifacts

If you don't have Nix installed, create a devcontainer codespace by accessing [this url](https://codespaces.new/d33pk3rn3l/space_systems_engineering). Initial setup will take a few minutes.

## Deployment

Run `deploy.sh`.
