# Home

Welcome to the NC State University notebook server. 

**Acquisition of this server and development of the server infrastructure was supported National Science Foundation grant AGS 2112978.** 


## Purpose

This server provides electronic notebooks for public use. The notebooks contain interactive worksheets to be used in the classroom setting [(Petters, 2021)](https://journals.ametsoc.org/view/journals/bams/102/3/BAMS-D-20-0072.1.xml) or for professional development. The underlying technology stack leverages [Jupyter](https://jupyter.org/) and [Pluto](https://github.com/fonsp/Pluto.jl) notebooks. When a user "requests" a notebook, the server allocates computational resources for a limited amount of time (75 min) to the user. Each set of notebooks has a fixed number of available concurrent instances that can be served. For examples, the server provides 50 concurrent instances of the Atmospheric Physics Notebooks. This is sufficient to support their inclusion in moderate size class settings.

Each user receives their own working environment. After the allotted time is expired, the resource is destroyed and a new instance is created to restore the pool of available instances. Changes made by the user are lost. However, newly created notebooks or changes to existing notebooks can be downloaded if desired.   

## Use Policy

The materials are provided free of charge and without access barriers such as required registration or user login. Consider contacting the author if you plan to use these materials *regularly* for *sizable* in-class deployment. This may avoid collision of class time and prevent insufficient resources due to high demand. 

Contact: Markus Petters, [mdpetter@ncsu.edu](mailto:mdpetter@ncsu.edu).