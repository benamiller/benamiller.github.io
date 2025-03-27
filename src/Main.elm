module Main exposing (main)

import Books
import Browser
import Browser.Navigation as Nav
import Html exposing (Html, a, div, h1, text)
import Html.Attributes exposing (class, id)
import Html.Events exposing (onClick)
import Movies
import Papers
import Url exposing (Url)



-- MODEL


type alias Model =
    { key : Nav.Key, currentPage : Page }


type Page
    = Home
    | Blog
    | Projects
    | Books
    | Movies
    | Papers


init : () -> Url -> Nav.Key -> ( Model, Cmd Msg )
init _ url key =
    ( { key = key, currentPage = urlToPage url }, Cmd.none )



-- UPDATE


type Msg
    = Navigate String
    | UrlChanged Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Navigate path ->
            ( model, Nav.pushUrl model.key path )

        UrlChanged url ->
            ( { model | currentPage = urlToPage url }, Cmd.none )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = "Ben"
    , body =
        [ div [ class "application" ]
            [ navigation
            , pageContent model.currentPage
            ]
        ]
    }


navigation : Html Msg
navigation =
    div [ class "navigation" ]
        [ a [ onClick (Navigate "/"), class "nav-item", id "home-link" ] [ text "Home" ]
        , text " | "
        , a [ onClick (Navigate "/blog"), class "nav-item" ] [ text "Blog" ]
        , text " | "
        , a [ onClick (Navigate "/projects"), class "nav-item" ] [ text "Projects" ]
        , text " | "
        , a [ onClick (Navigate "/books"), class "nav-item" ] [ text "Books" ]
        , text " | "
        , a [ onClick (Navigate "/movies"), class "nav-item" ] [ text "Movies" ]
        , text " | "
        , a [ onClick (Navigate "/papers"), class "nav-item" ] [ text "Papers" ]
        ]


pageContent : Page -> Html Msg
pageContent page =
    case page of
        Home ->
            div [] [ h1 [] [ text "Home" ], text "Welcome test 2" ]

        Blog ->
            div [] [ h1 [] [ text "Blog" ], text "This is blog." ]

        Projects ->
            div [] [ h1 [] [ text "Projects" ], text "These are projects" ]

        Books ->
            Books.view

        Movies ->
            Movies.view

        Papers ->
            Papers.view



-- ROUTING


urlToPage : Url -> Page
urlToPage url =
    case url.path of
        "/blog" ->
            Blog

        "/projects" ->
            Projects

        "/books" ->
            Books

        "/movies" ->
            Movies

        "/papers" ->
            Papers

        _ ->
            Home



-- PROGRAM


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        , onUrlRequest =
            \urlRequest ->
                case urlRequest of
                    Browser.Internal url ->
                        Navigate (Url.toString url)

                    Browser.External _ ->
                        Navigate "/"
        , onUrlChange = UrlChanged
        }
