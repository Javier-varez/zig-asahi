{
  description = "A template that shows all standard flake outputs";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs =
    { nixpkgs, ... }:
    {
      # # Same idea as overlay but a list or attrset of them.
      overlays = {
        zig-asahi = (
          final: prev: {
            zig_0_13 = prev.zig_0_13.overrideAttrs {
              patches = prev.zig_0_13.patches ++ [ ./patches/zig-fix-asahi-page-size.patch ];
            };
          }
        );
      };
    };
}
