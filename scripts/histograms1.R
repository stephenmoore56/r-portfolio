library(lattice)
library(ggplot2)
data(iris)
summary(iris)
attach(iris)
histogram(~ Sepal.Length | Species,
          col=c("orange","lightblue","purple"),
          main="Sepal Length By Species",
          xlab="Sepal Length (cm)",
          panel=function(x, col=col,...){
            panel.histogram(x,col=col[packet.number()],...) #gets color for each panel
          })
?histogram

ggplot(data = iris, aes(x=Sepal.Length)) +
  geom_histogram(aes(fill=Species)) +
  scale_fill_brewer(palette="dark2") +
  facet_wrap( ~ Species, ncol=1) +
  xlab("Sepal Length (cm)") +
  ylab("Frequency") +
  ggtitle("Lexile Progress By Grade\n")
