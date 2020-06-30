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
path_root <- here::here()
path_data_root <- here::here("data")
path_data_raw <- fs::path(data_root, "raw")
path_analysis_root <- here::here("analysis")
path_figures_folder <- fs::path(analysis_root, "figures")
path_tables_folder <- fs::path(analysis_root, "tables")
path_pdfs_folder <- fs::path(analysis_root, "pdfs")
path_reports_folder <- fs::path(analysis_root, "reports")
path_script_root <- here::here("script")
path_script_R <- fs::path(munge_root, "R_script")
path_script_stata <- fs::path(munge_root, "stata_do")
path_presentations_root <- here::here("presentations")
path_r_objects <- here::here("R")
path_support_files <- here::here("support_files")
')
    writeLines(file_names_template, fs::path(dir_R, "file_paths.R"))
}

