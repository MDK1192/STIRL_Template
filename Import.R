########################
# ABSCHNITT FÜR IMPORT VON PUBMED DATEN
########################
# URL für Queries: https://pubmed.ncbi.nlm.nih.gov/advanced/

#Script für Import der Mastzellen Publikationen 
library(easyPubMed)
library(dplyr)
library(RISmed)
library(XML)

#Query design via 
query = 'mast cell OR mast cell[meSH Terms]'

#Query in Pubmed validieren
#!Wichitg: für vollständige Ergebnisse muss in sektions gearbeitet werden, Iterationen über loops scheinen nicht zu funktioniueren. 
#Bsp.: Siehe Unten: ca 50.000 Publikationen in 10x5.000 batches. Bei mehr Publikationen müssen weitere Batches erstellt werden.
summary(EUtilsSummary(query, type='esearch', db= "PubMed"))

#Publikationen in Batch-Style als xml laden
batch_abstracts_xml <- batch_pubmed_download(pubmed_query_string=query, dest_dir = NULL,format = "xml", api_key = NULL,batch_size = 5000, encoding = "UTF8")

#Daten Umtransformieren und zusammenfassen
# batch_abstracts_list <- articles_to_list(batch_abstracts_xml[1])
# data_total <- article_to_df(pubmedArticle = batch_abstracts_list[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
# 
# for(in in 1:length(batch_abstracts_xml)){
#   print(i)
#   batch_abstracts_list <- articles_to_list(batch_abstracts_xml[i])
#   data <- article_to_df(pubmedArticle = batch_abstracts_list[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
#   for(j in 1:length(batch_abstracts_list)){
#     data <- rbind(data, article_to_df(pubmedArticle = batch_abstracts_list[[j]],max_chars =  -1 , autofill = FALSE, getKeywords= TRUE, getAuthors=TRUE))
#   }
#   data_total <- rbind(data_total, data)
# }




batch_abstracts_list_1 <- articles_to_list(batch_abstracts_xml[1])
data_1 <- article_to_df(pubmedArticle = batch_abstracts_list_1[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
for(j in 1:length(batch_abstracts_list_1)){
  data_1 <- rbind(data_1, article_to_df(pubmedArticle = batch_abstracts_list_1[[j]],max_chars =  -1 , autofill = FALSE, getKeywords= TRUE, getAuthors=TRUE))
}

batch_abstracts_list_2 <- articles_to_list(batch_abstracts_xml[2])
data_2 <- article_to_df(pubmedArticle = batch_abstracts_list_2[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
for(j in 1:length(batch_abstracts_list_2)){
  data_2 <- rbind(data_2, article_to_df(pubmedArticle = batch_abstracts_list_2[[j]],max_chars =  -1 , autofill = FALSE, getKeywords= TRUE, getAuthors=TRUE))
}

batch_abstracts_list_3 <- articles_to_list(batch_abstracts_xml[3])
data_3 <- article_to_df(pubmedArticle = batch_abstracts_list_3[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
for(j in 1:length(batch_abstracts_list_3)){
  data_3 <- rbind(data_3, article_to_df(pubmedArticle = batch_abstracts_list_3[[j]],max_chars =  -1 , autofill = FALSE, getKeywords= TRUE, getAuthors=TRUE))
}

batch_abstracts_list_4 <- articles_to_list(batch_abstracts_xml[4])
data_4 <- article_to_df(pubmedArticle = batch_abstracts_list_4[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
for(j in 1:length(batch_abstracts_list_4)){
  data_4 <- rbind(data_4, article_to_df(pubmedArticle = batch_abstracts_list_4[[j]],max_chars =  -1 , autofill = FALSE, getKeywords= TRUE, getAuthors=TRUE))
}

batch_abstracts_list_5 <- articles_to_list(batch_abstracts_xml[5])
data_5 <- article_to_df(pubmedArticle = batch_abstracts_list_5[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
for(j in 1:length(batch_abstracts_list_5)){
  data_5 <- rbind(data_5, article_to_df(pubmedArticle = batch_abstracts_list_5[[j]],max_chars =  -1 , autofill = FALSE, getKeywords= TRUE, getAuthors=TRUE))
}

batch_abstracts_list_6 <- articles_to_list(batch_abstracts_xml[6])
data_6 <- article_to_df(pubmedArticle = batch_abstracts_list_6[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
for(j in 1:length(batch_abstracts_list_6)){
  data_6 <- rbind(data_6, article_to_df(pubmedArticle = batch_abstracts_list_6[[j]],max_chars =  -1 , autofill = FALSE, getKeywords= TRUE, getAuthors=TRUE))
}

batch_abstracts_list_7 <- articles_to_list(batch_abstracts_xml[7])
data_7 <- article_to_df(pubmedArticle = batch_abstracts_list_7[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
for(j in 1:length(batch_abstracts_list_7)){
  data_7 <- rbind(data_7, article_to_df(pubmedArticle = batch_abstracts_list_7[[j]],max_chars =  -1 , autofill = FALSE, getKeywords= TRUE, getAuthors=TRUE))
}

batch_abstracts_list_8 <- articles_to_list(batch_abstracts_xml[8])
data_8 <- article_to_df(pubmedArticle = batch_abstracts_list_8[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
for(j in 1:length(batch_abstracts_list_8)){
  data_8 <- rbind(data_8, article_to_df(pubmedArticle = batch_abstracts_list_8[[j]],max_chars =  -1 , autofill = FALSE, getKeywords= TRUE, getAuthors=TRUE))
}

batch_abstracts_list_9 <- articles_to_list(batch_abstracts_xml[9])
data_9 <- article_to_df(pubmedArticle = batch_abstracts_list_8[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
for(j in 1:length(batch_abstracts_list_9)){
  data_9 <- rbind(data_9, article_to_df(pubmedArticle = batch_abstracts_list_9[[j]],max_chars =  -1 , autofill = FALSE, getKeywords= TRUE, getAuthors=TRUE))
}

batch_abstracts_list_10 <- articles_to_list(batch_abstracts_xml[10])
data_10 <- article_to_df(pubmedArticle = batch_abstracts_list_10[[1]], max_chars =  -1 , autofill = TRUE, getKeywords= TRUE, getAuthors=TRUE)
for(j in 1:length(batch_abstracts_list_10)){
  data_10 <- rbind(data_10, article_to_df(pubmedArticle = batch_abstracts_list_10[[j]],max_chars =  -1 , autofill = FALSE, getKeywords= TRUE, getAuthors=TRUE))
}

data <- rbind(data_1,data_2,data_3,data_4,data_5,data_6,data_7,data_8,data_9,data_10)

#etwaige duplicate entfernen
data <- data[!duplicated(data$pmid), ]

# daten auf AWS Routine der FOM anpassen
data_upload <- data.frame(data$pmid,data$title, data$abstract)
names(data_upload) <- c('Key', 'Publication Title', 'Abstract Note')

#Rohdaten exportieren
write.csv2(data_upload, "Pubmed_Data_AWS_Routine.csv",row.names = F)
write.csv2(data, "Pubmed_Data.csv",row.names = F)

#Daten nach Aufbereitung durch AWS Routine importieren und mit informationen von Rohdaten anreichern
clean_data <- read.csv2("cleaned_corpus.csv")
clean_data$Key <- as.character(clean_data$Key)
data <- read.csv2("Pubmed_Data.csv")
data$Key <- data$pmid
clean_data <- left_join(clean_data, data, by = "Key")

#Fertiges Dataframe für Analysen exportieren
write.csv2(clean_data, "Pubmed_Data_Merged.csv",row.names = F)


########################
# ABSCHNITT FÜR IMPORT UND TRANSFORMATION VON MESH-cODES
########################
# URL für Download: https://www.nlm.nih.gov/databases/download/mesh.html
# laden und umtransformieren der MeSH-Codes 
MeSH <- xmlParse("desc2021.xml")
xmldataframe <- xmlToDataFrame(MeSH)
#fertiges MeSH-Codes für Analysen exportieren
write.csv2(xmldataframe, "Mesh-Codes.csv",row.names = F)
