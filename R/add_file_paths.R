#' adds a standardized file_paths.R project root directory
#'
#' This function adds a standardized file_paths.R project root directory
#' @keywords file_paths.R
#' @export
#' @examples
#' add_file_paths()

add_file_paths <- function(dir_R = here::here()){

  project_name <- project_name <- basename( rstudioapi::getActiveProject() )

  file_names_template <-
    glue::glue('
project_root <- here::here()
data_root <- here::here("data")
data_raw <- fs::path(data_root, "raw")
analysis_root <- here::here("analysis")
figures_folder <- fs::path(analysis_root, "figures")
tables_folder <- fs::path(analysis_root, "tables")
pdfs_folder <- fs::path(analysis_root, "pdfs")
munge_root <- here::here("munge")
munge_R <- fs::path(munge_root, "R_script")
munge_stata <- fs::path(munge_root, "stata_do")
presentations_root <- here::here("presentations")
r_objects_folder <- here::here("R")
suppor_filest <- here::here("support_files")
')
    writeLines(file_names_template, fs::path(dir_R, "file_paths.R"))
}

