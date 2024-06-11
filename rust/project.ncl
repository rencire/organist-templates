let inputs = import "./nickel.lock.ncl" in
let organist = inputs.organist in

{
  shells = organist.shells.rust,

  shells.build = {
    packages = {},
  },

  shells.dev = {
    # packages.hello = organist.import_nix "nixpkgs#hello",
  },
}
  | organist.OrganistExpression
