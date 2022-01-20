let upstream =
      https://raw.githubusercontent.com/working-group-purescript-es/package-sets/main/packages.dhall
        sha256:bed8d3f7fcac6fed46b9b327378b2303a1801706d35ad502156c62e9ddc906e7

let additions =
      { halogen-storybook =
        { dependencies = [ "halogen", "routing", "foreign-object" ]
        , repo = "https://github.com/rnons/purescript-halogen-storybook.git"
        , version = "7327247aea379d4582dad9f93be9749556d26c99"
        }
      }

in  (upstream // additions)
    with metadata.version = "v0.15.0"
