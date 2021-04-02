module Components.Card.Card exposing (..)

import Html exposing (div, p, text, h4)
import Components.Card.CardStyle exposing (..)
import Html exposing (option)

-- VIEW
type Size = Small | Large

-- functions
cardStyleSwitch : Size -> List (Html.Attribute msg)
cardStyleSwitch option =
    case option of
        Large -> cardStyleBig
        Small -> cardStyleSmall
cardLeftStyleSwitch : Size -> List (Html.Attribute msg)
cardLeftStyleSwitch option =
    case option of
        Large -> cardLeftStyleBig
        Small -> cardLeftStyleSmall

cardRightStyleSwitch : Size -> List (Html.Attribute msg)
cardRightStyleSwitch option =
    case option of
       Large -> cardRightStyleBig
       Small -> cardRightStyleSmall

-- template
cardView : Size -> Html.Html msg
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