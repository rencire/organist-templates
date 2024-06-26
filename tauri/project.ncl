let inputs = import "./nickel.lock.ncl" in
let organist = inputs.organist in

{
  shells = organist.shells.Bash,

  shells.build = {
    packages = {},
  },

  shells.dev = {
    packages.direnv = organist.import_nix "nixpkgs#direnv",
    packages.hello = organist.import_nix "nixpkgs#hello",
    packages.cowsay = organist.import_nix "nixpkgs#cowsay"
  },
}
  | ( 
    organist.OrganistExpression
    & organist.tools.direnv.Schema
  )
