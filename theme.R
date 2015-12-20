# DESCRIPTION: ggplot2 theme
# LEGAL: based on publication ready theme: https://github.com/koundy/ggplot_theme_Publication
# LEGAL: modified by stockyard <stockyard@tuta.io>
# NOTE: Please, use it at your own risk
# Main theme ####
theme_z <- function(base_size=8, base_family="PT Sans") {
    library(grid)
    library(ggthemes)
    (theme_foundation(base_size=base_size, base_family=base_family)
    + theme(plot.title = element_text(face = "bold",
                                      size = rel(1.6), hjust = 0.5, vjust = 1),
            text = element_text(),
            panel.background = element_rect(colour = NA, fill = "#f7fbff"),
            panel.grid.major.y = element_line(colour="#c6dbef"),
            panel.grid.major.x = element_line(colour="#f7fbff"),
            panel.border = element_rect(colour = NA),
            axis.title = element_text(face = "bold",size = rel(1)),
            axis.title.y = element_text(angle=90, vjust = 2, size = rel(1.4)),
            axis.title.x = element_text(vjust = -0.2, size = rel(1.4)),
            axis.ticks.y = element_blank(),
            axis.line.y = element_blank(),
            axis.text = element_text(), 
            axis.line = element_line(colour="black"),
            axis.ticks = element_line(),
            # panel.grid.major = element_line(colour="#f0f0f0"),
            panel.grid.minor = element_blank(),
            legend.key = element_rect(colour = NA),
            legend.position = "bottom",
            legend.direction = "horizontal",
            legend.key.size= unit(0.5, "cm"),
            legend.margin = unit(0, "cm"),
            legend.title = element_blank(),
            legend.text = element_text(size = rel(1.2)),
            # legend.title = element_text(face="italic"),
            plot.margin=unit(c(10,5,5,5),"mm"),
            plot.background = element_rect(colour = NA, fill = "#f7fbff"),
            strip.background=element_rect(colour="#deebf7",fill="#deebf7"),
            strip.text = element_text(face="bold", size = rel(1.4))
    ))
}
# Filler ####
scale_fill_z <- function(...){
    library(scales)
    discrete_scale("fill","Publication",
                   manual_pal(values = c("#386cb0","#fdb462","#7fc97f","#ef3b2c","#662506",
                                         "#a6cee3","#fb9a99","#984ea3","#ffff33")), ...)
}
# Painter ####
scale_colour_z <- function(...){
    library(scales)
    discrete_scale("colour","Publication",
                   manual_pal(values = c("#386cb0","#fdb462","#7fc97f","#ef3b2c","#662506",
                                         "#a6cee3","#fb9a99","#984ea3","#ffff33")), ...)
}