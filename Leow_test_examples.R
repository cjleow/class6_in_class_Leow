library(testthat)

# Load my functions from R file
source("Leow_test_functions_.R")

# Test function 1: multiply_three_numbers
test_that("multiply three numbers", {
  expect_equal(multiply_three_numbers(1, 2, 3), 6)
  expect_equal(multiply_three_numbers(-1, 5, -7), 35)
  expect_equal(multiply_three_numbers(0, 8, 6), 0)
})


# Test function 2: replace_spaces
test_that("replace_spaces replaces spaces with underscores", {
  expect_equal(replace_spaces("this is a test"), "this_is_a_test")
  expect_equal(replace_spaces("nospacesinbetween"), "nospacesinbetween")
  expect_equal(replace_spaces(" multiple   spaces "), "_multiple___spaces_")
})


# Test function 3: rename_chromosomes

test_that("rename_chromosomes prepends 'chr' correctly", {
  expect_equal(rename_chromosomes(1), "chr1")
  expect_equal(rename_chromosomes(5), "chr5")
  expect_equal(rename_chromosomes("3"), "chr3")
  expect_equal(rename_chromosomes("X"), "chrX")
  expect_equal(rename_chromosomes("chr2"), "chr2")
  expect_equal(rename_chromosomes("chrY"), "chrY")
  expect_equal(rename_chromosomes(c("1", "2", "X", "chrY")), c("chr1", "chr2", "chrX", "chrY"))
})
