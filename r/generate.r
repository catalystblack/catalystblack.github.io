raw <- read.csv("./csv/data.csv")

# hydra
data <- raw[raw$game == "Hydra", ]
statistics <- list("cr", "pk", "dtb", "kills", "assits", "dtp")
for(inner in 1:6) {
    data <- data[order(-data[, 3 + inner], data$hash), ]
    write.csv(head(data[!duplicated(data$name), c(1, 2, 3 + inner)], 100),
        paste("./csv/hydra/", statistics[inner], ".csv", sep = ""),
        quote = FALSE, row.names = FALSE)
}

# colosseum
data <- raw[raw$game == "Colosseum", ]
statistics <- list("dd", "kills")
for(inner in 1:2) {
    data <- data[order(-data[, 3 + inner], data$hash), ]
    write.csv(head(data[!duplicated(data$name), c(1, 2, 3 + inner)], 100),
        paste("./csv/colosseum/", statistics[inner], ".csv", sep = ""),
        quote = FALSE, row.names = FALSE)
}

# other gamemodes
games <- list("Slayer", "Eventide",
    "Capture the Flag", "Flag Hunters", "Core Rush")
gamemodes <- list("slayer", "eventide", "ctf", "fh", "cr")
statistics <- list("score", "kills", "assists", "ks", "spm")
for(outer in 1:5) {
    data <- raw[raw$game == games[outer], ]
    for(inner in 1:2) {
        data <- data[order(-data[, 3 + inner], data$hash), ]
        write.csv(head(data[!duplicated(data$name), c(1, 2, 3 + inner)], 100),
            paste("./csv/", gamemodes[outer], "/",
                statistics[inner], ".csv", sep = ""),
            quote = FALSE, row.names = FALSE)
    }
}