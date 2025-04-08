module Main exposing (main)

import Books
import Browser
import Browser.Navigation as Nav
import Html exposing (Html, a, button, div, h1, span, text)
import Html.Attributes exposing (class, classList)
import Html.Events exposing (onClick)
import Movies
import Papers
import PinnedProjects
import Url exposing (Url)



-- MODEL


type alias Model =
    { key : Nav.Key
    , currentPage : Page
    , isMenuOpen : Bool
    }


type Page
    = Home
    | Blog
    | Projects
    | Books
    | Movies
    | Papers
    | Nia


init : () -> Url -> Nav.Key -> ( Model, Cmd Msg )
init _ url key =
    ( { key = key, currentPage = urlToPage url, isMenuOpen = False }, Cmd.none )



-- UPDATE


type Msg
    = Navigate String
    | UrlChanged Url
    | ToggleMenu
    | NavigateAndClose String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Navigate path ->
            ( model, Nav.pushUrl model.key path )

        UrlChanged url ->
            ( { model | currentPage = urlToPage url }, Cmd.none )

        ToggleMenu ->
            ( { model | isMenuOpen = not model.isMenuOpen }, Cmd.none )

        NavigateAndClose path ->
            ( { model | isMenuOpen = False }, Nav.pushUrl model.key path )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = "Ben"
    , body =
        [ div [ class "application" ]
            [ navigation model
            , pageContent model.currentPage
            ]
        ]
    }


navigation : Model -> Html Msg
navigation model =
    div [ class "navigation" ]
        [ button [ onClick ToggleMenu, class "nav-toggle" ]
            [ text
                (if model.isMenuOpen then
                    "✕"

                 else
                    "☰"
                )
            ]
        , div [ classList [ ( "nav-menu", True ), ( "open", model.isMenuOpen ) ] ]
            [ a [ onClick (NavigateAndClose "/"), class "nav-item" ] [ text "Home" ]
            , span [ class "separator" ] [ text " | " ]
            , a [ onClick (NavigateAndClose "/blog"), class "nav-item" ] [ text "Blog" ]
            , span [ class "separator" ] [ text " | " ]
            , a [ onClick (NavigateAndClose "/projects"), class "nav-item" ] [ text "Projects" ]
            , span [ class "separator" ] [ text " | " ]
            , a [ onClick (NavigateAndClose "/books"), class "nav-item" ] [ text "Books" ]
            , span [ class "separator" ] [ text " | " ]
            , a [ onClick (NavigateAndClose "/movies"), class "nav-item" ] [ text "Movies" ]
            , span [ class "separator" ] [ text " | " ]
            , a [ onClick (NavigateAndClose "/papers"), class "nav-item" ] [ text "Papers" ]
            , span [ class "separator" ] [ text " | " ]
            , a [ onClick (NavigateAndClose "/nia"), class "nav-item" ] [ text "Nia" ]
            ]
        ]


pageContent : Page -> Html Msg
pageContent page =
    case page of
        Home ->
            div []
                [ h1 [] [ text "Home" ]
                , text "Welcome test 2"
                , PinnedProjects.view
                ]

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

        Nia ->
            div [] [ h1 [] [ text "Nia" ], text "Nia" ]



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

        "/nia" ->
            Nia

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
