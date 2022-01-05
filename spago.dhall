{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ sources = [ "src/**/*.purs", "test/**/*.purs" ]
, name = "purescript-concur-starter"
, dependencies =
  [ "arrays"
  , "concur-core"
  , "concur-react"
  , "console"
  , "css"
  , "effect"
  , "either"
  , "foldable-traversable"
  , "foreign-object"
  , "identity"
  , "maybe"
  , "newtype"
  , "nonempty"
  , "partial"
  , "prelude"
  , "psci-support"
  , "selection-foldable"
  , "tailrec"
  , "transformers"
  , "tree"
  , "tuples"
  , "unsafe-coerce"
  ]
, packages = ./packages.dhall
}
