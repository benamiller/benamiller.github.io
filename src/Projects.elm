module Projects exposing (view)

import Html exposing (Html, div, h1, h2, p, text)
import Html.Attributes exposing (class)


type alias Project =
    { title : String
    , tech : List String
    , description : String
    , link : String
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
        ]


projects : List Project
projects =
    [ { title = "Essence"
      , tech = [ "English", "Test" ]
      , description = "Essence description"
      , link = "https://benmiller.ai"
      }
    , { title = "mlzero"
      , tech = [ "Next.js", "React", "PostgreSQL", "Prisma" ]
      , description = "mlzero description"
      , link = "https://benmiller.ai"
      }
    , { title = "mlc"
      , tech = [ "English", "Test" ]
      , description = "mlc description"
      , link = "https://benmiller.ai"
      }
    , { title = "Assassins"
      , tech = [ "English", "Test" ]
      , description = "Assassins description"
      , link = "https://benmiller.ai"
      }
    , { title = "Immersive Gaming"
      , tech = [ "English", "Test" ]
      , description = "Immersive Gaming description"
      , link = "https://benmiller.ai"
      }
    , { title = "Portfolio"
      , tech = [ "English", "Test" ]
      , description = "Elm portfolio description"
      , link = "https://benmiller.ai"
      }
    ]
