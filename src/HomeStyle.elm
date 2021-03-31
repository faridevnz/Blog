module HomeStyle exposing (..)

import Html
import Html.Attributes exposing (style)
import Style.Colors exposing (..)

--style
fullPage : List (Html.Attribute msg)
fullPage = 
    [   
        style "width" "100vw",
        style "height" "300vh",
        style "background-color" colors.white_grey,
        style "padding" "50px 100px",
        style "box-sizing" "border-box"
    ]

title : List (Html.Attribute msg)
title = 
    [
        style "margin" "0",
        style "color" colors.dark_grey,
        style "font-size" "60px",
        style "margin-bottom" "50px"
    ]
cardRowLeft : List (Html.Attribute msg)
cardRowLeft =
    [
        style "width" "100%",
        style "display" "flex",
        style "justify-content" "flex-start",
        style "align-items" "center",
        style "margin-top" "50px"
    ]

cardRowRight : List (Html.Attribute msg)
cardRowRight =
    [
        style "width" "100%",
        style "display" "flex",
        style "justify-content" "flex-end",
        style "align-items" "center",
        style "margin-top" "50px"
    ]