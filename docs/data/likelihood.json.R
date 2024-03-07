#! /usr/local/bin/Rscript
suppressMessages({

    ## Generate probabilities
    library(tidyverse)
    library(jsonlite)
    a_vals <- seq(0, 10, by = 0.5)
    b_vals <- seq(0, 1, by = .05)
    df <- expand.grid(
        a = a_vals,
        b = b_vals,
        x = seq(0, 10, by = .25),
        y = seq(0, 10, by = .25)
    ) %>%
        mutate(ll = dnorm(y, a + (b * x), log = FALSE)) %>%
        arrange(y, x)

    ## Generate points
    data_df <- data.frame(
        true_a = round(runif(10, 2, 5), 2),
        true_b = round(runif(10, 0, 1), 2),
        parset = 1:10
    ) %>%
        rowwise() %>%
            mutate(x = list(runif(100, 0, 10)), y = list(rnorm(100, true_a + (true_b * x)))) %>%
            unnest(cols = c(x, y)) %>%
            crossing(a=a_vals, b=b_vals) %>%
            mutate(ll = -dnorm(y, a + b*x, log=TRUE))
})

out_d <- list("likelihood" = df, "data" = data_df)

toJSON(out_d)