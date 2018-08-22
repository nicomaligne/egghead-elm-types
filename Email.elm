module Email exposing (EmailAdress, validateAdress, renderEmailAdress)


type EmailAdress
    = EmailAdress String


validateAdress : String -> Result String EmailAdress
validateAdress adr =
    if String.contains "@" adr then
        Result.Ok (EmailAdress adr)
    else
        Result.Err "No valid"


renderEmailAdress : EmailAdress -> String
renderEmailAdress (EmailAdress s) =
    s
