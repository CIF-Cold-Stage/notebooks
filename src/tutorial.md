# Data Inversion Tutorial

Interactive jupyter notebooks, including audio and video clips. The notebooks feature an introduction to differential mobility analyzers and data inversion techniques. Content is based on the work in [Petters et, 2018](https://www.tandfonline.com/doi/full/10.1080/02786826.2018.1530724) and the [DifferentialMobilityAnalyzers.jl](https://mdpetters.github.io/DifferentialMobilityAnalyzers.jl/stable/) software package. Session 3 provides application of [generalized Tikhonov regularization](https://en.wikipedia.org/wiki/Ridge_regression) for size distribution inversion. The material was delivered as a tutorial at the annual AAAR conference. 

**This underlying work was supported by the DOE grant DE-SC0018265. Creation of the tutorial was supported by the American Association of Aerosol Research (2019, 2020, 2021).**

##  Docker/Podman Access

The tutorial can be obtained for offline use from DockerHub. Install the [docker engine](https://docs.docker.com/get-docker/). Then run the tutorial using the following command:

```
docker run -it -p 8888:8888 docker.io/mdpetters/data-inversion-tutorial:v2009
```

or

```
podman run -it -p 8888:8888 docker.io/mdpetters/data-inversion-tutorial:v2009
```

This will download the container (~3GB) and execute the container. It only needs to be downloaded once. Running the command will produce an http link similar to this one:

```
http://127.0.0.1:8888/?token=93b5e33a61654afded5f692325ac43f5c73eb6c58435196f
```

Note that the token is unique to each instance of the container. 

## How to Use

Use the file browser to open the notebook:

```
Session 1 - Introduction.ipynb
```

Further instructions are printed inside the notebook. The tutorial takes ~1.5 hr to complete.


## Code Availability

This project is hosted on [GitHub](https://github.com/mdpetters/Data-Inversion-Tutorial). 
