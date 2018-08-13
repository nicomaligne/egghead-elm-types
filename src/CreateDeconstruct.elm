module CreateDeconstruct exposing (..)

import Html exposing (Html, text)


main =
    text (describe fido)


type alias Dog =
    { breed : String
    , name : String
    }


fido : Dog
fido =
    { name = "Fido", breed = "Husky" }


describe : Dog -> String
describe { name, breed } =
    name ++ " is a " ++ breed
