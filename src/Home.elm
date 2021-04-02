module Home exposing (..)

import Browser
import Html exposing (div, h1, text)
import Html.Attributes exposing (style)
import Components.Card.Card exposing (cardView)
import HomeStyle exposing (..)
import Components.Card.Card exposing (Size(..))

main : Program () (Maybe a) (Maybe a -> Maybe a)
main = Browser.sandbox { init = init, update = update, view = view }

-- MODEL
init : Maybe a
init =
    Nothing

-- UPDATE
update : a -> a
update model =
    model

-- VIEW

-- template
view : a -> Html.Html msg
view model =
    div []
        [
            div fullPage [
                -- title
                h1 title [ text "The Blog" ],
                -- main card
                cardView Large,
                -- other cards
                div cardRowLeft [
                    div [ style "margin-right" "20px" ][ cardView Small ],
                    div [][ cardView Small ]
                ],
                div cardRowRight [
                    div [ style "margin-right" "20px" ][ cardView Small ],
                    div [][ cardView Small ]
                ]
            ]
        ]