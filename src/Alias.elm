module Main exposing (..)

import Html exposing (text)


type alias Person =
    { name : String
    , age : Int
    , occupation : String
    , dog : Dog
    , salary : Float
    }


type alias Dog =
    { name : String
    , breed : String
    , sterilized : Bool
    }


promote : Person -> Person
promote p =
    { p | occupation = "Manager", salary = p.salary * 20 }


joe : Person
joe =
    { salary = 10.5, name = "Joe", age = 21, occupation = "Chief", dog = fido }


fido : Dog
fido =
    { name = "Fido", breed = "Husky", sterilized = False }


sterilizedPet : Person -> Person
sterilizedPet p =
    let
        dog =
            p.dog
    in
        { p | dog = { dog | sterilized = True } }


greet : Person -> String
greet r =
    "Hello " ++ .name r


main =
    joe
        |> promote
        |> sterilizedPet
        |> toString
        |> text
