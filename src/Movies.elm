module Movies exposing (view)

import Html exposing (Html, div, h1, h2, p, text)
import Html.Attributes exposing (class)


type alias Movie =
    { title : String
    , author : String
    , review : String
    }


view : Html msg
view =
    div [ class "movies-container" ]
        [ h1 [] [ text "Movies" ]
        , div [] (List.map movieReview movies)
        ]


movieReview : Movie -> Html msg
movieReview movie =
    div [ class "movie" ]
        [ h2 [] [ text movie.title ]
        , p [] [ text ("by " ++ movie.author) ]
        , p [] [ text movie.review ]
        ]


movies : List Movie
movies =
    [ { title = "Title 1"
      , author = "Author 1"
      , review = "Review 1"
      }
    , { title = "Title 2"
      , author = "Author 2"
      , review = "Review 2"
      }
    ]
