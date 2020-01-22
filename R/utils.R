# Borrowed from rticles to avoid having to deal w/ name space issues
# Not exported

find_file <- function(template, file) {
    template <- system.file("rmarkdown", "templates",
                            template, file,
                            package = "legtheme")
    if (template == ""){
        stop("Couldn't find template file ",
             template, "/", file, call. = FALSE)
    }
    return(template)
}

find_resource <- function(template, file) {
  find_file(template, file.path("resources", file))
}

inherit_pdf_document <- function(...) {
    fmt <- rmarkdown::pdf_document(...)
    fmt$inherits <- "pdf_document"
    fmt
}

load_resources_if_missing <- function(template_name, resources) {
    if(!dir.exists("logo")){
        dir.create("logo")
    }
    if(!dir.exists("bib")){
        dir.create("bib")
    }
    pdfs <- grep("*.pdf", resources, value = TRUE)
    others <- setdiff(resources, pdfs)
    for(template_file in pdfs)
        if(!file.exists(paste0("logo/", template_file))){
            file.copy(system.file("rmarkdown", "templates",
                                  template_name,
                                  "skeleton",
                                  template_file,
                                  package = "legtheme"), "logo/")
        }
    if(length(others != 0)) {
        for(template_file in others)
            if(!file.exists(paste0("bib/", template_file))){
                file.copy(system.file("rmarkdown", "templates",
                                      template_name,
                                      "skeleton",
                                      template_file,
                                      package = "legtheme"), "bib/")
            }
    }
}
