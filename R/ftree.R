#' Display a Fancy File Tree
#'
#' Outputs a formatted file tree structure in the console
#' @param path character string specifying the file path to start the file tree. Defaults to NULL which displays the current working directoy.
#' @param files Logical. TRUE shows individual files, FALSE will only show folders. Default is TRUE.
#' @param unicode Show unicode emojis. Not sure how well this works across systems. Defaults to TRUE
#'
#' @import emo
#' @return None
#' @export
ftree <- function(path = NULL,
                  files = TRUE,
                  unicode = TRUE) {

  # this works in windows, but don't know where else

  ## print files logic
  if(isTRUE(files)) {
    fargs <- c("/f", "/a") ## /f files
  } else {
    fargs <- c("/a") ## /a ascii output (most compatible with windows)
  }

  ## argument logic and run tree system command
  if (is.null(path)) {
    x <- system2(command = "tree",
                 args = fargs,
                 stdout = TRUE)
  } else {
    fargs <- append(path, fargs)
    print(fargs)
    x <- system2(command = "tree",
                 args = fargs,
                 stdout = TRUE)
  }

  if(isTRUE(unicode)) {
    # some regex to sub unicode emojis

    ## folders
    folder <- paste0("---", emo::ji("folder"))
    #x <- gsub("---", "---\U0001f4c2", x)
    x <- gsub("---", folder, x)

    ## files
    x <- gsub("(\\s\\s\\s\\b)+", "  \U0001f4dc", x, perl = TRUE)

  }

  cat(x, sep = "\n")


}
