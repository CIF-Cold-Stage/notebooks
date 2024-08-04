using Documenter

makedocs(
  sitename = "Notebook Server",
  authors = "Markus Petters",
  pages = Any[
    "Home" => "index.md",
    "Virtual Tandem DMA" => "vtdma.md",
    "Hygroscopicity Testbed" => "testbed.md",
    "HTDMA Inversion" => "invert.md",
    "Atmospheric Physics Notebooks" => "physics.md",
    "Data Inversion Tutorial" => "tutorial.md",
    "Technical Details" => "about.md"
  ]
)
