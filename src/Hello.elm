module Hello exposing (..)

import Html exposing (Html, div, text)
import Html.Attributes exposing (style)


type alias Rectangle =
    ( Int, Int )


rect : Rectangle
rect =
    ( 200, 50 )


render : Rectangle -> Html a
render ( w, h ) =
    div
        [ style
            [ ( "backgroundColor", "red" )
            , ( "width", (toString w) ++ "px" )
            , ( "height", (toString h) ++ "px" )
            ]
        ]
        []


main : Html msg
main =
    render rect
