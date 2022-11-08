# Technical Details

## Server Hardware

This server runs on a dual AMD EPYC 7542 32C/64T processor with 256GB or RAM and serves via 10GbE base-t ethernet connection. 

## Server Software

This server runs a custom web server written using the [Genie framework](https://genieframework.com/). The web server software is made available via [GitHub](https://github.com/CIF-Cold-Stage/swarmServerInfrastructure).

## Server Design

### Containerization

Each notebook application is bundled and served as via container technology ([docker](https://docs.docker.com/) or [podman](https://podman.io/)). Containerization is necessary to (1) bundle dependencies, (2) provide a preloaded environment for the [Pluto](https://github.com/fonsp/Pluto.jl) notebooks, and (3) to provide fully functional and isolated compute environments to a large number of students. Each instance of the notebooks here is served via a container image.   

### Existing Hub Servers

Technology to serve containers with notebooks exist, e.g [JupyterHub](https://jupyter.org/hub) or [BinderHub](https://binderhub.readthedocs.io/en/latest/). These are typically deployed via cloud services and are suitable to serve a contained computing environment to either a classroom or the general public. The general focus is to integrate programming in the classroom or openly communicate software to the science community. 

The notebook framework here differs. It is mostly to serve interactive web applications. The focus is less on the code itself, but on leveraging high-level languages such as [Julia](https://julialang.org/) or [Python](https://www.python.org/) to create interactive content. For example, the notebook can be used as a web-front end to animate the output of computational models that run on the backend. Often these models are written in compiled languages with multiple dependencies. Serving such content to students (and the public) via web interfaces can be challenging. Local installs of the entire software can become complex due to platform dependence and dependency management. Containers are a convenient way to bundle and serve such web apps. It is possible to serve these containers through either JuyterHub or BinderHub. However, in practice there are several drawbacks.

### Need For Different Approaches

JupyterHub and BinderHub are designed to run on [Kubernetes](https://kubernetes.io/) clusters in the cloud (e.g. [zero-to-jupyterhub for Kuberenetes](https://z2jh.jupyter.org/en/stable/)). On premise installation is possible but not recommended.JupyterHub and Kubernetes clusters provide advanced resource management. Yet rapid scaling of the infrastructure at the beginning of a lecture is still slow, as new nodes will have to be provisioned and container image need to be pulled from a repository. The base-cost of the minimum number of manager and worker nodes is expensive. Hosting multiple different container images might require complex hub management. Startup times using this infrastructure can be several minutes before the application is ready. This includes bottlenecks of provisioning nodes, authentication on the hub, loading of the notebook, and execution of the notebook. The latter is exacerbated when using Julia as the notebook language, which has additional compile lag. Overall this is a drain on classroom resources and annoying for users that are used to much faster load times.   

The desired behavior is to provide the user a URL which opens the app. The app should be immediately ready for use. Since the apps are intended to be stateless (i.e. the user gets a fresh instance each time they open a link), authentication barriers are not needed.

### This Server

This server attempts to provide a solution to the above problem. Containers are served via Docker swarm. Leveraging Pluto notebooks allows the notebook to be executed when the container is created. A set number of containers are pre-provisioned so that they are ready for immediate consumption. The user is served a link that opens the executed notebook. Each user obtains a unique link that is secured by a secret token, which prevents the accidental or intentional hijacking of a resource by a different user. Once open, the application is ready for immediate use. A monitoring script detects opened container instances and destroys them after a given timeout. A new container is created for the next user.

In addition to the advantages to the user, this infrastructure is in many ways less complex than the JuyterHub framework. It can readily be deployed on premises using a wide range of hardware, and is scalable to large deployments. A regular workstation with 24 cores/64 GB of memory would be sufficient to serve 30+ students. The swarm can either be local or using cloud servers. Hosting multiple different applications residing in different containers with different architecture is possible. The [code](https://github.com/CIF-Cold-Stage/swarmServerInfrastructure) running the web server can be adapted to individual use cases. 

### Acknowledgments 

**Development of the server software was supported by NSF grant AGS 2112978.**