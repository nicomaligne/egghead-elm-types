module SingleConstructor exposing (..)

import Html exposing (h1, text)
import Email


{-
    Less safety
   type alias EmailAdress =
       String
-}


type alias Message =
    { recipient : Email.EmailAdress
    , body : String
    }


data : String
data =
    "Hello@"


renderMessage : Message -> String
renderMessage msg =
    msg.body


main =
    let
        content =
            data |> Email.validateAdress |> Result.map Email.renderEmailAdress |> Result.withDefault "invalid"
    in
        h1 [] [ text content ]
