module Main exposing (main)

import Html exposing (Html, text)
import Date exposing (Date, now)


type alias Model =
    Date


main : Program Never Model msg
main =
    Html.program
        { init = ( Date.fromTime 0, Cmd.none )
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }


update : msg -> Model -> ( Model, Cmd msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html msg
view model =
    text <| toString model
