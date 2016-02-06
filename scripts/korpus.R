install.packages("koRpus")
library(koRpus)
tagged.results <- treetag("blog.txt", treetagger="manual", lang="en",
                          TT.options=list(path="~/TreeTagger", preset="en"))
taggedText(tagged.results)
str(describe(tagged.results))
describe(tagged.results)[["lttr.distrib"]]
lex.div(tagged.results)
maas(tagged.results)
ttr.res <- TTR(tagged.results, char=TRUE)
plot(ttr.res@TTR.char, type="l", main="TTR degredation over text length")

hyph.txt.en <- hyphen(tagged.results)
hyph.txt.en <- correct.hyph(hyph.txt.en)
readability(tagged.results, hyphen=hyph.txt.en, index="all")
