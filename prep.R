library(fs)

file_copy(path = "graphics/electoral_votes_graphic.rds",
          new_path = "shiny_app/electoral_votes_graphic.rds")
file_copy(path = "graphics/directly_proportional_graphic.rds",
          new_path = "shiny_app/directly_proportional_graphic.rds")
file_copy(path = "graphics/popular_graphic.rds",
          new_path = "shiny_app/popular_graphic.rds")
file_copy(path = "graphics/modern_pop_totals_by_party.rds",
          new_path = "shiny_app/modern_pop_totals_by_party.rds")
file_copy(path = "graphics/popular_vote2.png",
          new_path = "shiny_app/popular_vote2.png")