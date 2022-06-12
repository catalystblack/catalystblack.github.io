raw <- read.csv("./csv/data.csv")

# slayer
data <- raw[raw$game == "Slayer", ]
data <- data[order(-data$a, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 4)], 100),
          "./csv/slayer/score.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 5)], 100),
          "./csv/slayer/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 6)], 100),
          "./csv/slayer/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 7)], 100),
          "./csv/slayer/ks.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 8)], 100),
          "./csv/slayer/spm.csv",
          quote = FALSE, row.names = FALSE)

# hydra
data <- raw[raw$game == "Hydra", ]
data <- data[order(-data$a, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 4)], 100),
          "./csv/hydra/cr.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 5)], 100),
          "./csv/hydra/pk.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 6)], 100),
          "./csv/hydra/dtb.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 7)], 100),
          "./csv/hydra/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 8)], 100),
          "./csv/hydra/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$f, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 9)], 100),
          "./csv/hydra/dtp.csv",
          quote = FALSE, row.names = FALSE)

# colosseum
data <- raw[raw$game == "Colosseum", ]
data <- data[order(-data$a, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 4)], 100),
          "./csv/colosseum/dd.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 5)], 100),
          "./csv/colosseum/kills.csv",
          quote = FALSE, row.names = FALSE)

# eventide
data <- raw[raw$game == "Eventide", ]
data <- data[order(-data$a, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 4)], 100),
          "./csv/eventide/score.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 5)], 100),
          "./csv/eventide/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 6)], 100),
          "./csv/eventide/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 7)], 100),
          "./csv/eventide/ks.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 8)], 100),
          "./csv/eventide/spm.csv",
          quote = FALSE, row.names = FALSE)

# capture the flag
data <- raw[raw$game == "Capture the Flag", ]
data <- data[order(-data$a, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 4)], 100),
          "./csv/CTF/score.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 5)], 100),
          "./csv/CTF/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 6)], 100),
          "./csv/CTF/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 7)], 100),
          "./csv/CTF/ks.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 8)], 100),
          "./csv/CTF/spm.csv",
          quote = FALSE, row.names = FALSE)

# flag hunters
data <- raw[raw$game == "Flag Hunters", ]
data <- data[order(-data$a, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 4)], 100),
          "./csv/FH/score.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 5)], 100),
          "./csv/FH/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 6)], 100),
          "./csv/FH/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 7)], 100),
          "./csv/FH/ks.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 8)], 100),
          "./csv/FH/spm.csv",
          quote = FALSE, row.names = FALSE)

# core rush
data <- raw[raw$game == "Core Rush", ]
data <- data[order(-data$a, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 4)], 100),
          "./csv/CR/score.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$b, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 5)], 100),
          "./csv/CR/kills.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$c, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 6)], 100),
          "./csv/CR/assists.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$d, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 7)], 100),
          "./csv/CR/ks.csv",
          quote = FALSE, row.names = FALSE)
data <- data[order(-data$e, data$hash), ]
write.csv(head(data[!duplicated(data$name), c(1, 2, 8)], 100),
          "./csv/CR/spm.csv",
          quote = FALSE, row.names = FALSE)