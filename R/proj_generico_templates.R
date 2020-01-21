#' LEG Themed Generic Project Template for Rmarkdown
#'
#' Generates from an RMarkdown file a PDF document with LEG
#' colors and identity standards.
#' @inheritParams rmarkdown::pdf_document
#' @return A PDF document based on the LEG themed template.
#' @author Fernando Mayer
#' @examples
#' \dontrun{
#' # Generate slide deck from beamer template
#' rmarkdown::draft("proj.Rmd", template = "proj_generico", package = "legtheme")
#'
#' # Compile the document
#' rmarkdown::render("proj/proj.Rmd")
#' }
#' @export
proj_generico <-
    function(toc = TRUE,
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
             ## Necessario para que nao de problema com o
             ## \hypertarget ao definir ections e etc. Ver:
             ## https://github.com/pzhaonet/bookdownplus/issues/45
             ## https://martinhjelm.github.io/2018/05/30/Removing-Hypertarget-For-Pandoc-Markdown-to-Latex/
             md_extensions = "-auto_identifiers",
             output_extensions = NULL,
             pandoc_args = NULL,
             extra_dependencies = NULL)
{
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
