#' Function to save datasets for a specific patient.
#'
#' The function requires the following packages readr, dplyr, haven.
#' The function assumes the sas transport files are stored in a directory
#' called data-raw. This can be downloaded from the WW data folder.
#'
#' @param id The unique patient identifier (USUBJID) for the given patient.
#' Default is patient "01-701-1015".
#' The following data sets will be loaded:
#' * adsl - patient baseline data
#' * ex - patient drug exposure
#' * adcm - patient con medication records
#' * adae - patient adverse event records
#' * adlbc - patient chemistry lab measurements
#' * adlbh - patient hematology lab measurements
#' * adlbhy - patient lab measurements - Hy rules.
#'
#'
#' @return The saved filtered data sets for the given patient.
#' @export
#'
#' @examples
#' ## load data sets for patient "01-701-1146"
#' get_patient_data(id = "01-701-1146")
#'
#'
#'
get_patient_data <- function(id = "01-701-1146") {

  # load data and filter for patient
  #----------------------------------------------------------
  adsl <-
    haven::read_xpt(here::here("data/2022/2022-06-08/data-raw", "adsl.xpt")) %>%
    dplyr::filter(USUBJID == id)

  adcm <-
    haven::read_xpt(here::here("data/2022/2022-06-08/data-raw", "adcm.xpt")) %>%
    dplyr::filter(USUBJID == id)

  ex <-
    haven::read_xpt(here::here("data/2022/2022-06-08/data-raw", "ex.xpt")) %>%
    dplyr::filter(USUBJID == id)

  adlbc <-
    haven::read_xpt(here::here("data/2022/2022-06-08/data-raw", "adlbc.xpt")) %>%
    dplyr::filter(USUBJID == id)

  adlbh <-
    haven::read_xpt(here::here("data/2022/2022-06-08/data-raw", "adlbh.xpt")) %>%
    dplyr::filter(USUBJID == id)

  adlbhy <-
    haven::read_xpt(here::here("data/2022/2022-06-08/data-raw", "adlbhy.xpt")) %>%
    dplyr::filter(USUBJID == id)

  adae <-
    haven::read_xpt(here::here("data/2022/2022-06-08/data-raw", "adae.xpt")) %>%
    dplyr::filter(USUBJID == id)

  ## save patient data as csv files
  #-------------------------------------------
    readr::write_csv(adsl, here::here("data/2022/2022-06-08", paste0("adsl-", id, ".csv")))
    readr::write_csv(ex, here::here("data/2022/2022-06-08", paste0("ex-", id, ".csv")))
    readr::write_csv(adcm, here::here("data/2022/2022-06-08", paste0("adcm-", id, ".csv")))
    readr::write_csv(adlbc, here::here("data/2022/2022-06-08", paste0("adlbc-", id, ".csv")))
    readr::write_csv(adlbh, here::here("data/2022/2022-06-08", paste0("adlbh-", id, ".csv")))
    readr::write_csv(adlbhy, here::here("data/2022/2022-06-08", paste0("adlbhy-", id, ".csv")))
    readr::write_csv(adae, here::here("data/2022/2022-06-08", paste0("adae-", id, ".csv")))

}

