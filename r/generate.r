raw <- read.csv("./csv/data.csv")

# slayer
data <- raw[raw$game == "Slayer", ]
data <- data[order(-data$a, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 4)],
          "./csv/slayer/score.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 5)],
          "./csv/slayer/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 6)],
          "./csv/slayer/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 7)],
          "./csv/slayer/ks.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 8)],
          "./csv/slayer/spm.csv",
          quote = FALSE, row.names = FALSE)

# hydra
data <- raw[raw$game == "Hydra", ]
data <- data[order(-data$a, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 4)],
          "./csv/hydra/cr.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 5)],
          "./csv/hydra/pk.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 6)],
          "./csv/hydra/dtb.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 7)],
          "./csv/hydra/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 8)],
          "./csv/hydra/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$f, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 9)],
          "./csv/hydra/dtp.csv",
          quote = FALSE, row.names = FALSE)

# colosseum
data <- raw[raw$game == "Colosseum", ]
data <- data[order(-data$a, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 4)],
          "./csv/colosseum/dd.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 5)],
          "./csv/colosseum/kills.csv",
          quote = FALSE, row.names = FALSE)

# eventide
data <- raw[raw$game == "Eventide", ]
data <- data[order(-data$a, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 4)],
          "./csv/eventide/score.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 5)],
          "./csv/eventide/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 6)],
          "./csv/eventide/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 7)],
          "./csv/eventide/ks.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 8)],
          "./csv/eventide/spm.csv",
          quote = FALSE, row.names = FALSE)

# capture the flag
data <- raw[raw$game == "Capture the Flag", ]
data <- data[order(-data$a, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 4)],
          "./csv/CTF/score.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 5)],
          "./csv/CTF/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 6)],
          "./csv/CTF/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 7)],
          "./csv/CTF/ks.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 8)],
          "./csv/CTF/spm.csv",
          quote = FALSE, row.names = FALSE)

# flag hunters
data <- raw[raw$game == "Flag Hunters", ]
data <- data[order(-data$a, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 4)],
          "./csv/FH/score.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 5)],
          "./csv/FH/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 6)],
          "./csv/FH/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 7)],
          "./csv/FH/ks.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 8)],
          "./csv/FH/spm.csv",
          quote = FALSE, row.names = FALSE)

# core rush
data <- raw[raw$game == "Core Rush", ]
data <- data[order(-data$a, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 4)],
          "./csv/CR/score.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 5)],
          "./csv/CR/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 6)],
          "./csv/CR/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 7)],
          "./csv/CR/ks.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(data[!duplicated(data$name), c(1, 2, 8)],
          "./csv/CR/spm.csv",
          quote = FALSE, row.names = FALSE)