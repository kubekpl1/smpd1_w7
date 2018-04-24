library("MCDA")

rm(list = ls())
# ----------------------------------------
# example 5
epsilon <- 0.01

additiveValueFunctionElicitation


PhonesData <- rbind(
  c(10,10.5,2.3,256,4,4399),
  c(10,12.9,2.3,256,4,5199),
  c(10,12.9,2.3,64,4,4699),
  c(10,10.5,2.3,512,4,5399),
  c(10,10.5,2.3,64,4,3649),
  c(10,12.9,2.3,64,4,4399),
  c(10,12.9,2.3,512,4,6199),
  c(9,9.7,2.26,256,2,4549),
  c(10,9.7,2.26,128,2,2999),
  c(10,9.7,1.8,128,2,2699)
)
rownames(PhonesData) <- c(
  "Apple iPad Pro 10,5cal Wi-Fi + Cellular 256GB (rozowe zloto) ",
  "Apple iPad Pro 12,9cal 2gen Wi-Fi + Cellular 256GB (szary) ",
  "Apple iPad Pro 12,9cal 2gen Wi-Fi + Cellular 64GB (srebrny) ",
  "Apple iPad Pro 10,5cal Wi-Fi + Cellular 512GB (rozowe zloto) ",
  "Apple iPad Pro 10,5cal Wi-Fi + Cellular 64GB (srebrny) ",
  "Apple iPad Pro 12,9cal 2gen Wi-Fi + Cellular 64GB (zloty)",
  "Apple iPad Pro 12,9cal 2gen Wi-Fi + Cellular 512GB (zloty) ",
  "Apple iPad Pro 9,7cal Wi-Fi + Cellular 256GB (rozowe zloto) ",
  "Apple iPad Wi-Fi + Cellular 128GB (srebrny)",
  "Apple iPad Wi-Fi + Cellular 128GB (zloty)" )
colnames(PhonesData) <- c(
  "System operacyjny iOS","Wyswietlacz cale","Procesor GHz","Pojemnosc GB","Pamiec_RAM GB","Cena")

# ranks of the alternatives
alternativesRanks <- c(1,2,3,4,5,6,7,8,9,10)
names(alternativesRanks) <- row.names(PhonesData)

# criteria to minimise or maximize
criteriaMinMax <- c("max","max","max","max","max","min")
names(criteriaMinMax) <- colnames(PhonesData)
x <- additiveValueFunctionElicitation(PhonesData,
                                      criteriaMinMax, epsilon,
                                      alternativesRanks = alternativesRanks)

print(x)

