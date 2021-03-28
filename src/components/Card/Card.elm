module Components.Card.Card exposing (..)

import Html exposing (div, p, text, h4)
import Components.Card.CardStyle exposing (
    cardStyleBig,
    cardStyleSmall, 
    cardLeftStyleBig, 
    cardLeftStyleSmall, 
    cardRightStyleBig,
    cardRightStyleSmall,
    cardTitle,
    cardInfo,
    cardDescription)
import Html exposing (option)
import Html.Events exposing (onMouseOver)
import Html.Attributes exposing (style)

-- VIEW

-- functions
cardStyleSwitch option =
    case option of
        "big" -> cardStyleBig
        _ -> cardStyleSmall
cardLeftStyleSwitch option =
    case option of
       "big" -> cardLeftStyleBig
       _ -> cardLeftStyleSmall

cardRightStyleSwitch option =
    case option of
       "big" -> cardRightStyleBig
       _ -> cardRightStyleSmall

-- template
cardView options = 
    div (cardStyleSwitch options)
        [
            div (cardLeftStyleSwitch options) [],
            div (cardRightStyleSwitch options) [
                h4 cardTitle [ text "Nome dell'articolo molto interessante" ],
                p cardInfo [ text "Marzo, 21 2021" ],
                p cardDescription [ text "descrizionde dell’articolo molto molto bello che ti dice cosa ho scritto qui dentro" ]
            ]
        ]