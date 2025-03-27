module Books exposing (view)

import Html exposing (Html, div, h1, h2, p, text)
import Html.Attributes exposing (class)


type alias Book =
    { title : String
    , author : String
    , review : String
    , published : String
    , read : String
    }


view : Html msg
view =
    div [ class "books-container" ]
        [ h1 [] [ text "Books" ]
        , div [] (List.map bookReview books)
        ]


bookReview : Book -> Html msg
bookReview book =
    div [ class "book" ]
        [ h2 [] [ text book.title ]
        , p [] [ text ("by " ++ book.author) ]
        , p [] [ text ("published in " ++ book.published ++ ", read in " ++ book.read) ]
        , p [] [ text book.review ]
        ]


books : List Book
books =
    [ { title = "The Master Algorithm"
      , author = "Pedro Domingos"
      , review = "Review inbound for The Master Algorithm"
      , published = "2014"
      , read = "2024"
      }
    , { title = "The Worlds I See"
      , author = "Fei-Fei Li"
      , review = "Review for The Worlds I See"
      , published = "2023"
      , read = "2024"
      }
    , { title = "Superintelligence: Paths, Dangers, Strategies"
      , author = "Nick Bostrom"
      , review = "Review for Superintelligence"
      , published = "2016"
      , read = "2025"
      }
    , { title = "Sapiens: A Brief History of Humankind"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2011"
      , read = "2024"
      }
    , { title = "The Phoenix Project"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2011"
      , read = "2024"
      }
    , { title = "Androids: The Team that Build the Android Operating System"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2011"
      , read = "2024"
      }
    , { title = "The Pragmatic Programmer"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "1999"
      , read = "2024"
      }
    , { title = "Apollo"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "199"
      , read = "2024"
      }
    , { title = "Contact"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "199"
      , read = "2024"
      }
    , { title = "The Singularity is Near"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "199"
      , read = "2024"
      }
    , { title = "The Singularity is Nearer"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "199"
      , read = "2024"
      }
    , { title = "How to Create a Mind: The Secret of Human Thought Revealed"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "199"
      , read = "2024"
      }
    , { title = "Atomic Habits"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "199"
      , read = "2024"
      }
    , { title = "The Subtle Art of Not Giving a F*ck"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "199"
      , read = "2016"
      }
    , { title = "12 Rules for Life"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2018"
      , read = "2024"
      }
    , { title = "Lying"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Free Will"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2012"
      , read = "2024"
      }
    , { title = "The God Delusion"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2006"
      , read = "2024"
      }
    , { title = "The Feeling of Life Itself"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Lord of Souls: An Elder Scrolls Novel"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Thinking, Fast and Slow"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "It Ends With Us"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "It Starts With Us"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Hobbit"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The 7 Habits of Highly Effective People"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Countdown to Zero Day"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Critique of Pur Reason"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Philosophy Before Socrates"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "1984"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Brave New World"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Bitter Lesson"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Deep Learning"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Fire & Blood"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Beyond Good and Evil"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Crime and Punishment"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Sandworm"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Foundation Series"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Harry Potter Series"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Emperor's New Mind"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Ultimate Hitchhiker's Guide to the Galaxy"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Origin of Consciousness in the Breakdown of the Bicameral Mind"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Dune Series"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "I am Legend"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Martian"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "I, Robot"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Culture Series"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Pale Blue Dot"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Look to Windward"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "I am Number Four"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "What is ChatGPT Doing... and Why Does it Work?"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "When we Cease to Understand the World"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Hunger Games"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Sunwing"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Ender's Game"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Ranger's Apprentice Series"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Life 3.0"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Homo Deus"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Outlive: The Science and Art of Longevity"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "On the Origin of Time: Stephen Hawking's Final Theory"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Black Holes: The Key to Understanding the Universe"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Laws of Nature"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Rise and Fall of the Dinosaurs: A New History of a Lost World"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Art of Seduction: An Indispensible Primer on the Ultimate Form of Power"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Failure is Not an Option: Mission Control from Mercury to Apollo 13 and Beyond"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Making of the Atomic Bomb: 25th Anniversary Edition"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The End of Faith"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Alignment Problem: Machine Learning and Human Values"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Emotional Brain: The Mysterious Underpinnings of Emotional Life"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Animal Farm"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Road to Wigan Pier"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Lord of the Flies"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Kite Runner"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "How to Win Friends and Influence People"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "We Are All Perfectly Fine: A Memoir of Love, Medicine and Healing"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Elon Musk"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Steve Jobs"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Moral Landscape"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Beyond Order: 12 More Rules for Life"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Psychology of Money: Timeless Lessons on Wealth, Greed, and Happiness"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Maps of Meaning: The Architecture of Belief"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Pride and Prejudice"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Ready Player One"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Vital Question"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Life Ascending: The Ten Great Inventions of Evolution"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "21 Lessons for the 21st Century"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "The Gulag Archipelago"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Do Androids Dream of Electric Sheep"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Tuesdays with Morrie: An Old Man, a Young Man, and Life's Greatest Lesson, 25th Anniversary Edition"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    , { title = "Vision: A Computational Investigation into the Human Representation and Processing of Visual Information"
      , author = "Yuval Noah Harari"
      , review = "Review for Sapiens"
      , published = "2013"
      , read = "2024"
      }
    ]
