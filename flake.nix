{
  description = "A collection of organist templates";
  outputs = { self }: 
    let 
      welcomeText = ''
          You have just created an _Organist_-powered development shell.

          - Enter the environment with `nix develop`
          - Tweak it by modifying `project.ncl`

          _Hint_: To be able to leverage the Nickel language server for instant feedback on your configuration, run `nix run .#regenerate-lockfile` first.
        ''; 
    in {
      templates = {
        rust = {
          inherit welcomeText;
          path = ./rust;
          description = "Organist template for rust development";
        };
        # tauri = {
        #   path = ./tauri;
        #   description = "Flake for tauri development";
        # };
        minimal = {
          inherit welcomeText;
          path = ./minimal;
          description = "A minimal template using nickel.";
        };
      };
      defaultTemplate = self.templates.minimal;
    };
}
