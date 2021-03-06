#' Display a Fancy File Tree
#'
#' Outputs a formatted file tree structure in the console
#' @param path character string specifying the file path to start the file tree. Defaults to NULL which displays the current working directoy.
#' @param files Logical. TRUE shows individual files, FALSE will only show folders. Default is TRUE.
#' @param unicode Show unicode emojis. Not sure how well this works across systems. Defaults to TRUE
#'
#' @return None
#' @export
ftree <- function(path = NULL,
                  files = TRUE,
                  unicode = TRUE) {


  if(.Platform$OS.type == "windows") {
    x <- ftree_win(path = path,
                   files = files,
                   unicode = unicode)
  }

  if(.Platform$OS.type == "unix") {
    x <- ftree_unix(path = path,
                   files = files,
                   unicode = unicode)
  }
  cat(x, sep = "\n")


}


## windows logic
ftree_win <- function(path = path,
                      files = files,
                      unicode = unicode) {

  folder <- "\U0001f4c2"
  fe <- "  \U0001f9fe"

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
    x <- gsub("---", folder, x)

    ## files
    x <- gsub("(\\s\\s\\s\\b)+", fe, x, perl = TRUE)

  }

  return(x)

}

## unix logic
ftree_unix <- function(path = path,
                       files = files,
                       unicode = unicode) {
  ## print files logic
  if(isTRUE(files)) {
    fargs <- c("-a", "-F") ## -a prints all files
  } else {
    fargs <- c("-d", "-F") ## -d prints directories only
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
    folder <- "\U0001f4c2"
    ## select white space before words that end in /
    x <- gsub(pattern = "\\s(?=\\w.*(\\/\\n))",
              replacement = folder,
              x = x,
              ignore.case = TRUE,
              perl = TRUE)

    ## files
    fe <- "\U0001f9fe"

    x <- gsub(pattern = "(?<=─)(([ ])(?!(\\w.*(?=\\/))|\\/|(?<=\\/)\\w.*)\\b)",
              replacement = fe,
              x = x,
              perl = TRUE)
    x

  }

  return(x)
}
