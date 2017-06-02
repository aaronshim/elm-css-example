module MyCss exposing (css, namespace, CssClasses(..), CssIds(..))

import Css exposing (..)
import Css.Elements exposing (body, li, button)
import Css.Namespace
import Css.Colors


-- namespace string (to be exported)


namespace : String
namespace =
    "mainPage"



-- classes and id selectors (to be exported)


type CssClasses
    = ButtonDiv


type CssIds
    = Page



-- main stylesheet definition (to be exported for compilation in Stylesheets.elm)


css : Stylesheet
css =
    (stylesheet << Css.Namespace.namespace namespace)
        [ body
            [ overflowX auto
            , minWidth (px 1280)
            ]
        , pageRules
        , buttonDivRules
        ]



-- helpers to make the main CSS definition less crowded


primaryAccentColor : Color
primaryAccentColor =
    hex "ccffaa"


pageRules : Css.Snippet
pageRules =
    id Page
        [ backgroundColor (rgb 200 128 64)
        , color (hex "CCFFFF")
        , width (pct 100)
        , height (pct 100)
        , boxSizing borderBox
        , padding (px 8)
        , margin zero
        ]


buttonDivRules : Css.Snippet
buttonDivRules =
    class ButtonDiv
        [ margin zero
        , padding zero
        , children
            [ li
                [ (display inlineBlock) |> important
                , color primaryAccentColor
                ]
            , button
                [ backgroundColor Css.Colors.red ]
            ]
        ]
