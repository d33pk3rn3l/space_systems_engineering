## Editing

To alter the contents of the pages, edit the markdown files in `content/`. The most convenient way to edit is to use GitHub codespaces. Simply press the `.` (DOT) key when viewing this repository to get a web-based VSCode instance running where you can make edits and send pull requests.

## Development

To make fundamental changes and build the site yourself, use the Nix file.

* Run `nix-shell` to get a shell with the development tools
    * An explainer message will pop up on your terminal
* Run `nix-build` to build the site
    * The last line in the output will point to the directory with the generated artifacts

If you don't have Nix installed, create a Nix-enabled codespace by accessing [this url](https://codespaces.new/d33pk3rn3l/space_systems_engineering).

## Deployment

TODO