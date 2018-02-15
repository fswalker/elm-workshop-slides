module Main exposing (main)

import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)
import Date exposing (Date, now)
import Task


type alias Model =
    Date


type Msg
    = GetDate
    | UpdateDate Date


main : Program Never Model Msg
main =
    let
        task =
            Task.succeed ()
    in
        Html.program
            { init = ( Date.fromTime 0, Task.perform (\_ -> GetDate) task )
            , update = update
            , view = view
            , subscriptions = \_ -> Sub.none
            }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateDate d ->
            ( d, Cmd.none )

        GetDate ->
            ( model, Task.perform UpdateDate Date.now )


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick GetDate ] [ text "Get Date" ]
        , text <| toString model
        ]
