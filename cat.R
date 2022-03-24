library(magick)

confused_cat <- image_read("https://i.pinimg.com/originals/07/9c/3e/079c3ea0dce59cc171629800294b0f3d.jpg?w=144") %>%
  image_scale(500)


stats_text <- image_blank(width = 500, 
                          height = 500, 
                          color = "#000000") %>%
  image_annotate(text = "Statistics",
                 color = "#FFFFFF",
                 size = 80,
                 font = "Impact",
                 gravity = "center")


happy_cat <- image_read("https://static.boredpanda.com/blog/wp-content/uploads/2015/09/Happy-Cats__880.jpg") %>%
  image_scale(500)


ml_text <- image_blank(width = 500, 
                       height = 500, 
                       color = "#000000") %>%
  image_annotate(text = "Machine\nlearning",
                 color = "#FFFFFF",
                 size = 80,
                 font = "Impact",
                 gravity = "center")


cat_vector <- c(confused_cat, stats_text)
top_row <- image_append(cat_vector)


bottom_row <- image_append(c(happy_cat, ml_text))




c(top_row, bottom_row) %>%
  image_append(stack = TRUE) %>%
  image_scale(800)


image_write(confused_cat, "my_meme.png")
image_write(happy_cat, "my_meme.png")



              
              
              
              
              
              
              
              
              
              
              
              
              
              
              