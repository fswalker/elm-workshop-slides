module Main exposing (main)

import Html exposing (Html, text)
import Date exposing (Date, now)
import Task


type alias Model =
    Date


type Msg
    = UpdateDate Date


main : Program Never Model Msg
main =
    Html.program
        { init = ( Date.fromTime 0, Task.perform UpdateDate Date.now )
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }


update : Msg -> Model -> ( Model, Cmd Msg )
update (UpdateDate d) model =
    ( d, Cmd.none )


view : Model -> Html msg
view model =
    text <| toString model
