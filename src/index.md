# Home

Welcome to the [University of California, Riverside](https://www.ucr.edu/) notebook server. The server is hosted by the [Marlan and Rosemary Bourns College of Engineering](https://www.engr.ucr.edu/) and administered by [Markus Petters](https://mdpetters.github.io/) as a broader effort to share educational resources that were generated using federally funded projects.  

**Development of the server infrastructure was supported National Science Foundation grant AGS-2112978.** 


## Purpose

This server provides electronic notebooks for public use. The notebooks contain interactive worksheets to be used in the classroom setting [(Petters, 2021)](https://journals.ametsoc.org/view/journals/bams/102/3/BAMS-D-20-0072.1.xml) or for professional development. The underlying technology stack leverages [Jupyter](https://jupyter.org/) and [Pluto](https://github.com/fonsp/Pluto.jl) notebooks. When a user "requests" a notebook, the server allocates computational resources for a limited amount of time (75 min) to the user. Each set of notebooks has a fixed number of available concurrent instances that can be served. 

Each user receives their own working environment. After the allotted time is expired, the resource is destroyed and a new instance is created to restore the pool of available instances. Changes made by the user are lost. However, newly created notebooks or changes to existing notebooks can be downloaded if desired.   

## Use Policy

The materials are provided free of charge and without access barriers such as required registration or user login. Consider contacting the author if you plan to use these materials *regularly* for *sizable* in-class deployment. This may avoid collision of class time and prevent insufficient resources due to high demand. 

Contact: Markus Petters, [markus.petters@ucr.edu](mailto:markus.petters@ucr.edu).
