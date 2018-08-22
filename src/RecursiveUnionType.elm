module RecursiveUnionType exposing (..)

import Html exposing (text)


data : Breed
data =
    CrossBreed Beagle (CrossBreed Husky Poodle)


main =
    text (toString data)


type Breed
    = Beagle
    | Husky
    | Poodle
    | CrossBreed Breed Breed


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
