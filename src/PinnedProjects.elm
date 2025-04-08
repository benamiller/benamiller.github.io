module PinnedProjects exposing (view)

import Html exposing (Html, div, h1, h2, img, p, text)
import Html.Attributes exposing (class, src)


type alias PinnedProject =
    { title : String
    , tech : List String
    , description : String
    , link : String
    , image : String
    }


view : Html msg
view =
    div [ class "pinned-projects-container" ]
        [ h1 [] [ text "Projects" ]
        , div [ class "project-grid" ] (List.map project pinned_projects)
        ]


project : PinnedProject -> Html msg
project pinned_project =
    div [ class "pinned-project" ]
        [ h2 [] [ text pinned_project.title ]
        , img [ src pinned_project.image ] []
        ]


pinned_projects : List PinnedProject
pinned_projects =
    [ { title = "Essence"
      , tech = [ "English", "Test" ]
      , description = "Essence description"
      , link = "https://benmiller.ai"
      , image = "./assets/mlzero.JPG"
      }
    , { title = "mlzero"
      , tech = [ "Next.js", "React", "PostgreSQL", "Prisma" ]
      , description = "mlzero description"
      , link = "https://benmiller.ai"
      , image = "./image"
      }
    , { title = "mlc"
      , tech = [ "English", "Test" ]
      , description = "mlc description"
      , link = "https://benmiller.ai"
      , image = "./image"
      }
    , { title = "Assassins"
      , tech = [ "English", "Test" ]
      , description = "Assassins description"
      , link = "https://benmiller.ai"
      , image = "./image"
      }
    , { title = "Immersive Gaming"
      , tech = [ "English", "Test" ]
      , description = "Immersive Gaming description"
      , link = "https://benmiller.ai"
      , image = "./image"
      }
    , { title = "Portfolio"
      , tech = [ "English", "Test" ]
      , description = "Elm portfolio description"
      , link = "https://benmiller.ai"
      , image = "./image"
      }
    ]
