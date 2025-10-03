# function 1
multiply_three_numbers <- function(a, b, c) {
  #' multiply 3 numbers
  #' 
  #' @param a First number
  #' @param b Second number  
  #' @param c Third number
  #' @return The multiplication of a, b, and c
  #' @author 
  #' @date
  
  # this is the multiplication
  out <- a * b * c
  
  return(out)
}

# function 2
replace_spaces <- function(s) {
  #' Replace all spaces in a string with underscores
  #' 
  #' @param s Input string
  #' @return String with spaces replaced by "_"
  
  result <- gsub(" ", "_", s)  # replace spaces with underscores
  return(result)
}

# function 3
rename_chromosomes <- function(chr) {
  #' Rename chromosome numbers with "chr" prefix
  #'
  #' @param chr Input chromosome name or number (character or numeric)
  #' @return Chromosome name prefixed with "chr"
  
  # Convert to character (in case it's numeric)
  chr <- as.character(chr)
  
  # Prepend "chr" if not already present
  chr_renamed <- ifelse(grepl("^chr", chr), chr, paste0("chr", chr))
  
  return(chr_renamed)
}

