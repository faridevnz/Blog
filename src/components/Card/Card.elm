module Components.Card.Card exposing (..)

import Html exposing (div, p, text, h4)
import Components.Card.CardStyle exposing (..)
import Html exposing (option)

-- VIEW
type alias CardSize = String

-- functions
cardStyleSwitch : CardSize -> List (Html.Attribute msg)
cardStyleSwitch option =
    case option of
        "big" -> cardStyleBig
        _ -> cardStyleSmall
cardLeftStyleSwitch : CardSize -> List (Html.Attribute msg)
cardLeftStyleSwitch option =
    case option of
       "big" -> cardLeftStyleBig
       _ -> cardLeftStyleSmall

cardRightStyleSwitch : CardSize -> List (Html.Attribute msg)
cardRightStyleSwitch option =
    case option of
       "big" -> cardRightStyleBig
       _ -> cardRightStyleSmall

-- template
cardView : CardSize -> Html.Html msg
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