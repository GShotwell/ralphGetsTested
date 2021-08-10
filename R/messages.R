n_kinds_message <- function(v) {
  sapply(v, function(x) {
    if (x < 2) {
      msg1 <- "is"
      msg2 <- "kind"
      msg3 <- "person"
    } else {
      msg1 <- "are"
      msg2 <- "kinds"
      msg3 <- "people"
    }
    paste("There", msg1, x, msg2, "of", msg3, "in the world.")}
  )
}

compose_message <- function(x) {
  if (x == 1) {
    msg1 <- "is"
    msg2 <- "kind"
    msg3 <- "person"
  } else {
    msg1 <- "are"
    msg2 <- "kinds"
    msg3 <- "people"
  }
  
  message <- glue::glue("There {msg1} {x} {msg2} of {msg3} in the world.")
  
  return(as.character(message))
}