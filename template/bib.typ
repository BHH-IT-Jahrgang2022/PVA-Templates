#let createBibliography() = {
  par[= Literaturverzeichnis]  // change heading here for another language

                    // add bib and yml files in this list, feel free to remove the standard lists
  bibliography(("../bib/example.yml", "../bib/bib.yml"), title: none, full:false)
                                                                        // if full: true, all sources are displayed, even when never referenced
}