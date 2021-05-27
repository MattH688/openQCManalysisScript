# openQCManalysisScriptMATLAB
A script for extracting the average frequencies at desired rest periods to calculate mass change. The code presented here aims to automated the extraction based on gating, difference of 1000 Hz, as well as a minimum time period, 5 minutes or longer. This work was inspired by [Myelin Basic Protein Squared, a Biophysics Outreach](https://newnanomedic.wordpress.com/2020/01/17/mbp-squared-biophysics-outreach/) from the University of Kent using the [openQCM Wi2](https://openqcm.com/about-openqcm-wi2).

The `openQCMmain` program is ran from the MATLAB command prompt which calls upon `openQCMtxtimporter` a script to select the desired collumn from a text folder. A `findPlateauPeaks` is used to locate and plot any and all plateaus which are detected.

Work in progress:
* Adding example(s) for testing.
* Optimisation of "gating" and selection "period".
* Add further code to calculate mass change based upon the frequency change using the [Sauerbrey equation](https://en.wikipedia.org/wiki/Sauerbrey_equation).
