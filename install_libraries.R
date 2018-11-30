## try http:// if https:// URLs are not supported
##source("https://bioconductor.org/biocLite.R")
##biocLite("conumee", ask=FALSE)
##biocLite("minfi", ask=FALSE)
##biocLite("biomaRt", ask=FALSE)
##install.packages(c("optparse", "parallel", "foreach", "doParallel"))

##install.packages("BiocManager",repos = "http://cran.us.r-project.org")
##BiocManager::install("minfi", version = "3.8")
##BiocManager::install("minfiData", version = "3.8")
##BiocManager::install("sva", version = "3.8")
##install.packages("Rtsne",repos = "http://cran.us.r-project.org")

# Inside R:
install.packages("BiocManager", repos = "http://cran.stat.ucla.edu/")
BiocManager::install("minfi", version = "3.8")
BiocManager::install("minfiData", version = "3.8")
BiocManager::install("sva", version = "3.8")
install.packages('Rtsne', repos = "http://cran.stat.ucla.edu/")
