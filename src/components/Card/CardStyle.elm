module Components.Card.CardStyle exposing (..)
import Html.Attributes exposing (style)
import Style.Colors exposing (colors)


-- CARD BIG
cardStyleBig =
    ([
        style "width" "1000px",
        style "height" "350px",
        style "display" "flex"
    ])
cardLeftStyleBig =
    [
        style "width" "60%",
        style "height" "100%",
        style "background-color" colors.light_grey,
        style "border-radius" "20px"
    ]
cardRightStyleBig =
    [
        style "width" "40%",
        style "height" "100%",
        style "background-color" colors.transparent,
        style "padding" "0px 50px",
        style "box-sizing" "border-box"
    ]

-- CARD SMALL
cardStyleSmall = 
    [
        style "width" "450px",
        style "height" "550px",
        style "display" "flex",
        style "flex-direction" "column",
        style "justify-content" "flex-start",
        style "align-items" "flex-start"
    ]
cardLeftStyleSmall =
    [
        style "width" "100%",
        style "height" "50%",
        style "background-color" colors.light_grey,
        style "border-radius" "20px"
    ]
cardRightStyleSmall =
    [
        style "width" "100%",
        style "height" "40%",
        style "background-color" colors.transparent,
        style "padding" "0px 10px",
        style "box-sizing" "border-box"
    ]







cardTitle =
    [
        style "font-size" "30px",
        style "color" colors.dark_grey
    ]

cardInfo = 
    [
        style "color" colors.text_grey,
        style "font-size" "18px",
        style "font-weight" "100"
    ]

cardDescription =
    [
        style "color" colors.dark_grey,
        style "font-size" "20px",
        style "font-weight" "300"
    ]