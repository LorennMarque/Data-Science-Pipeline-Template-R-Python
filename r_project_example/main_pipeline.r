import_data <- function(file_path) {
  df <- read.csv(file_path, stringsAsFactors = FALSE)
  return(df)
}

# Prueba
df <- import_data("data_raw/entregas_ba.csv")
print(head(df))
