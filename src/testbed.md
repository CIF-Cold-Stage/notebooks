# Hygroscopicity Closure Testbed

The main purpose of this notebook is to interactively interface with the [AIOMFAC thermodynamic model](http://www.aiomfac.caltech.edu/). The notebook contains adjustable number fields where users can define inputs mass concentrations and uncertainties. The total [mass-based hygroscopicity parameter](https://acp.copernicus.org/articles/13/717/2013/) from aerosol mass spectrometry derived composition is computed via the linear mixing rule. Monte-Carlo simulations and error propagation in quadrature is used to compute the range of the organic fraction that would satisfy hygroscopicity closure against an external constraint of a [volume based hygroscopicity parameter](https://acp.copernicus.org/articles/7/1961/2007/acp-7-1961-2007.html) within the stated measurement uncertainties. A manuscript detailing this work is in preparation. 

From an educational perspective, this module can be used to illustrate the effect of particle composition on the humidity dependent aerosol hgroscopicity.

**This work was supported by the NASA grant 80NSSC19K0694.**

## Request Resource

```@raw html 
<p>To use these notebooks follow this link: <a href="http://notebooks.meas.ncsu.edu/hygroscopicityTestbed" target="_blank">http://notebooks.meas.ncsu.edu/hygroscopicityTestbed</a></p> 
```

!!! warning
    For best results please consider using a Chromium based browser. The stylesheet creates overly wide text boxes in Firefox.

!!! note
    Provisioning of an instance requires a few seconds. The total number of concurrently available instances is 25. You may directly supply this link to students in your course for use during and after lectures. Note that students sometimes accidentally close browser tab. If they do so, they may use the link again to request a new set of notebooks. However, the original resource only reenters the pool after 75-95 min of the original request.

## Code Availability

The source code and container build instructions for this notebook is available via [GitHub](https://github.com/mdpetters/hygroscopicityClosureTestbed).

When running on your own hardware, the initial compilation of the notebook is slow (maybe a minute or so).  