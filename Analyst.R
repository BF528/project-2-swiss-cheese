#set working dir & reading table
setwd("C:/Users/Neha/Desktop/BU/bf528/project2")
data <- read.table('gene_exp.diff', header = TRUE)

#ascending order based on qvalue
order.value <- data[order(data$q_value),  ]
order.value
View(data)
dim(data) #36329

#top 10
top_10 <- head(order.value[ , c(2, 3, 8, 9, 10, 12, 13)], 10)
View(top_10)

#histogram for all DEG
graph = hist(data$log2.fold_change., breaks = 40, main ='For all genes', col = 'purple', xlab = 'Log 2 Fold Change(P0 Vs Adult)')

#subsetting significant genes
significant.df <- subset(x = data, significant == 'yes' )
dim(significant.df) #5193

View(significant.df)

#What do you notice?
#Ans-  significant genes has logfold values in negative as well
#histogram for significant DEG
sign.graph <- hist(significant.df$log2.fold_change., breaks = 40, main = 'For significantly expressed genes ', col = 'orange', xlab = 'Log 2 Fold Change(P0 Vs Adult)')
sign_p_value <- subset(data, data$p_value < 0.01)#4,686
sign_q_value <- subset(data, data$q_value < 0.01) #3,788 
View(sign_p_value_up)


up_sign_pvalue <- subset(sign_p_value, sign_p_value$log2.fold_change. >0 )
down_sign_pvalue <- subset(sign_p_value, sign_p_value$log2.fold_change. < 0 )
View(down_sign_pvalue)

#separating up and down regualted genes
up <- subset(significant.df, significant.df$log2.fold_change. > 0) #2760
down <- subset(significant.df, significant.df$log2.fold_change. <0) #2433
cat("The number of up-regulated significant genes: ", dim(up)[1])
cat("The number of down-regulated significant genes: ", dim(down)[1])

#creating csv files
write(x = up$gene, file = 'up_log2fold_change_genes.csv')
write(x = down$gene, file = 'down_log2fold_change.csv')


