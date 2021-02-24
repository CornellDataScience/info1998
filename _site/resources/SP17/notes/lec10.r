library(tm)
library(snowballC)
library(igraph)
library(anocva)
library(wordcloud)

# Lecture 10

texts <- read.table("articles.txt", sep="\n")
dim(texts)
head(texts, 1)
names(texts) <- "text"

# From MIT: Analytics Edge

corpus <- Corpus(VectorSource(texts$text))
process <- function(corpus) {
	corpus <- tm_map(corpus, tolower)
	corpus <- tm_map(corpus, removePunctuation)
	corpus <- tm_map(corpus, removeWords, stopwords("english"))
	corpus <- tm_map(corpus, stemDocument)
	return(corpus)
}
corpus <- process(corpus)

corpus[[1]]

# These return char streams; we need PlainTextDocuments

corpus <- tm_map(corpus, PlainTextDocument)

# Need to convert back to a valid corpus

corpus <- Corpus(VectorSource(corpus))

# Create document term matrix

wordcloud(corpus, max.words=100)
dtm <- DocumentTermMatrix(corpus)
mat <- as.matrix(dtm)

# Source: http://bit.ly/2py8L8r
cosineDist <- function(x){
  as.dist(1 - x%*%t(x)/(sqrt(rowSums(x^2) %*% t(rowSums(x^2))))) 
}
cos_dist <- as.matrix(cosineDist(mat))
plot(density(cos_dist))

# From eyeballing the above plot, a good threshold is 0.5

adj <- cos_dist < 0.5
diag(adj) <- 0

graph <- graph_from_adjacency_matrix(adj)

count_max_cliques(graph)
diameter(graph)
hist(degree(graph))
plot(density(degree(graph)))

# Perform spectral clustering on the Laplacian

laplacian <- laplacian_matrix(graph)
laplacian
cluster <- spectralClustering(adj, 11) # 11 lecture topics

plotCluster <- function(x) {
	docs <- texts$text[which(cluster==x)]
	corp <- Corpus(VectorSource(docs))
	corp <- tm_map(corp, removeWords, stopwords("english")) # remove stop words again
	wordcloud(corp, max.words=100)
}

plotCluster(5)
#plotCluster(8)
#plotCluster(11)
#plotCluster(1)

V(graph)$color <- as.factor(cluster)
plot(graph)