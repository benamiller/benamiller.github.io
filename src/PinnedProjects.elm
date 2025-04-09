module PinnedProjects exposing (view)

import Html exposing (Html, a, div, h1, h2, img, p, text)
import Html.Attributes exposing (class, href, src, target)


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
        , a [ href pinned_project.link, target "_blank", class "project-link" ] [ text "View Project" ]
        ]


pinned_projects : List PinnedProject
pinned_projects =
    [ { title = "mlzero"
      , tech = [ "Next.js", "React", "PostgrSQL" ]
      , description = "mlzero description"
      , link = "https://mlzero.com"
      , image = "./assets/mlzero.png"
      }
    , { title = "ZigTensor"
      , tech = [ "Zig", "CUDA", "Machine Learning" ]
      , description = "mlzero description"
      , link = "https://github.com/zigtensor/zigtensor"
      , image = "./assets/zigtensor.png"
      }
    , { title = "Personal Site"
      , tech = [ "Elm", "Cloudflare", "GitHub Pages" ]
      , description = "Personal site description"
      , link = "https://github.com/benamiller/benamiller.github.io"
      , image = "./assets/elm.png"
      }
    , { title = "Assassins"
      , tech = [ "Android", "Kotlin" ]
      , description = "Assassins description"
      , link = "https://github.com/benamiller/assassins"
      , image = "./assets/assassins.png"
      }
    , { title = "Immersive Gaming"
      , tech = [ "PyTorch", "Vision Transformer", "Python" ]
      , description = "Immersive Gaming description"
      , link = "https://github.com/benamiller/immersive-gaming"
      , image = "./assets/immersive_gaming.png"
      }
    , { title = "MSc"
      , tech = [ "Natural Language Processing", "Deep Learning for Healthcare" ]
      , description = "University of Illinois Urbana-Champaign"
      , link = "https://benmiller.ai"
      , image = "./assets/uiuc.png"
      }
    , { title = "Machine Learning Certificates"
      , tech = [ "Stanford Machine Learning Specialization", "Stanford Deep Learning Specialization" ]
      , description = "Coursera"
      , link = "https://coursera.org/share/f5fa4c831a360de7841411165ebabcc4"
      , image = "./assets/coursera_ml.png"
      }
    ]
