module ExtensibleRecords exposing (..)

import Html exposing (Html, text)


main =
    text (greet ("tata" |> rename fido))


type alias Named r =
    { r | name : String }


greet : Named r -> String
greet r =
    "Hello " ++ r.name


rename : Named r -> String -> Named r
rename r newName =
    { r | name = newName }


type alias Person =
    { name : String
    , occupation : String
    }


joe : Person
joe =
    Person "Joe" "Dev"


type alias Dog =
    { name : String
    , breed : String
    }


fido : Dog
fido =
    Dog "Fido" "Husky"
