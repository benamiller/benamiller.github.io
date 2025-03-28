module Projects exposing (view)

import Html exposing (Html, div, h1, h2, p, text)
import Html.Attributes exposing (class)


type alias Project =
    { title : String
    , author : String
    , review : String
    }


view : Html msg
view =
    div [ class "projects-container" ]
        [ h1 [] [ text "Projects" ]
        , div [] (List.map projectReview projects)
        ]


projectReview : Project -> Html msg
projectReview project =
    div [ class "project" ]
        [ h2 [] [ text project.title ]
        , p [] [ text ("by " ++ project.author) ]
        , p [] [ text project.review ]
        ]


projects : List Project
projects =
    [ { title = "Title 1"
      , author = "Author 1"
      , review = "Review 1"
      }
    , { title = "Title 2"
      , author = "Author 2"
      , review = "Review 2"
      }
    ]
