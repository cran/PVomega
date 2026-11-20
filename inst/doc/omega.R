## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----setup--------------------------------------------------------------------
library(PVomega)

## -----------------------------------------------------------------------------
res <- omega_from_counts(
  n111 = 10, n11. = 23, n1.1 = 10, n.11 = 19,
  n1.. = 39, n.1. = 1489, n..1 = 39, n... = 5503
)
res[, .(f00, f10, f01, f11, g11, E111, omega, omega_lower, omega_upper)]

## -----------------------------------------------------------------------------
counts <- data.frame(
  drug1 = c("itraconazole", "drug A"),
  drug2 = c("oral contraceptives", "drug B"),
  event = c("delayed bleeding", "event X"),
  n111 = c(10, 45), `n11.` = c(23, 250), `n1.1` = c(10, 120),
  `n.11` = c(19, 85), `n1..` = c(39, 580), `n.1.` = c(1489, 420),
  `n..1` = c(39, 340), `n...` = c(5503, 50000),
  check.names = FALSE
)

## ----eval = FALSE-------------------------------------------------------------
# res <- omega_from_table(counts)
# res[, .(drug1, drug2, event, f11, g11, omega, omega_lower, omega_upper)]

