module Papers exposing (view)

import Html exposing (Html, div, h1, h2, p, text)
import Html.Attributes exposing (class)


type alias Paper =
    { title : String
    , author : String
    , review : String
    }


view : Html msg
view =
    div [ class "papers-container" ]
        [ h1 [] [ text "Papers" ]
        , div [] (List.map paperReview papers)
        ]


paperReview : Paper -> Html msg
paperReview paper =
    div [ class "paper" ]
        [ h2 [] [ text paper.title ]
        , p [] [ text ("by " ++ paper.author) ]
        , p [] [ text paper.review ]
        ]


papers : List Paper
papers =
    [ { title = "Paper 1"
      , author = "Author 1"
      , review = "Review 1"
      }
    , { title = "Title 2"
      , author = "Author 2"
      , review = "Review 2"
      }
    ]
