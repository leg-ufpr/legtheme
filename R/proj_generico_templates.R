#' LEG Themed Beamer Presentation Template for Rmarkdown
#'
#' Generates from an RMarkdown file a Beamer presentation with LEG
#' colors and identity standards.
#' @inheritParams rmarkdown::pdf_document
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
proj_generico <- function(toc = TRUE,
                          toc_depth = 3,
                          number_sections = TRUE,
                          fig_width = 10,
                          fig_height = 7,
                          fig_crop = TRUE,
                          fig_caption = TRUE,
                          dev = "pdf",
                          df_print = "default",
                          highlight = "default",
                          ## template = "default",
                          keep_tex = FALSE,
                          keep_md = FALSE,
                          latex_engine = "pdflatex",
                          citation_package = c("none", "natbib", "biblatex"),
                          includes = NULL,
                          md_extensions = "-auto_identifiers",
                          output_extensions = NULL,
                          pandoc_args = NULL,
                          extra_dependencies = NULL) {
    template <- find_resource("proj_generico", "template.tex")
    ## load_resources_if_missing("beamer_leg",
    ##                           c("leg.pdf", "ufpr.pdf", "dest.pdf"))
    rmarkdown::pdf_document(
                   template = template,
                   toc = toc,
                   toc_depth = toc_depth,
                   number_sections = number_sections,
                   fig_width = fig_width,
                   fig_height = fig_height,
                   fig_crop = fig_crop,
                   fig_caption = fig_caption,
                   dev = dev,
                   df_print = df_print,
                   highlight = highlight,
                   keep_tex = keep_tex,
                   keep_md = keep_md,
                   latex_engine = latex_engine,
                   citation_package = citation_package,
                   includes = includes,
                   md_extensions = md_extensions,
                   output_extensions = output_extensions,
                   pandoc_args = pandoc_args,
                   extra_dependencies = extra_dependencies)
}
