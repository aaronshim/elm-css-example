module Main exposing (..)

import Html exposing (Html)
import Html.Attributes
import Html.CssHelpers
import MyCss


type alias Model =
    Int


model =
    0


type Msg
    = NoOp
    | Message2
    | Message3


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        _ ->
            ( model, Cmd.none )



-- INTERSTING VIEW STUFF HERE


{ id, class, classList } =
    Html.CssHelpers.withNamespace MyCss.namespace


view : Model -> Html Msg
view model =
    Html.div [ id MyCss.Page ]
        [ Html.text "Hello, world"
        , Html.div [ class [ MyCss.ButtonDiv ] ]
            [ Html.button [] [ Html.text "Click me!" ]
            ]
        ]



-- INTERESTING VIEW STUFF END


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main =
    Html.program
        { init = ( model, Cmd.none )
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
