module Main exposing (..)

import Html exposing (text)


data : Rating
data =
    Other "Hello Toto"


main =
    text (render data)


type Rating
    = Excellent
    | Good
    | Poor
    | Other String


render : Rating -> String
render rating =
    case rating of
        Other s ->
            s

        _ ->
            toString rating
