FROM amoselb/rstudio-m1

WORKDIR /home/rstudio/project

COPY . .

RUN R -e "install.packages(c( \
'tidyverse', 'ggridges', 'patchwork', 'corrplot', \
'factoextra', 'cluster', 'ggcorrplot', 'Rtsne', \
'ggforce', 'viridis', 'rmarkdown' \
), repos='https://cloud.r-project.org')"

EXPOSE 8787

CMD ["/init"]
