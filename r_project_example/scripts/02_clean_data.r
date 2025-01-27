library(dplyr)

clean_data <- function(df) {
  df <- df %>% filter(!is.na(tiempo_min))  # Eliminar valores nulos en tiempo_min
  df$zona <- toupper(df$zona)  # Normalizar nombres de zona a mayúsculas
  return(df)
}

# Prueba
df <- import_data("data_raw/entregas_ba.csv")
df_clean <- clean_data(df)
write.csv(df_clean, "data_cleaned/entregas_ba_clean.csv", row.names = FALSE)
