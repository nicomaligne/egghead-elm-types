module PatternMatchBoolean exposing (..)

import Html exposing (text)


-- type Bool
-- = True
--  | False


main =
    text (render False)


render : Bool -> String
render b =
    case b of
        True ->
            "Yep"

        False ->
            "Nah"
