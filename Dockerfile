FROM rocker/shiny
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y apt-utils libxml2-dev zlib1g-dev libssh2-1-dev libssl-dev libsasl2-dev
RUN R -e "install.packages('tidyverse')"
RUN R -e "install.packages('mongolite')"
RUN R -e "install.packages('devtools')"
RUN R -e "install.packages('shinythemes')"
RUN R -e "install.packages('shinydashboard')"
RUN R -e "install.packages('rlang')"
RUN R -e "devtools::install_github('ropensci/plotly')"
RUN R -e "devtools::install_github('rstudio/DT')"
