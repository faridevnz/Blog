module Home exposing (..)

import Browser
import Html exposing (div, h1, text, br)
import Html.Attributes exposing (style)
import Components.Card.Card exposing (cardView)
import Style.Colors exposing (colors)
import Html.Attributes exposing (width)

main = Browser.sandbox { init = init, update = update, view = view }

-- MODEL
init =
    Nothing

-- UPDATE
update model =
    model

-- VIEW

--style
fullPage = 
    [   
        style "width" "100vw",
        style "height" "300vh",
        style "background-color" colors.white_grey,
        style "padding" "50px 100px",
        style "box-sizing" "border-box"
    ]

title = 
    [
        style "margin" "0",
        style "color" colors.dark_grey,
        style "font-size" "60px",
        style "margin-bottom" "50px"
    ]
cardRowLeft =
    [
        style "width" "100%",
        style "display" "flex",
        style "justify-content" "flex-start",
        style "align-items" "center",
        style "margin-top" "50px"
    ]

cardRowRight =
    [
        style "width" "100%",
        style "display" "flex",
        style "justify-content" "flex-end",
        style "align-items" "center",
        style "margin-top" "50px"
    ]

-- template
view model =
    div []
        [
            div fullPage [
                -- title
                h1 title [ text "The Blog" ],
                -- main card
                cardView "big",
                -- other cards
                div cardRowLeft [
                    div [ style "margin-right" "20px" ][ cardView "small" ],
                    div [][ cardView "small" ]
                ],
                div cardRowRight [
                    div [ style "margin-right" "20px" ][ cardView "small" ],
                    div [][ cardView "small" ]
                ]
            ]
        ]