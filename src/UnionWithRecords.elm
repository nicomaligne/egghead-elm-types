module UnionWithRecords exposing (..)

import Html exposing (text)


main =
    cone |> volume |> toString |> text


type Shape
    = Sphere Float
    | Box Float Float Float
    | Cone { radius : Float, height : Float }


cone =
    Cone { height = 2, radius = 1 }


box =
    let
        toto =
            1

        tata =
            2

        titi =
            3
    in
        Box toto tata titi


volume : Shape -> Float
volume shape =
    case shape of
        Sphere radius ->
            4 / 3 * pi * radius ^ 3

        Box length height depth ->
            length * height * depth

        Cone cone ->
            pi * cone.radius ^ 2 * cone.height / 3
