library(magick)

complacent_dog <- image_read("https://www.meme-arsenal.com/memes/42c450a53095738d9967046b1965b149.jpg") %>%
  image_scale(500)

escape_dog <- image_read("https://cdn.pixabay.com/photo/2016/05/15/10/10/chihuahua-1393442_960_720.jpg") %>%
  image_scale(500)

messy_dog <- image_read("https://www.thegoodypet.com/wp-content/uploads/2020/11/Hairless-Chihuahua.jpg") %>%
  image_scale(500)

confused_dog <- image_read("https://cdn.pixabay.com/photo/2016/04/27/14/53/chihuahua-1356758_960_720.jpg") %>%
  image_scale(500)

first_text <- image_blank(width = 500, 
                          height = 100, 
                          color = "#FFFFFF") %>%
  image_annotate(text = "WHEN I DIDN'T REVIEW \n BUT I GOT AN A IN THE TEST.",
                 color = "#000000",
                 size = 40,
                 font = "Impact",
                 gravity = "center")

second_text <- image_blank(width = 500, 
                         height = 100, 
                         color = "#FFFFFF") %>%
  image_annotate(text = "WHEN I WAS ASKED ABOUT MY GRADS BY MY PARAENTS\nAND I WANTED TO PRETEND NOT TO HEAR.",
                 color = "#000000",
                 size = 20,
                 font = "Impact",
                 gravity = "center")

third_text <- image_blank(width = 500, 
                       height = 100, 
                       color = "#FFFFFF") %>%
  image_annotate(text = "WHEN I FINISH MY HOMEWORK THE DAY BEFORE THE DEADLINE\nI THINK MY HAIR",
                 color = "#000000",
                 size = 20,
                 font = "Impact",
                 gravity = "center")

forth_text <- image_blank(width = 500, 
                          height = 100, 
                          color = "#FFFFFF") %>%
  image_annotate(text = "WHEN I JUST FINISHED MY KNOWLEDGE\nI FOUND THAT I FORGOT ALL ABOUT IT IN MY HOMEWORK.",
                 color = "#000000",
                 size = 20,
                 font = "Impact",
                 gravity = "center")

first_row <- c(first_text, second_text) %>%
  image_append()

second_row <- c(complacent_dog, escape_dog) %>%
  image_append()

third_row <- c(third_text, forth_text) %>%
  image_append()

forth_row <- c(messy_dog, confused_dog) %>%
  image_append()



c(first_row, second_row, third_row, forth_row) %>%
  image_append(stack = TRUE)

(image_write(complacent_dog, "complacent_dog.png"))
(image_write(escape_dog, "Descape_dog.png"))
(image_write(messy_dog, "messy_dog.png"))
(image_write(confused_dog, "confused_dog.png"))
(image_write(c(first_row, second_row, third_row,forth_row) %>%
               image_append(stack = TRUE), "dogs.png"))
