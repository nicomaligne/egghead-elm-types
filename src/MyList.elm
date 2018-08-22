module MyList exposing (..)

import Html exposing (text)


{-
   type List a
       = Nil | Cons a (List a)
-}


l1 =
    []


l2 =
    1 :: []


l3 =
    1 :: (2 :: [])


l4 =
    [ 1, 2 ]


main =
    l3 == l4 |> toString |> text
