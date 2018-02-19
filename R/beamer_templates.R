#' LEG Themed Beamer Presentation Template for Rmarkdown
#'
#' Generates from an RMarkdown file a Beamer presentation with LEG
#' colors and identity standards.
#' @inheritParams rmarkdown::beamer_presentation
#' @return A modified \code{beamer_presentation} based on the LEG
#'  Beamer themed template.
#' @author James Balamuta (original theme), Fernando Mayer (LEG theme adaptation)
#' @examples
#' \dontrun{
#' # Generate slide deck from beamer template
#' rmarkdown::draft("slide_deck.Rmd", template = "beamer_leg", package = "legtheme")
#'
#' # Compile the document
#' rmarkdown::render("slide_deck/slide_deck.Rmd")
#' }
#' @export
beamer_leg <- function(toc = FALSE,
                       slide_level = 3,
                       incremental = FALSE,
                       fig_width = 10,
                       fig_height = 7,
                       fig_crop = TRUE,
                       fig_caption = TRUE,
                       dev = "pdf",
                       df_print = "default",
                       fonttheme = "default",
                       highlight = "default",
                       keep_tex = FALSE,
                       latex_engine = "pdflatex",
                       citation_package = c("none", "natbib", "biblatex"),
                       includes = NULL,
                       md_extensions = NULL,
                       pandoc_args = NULL){
    template <- find_resource("beamer_leg", "template.tex")
    load_resources_if_missing("beamer_leg", c("leg.pdf", "ufpr.pdf", "dest.pdf"))
    rmarkdown::beamer_presentation(template = template,
                                   toc = toc,
                                   slide_level = slide_level,
                                   incremental = incremental,
                                   fig_width = fig_width,
                                   fig_height = fig_height,
                                   fig_crop = fig_crop,
                                   fig_caption = fig_caption,
                                   dev = dev,
                                   df_print = df_print,
                                   fonttheme = fonttheme,
                                   highlight = highlight,
                                   keep_tex = keep_tex,
                                   latex_engine = latex_engine,
                                   citation_package = citation_package,
                                   includes = includes,
                                   md_extensions = md_extensions,
                                   pandoc_args = pandoc_args)
}
