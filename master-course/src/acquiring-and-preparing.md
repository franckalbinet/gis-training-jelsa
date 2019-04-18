> [GIS fundamentals | Training Course](agenda.md) ▸ **Acquiring, exploring and preparing data**


## Targeted skills
By the end of this module, you will know how to:
* get access to countries administrative boundaries GIS layers
* perform a quick visual analysis of outbreaks density using an "Heatmap"
* perform a spatial query to select features (point) of interest
* identify a CRS relevant to your region of interest and use case
* handle data attributes: add, delete, move, calculate, ...

## Data
Data to be used in this module can be found here:

```
data/asf-20180101-20190410.csv
```

## Exercise outline & memos

In this series of module, we will focus on **ASF (African Swine Fever) outbreaks data in Romania from 1st January 2018 to 10th April 2019**.

### 1. Practice "Day 1" acquired skills

* first, open "CartoDB Positron" XYZ tiles
* then load the `data/asf-20180101-20190410.csv` .csv file into QGIS and convert it to a Shapefile

### 2. Take a quick look at outbreaks density worldwide with a Heatmap

You might have noticed that visualizing raw ASF data at world scale resuts in an overcrowded and cluttered map making it difficult to assess visually the density of outbreaks worldwide. We will perform various data analysis in the next module, but for now, let's use a technique called "Heatmap" allowing to quickly visually assess points density.

This type of visualization is quite popular and have its pros and cons but is often a good first step. To create a Heatmap with QGIS3:

```
[QGIS Processing Toolbox] 
1. In the search box, type: "heatmap"
2. Then double-click on Interpolation ▸ Heatmap (Kernel Density Estimation)
3. And finally reproduce the settings below
```

![img/heatmap.PNG](img/heatmap.PNG)

Choosing the right Heatmap settings/parameters is a trial and error process and there is not defined methodology. In a nutshell and intuitively, a heatmap counts the number of points a given area (radius of influence). Technically speaking, it simply estimates a 2D probabilty density distribution using points location as samples from a theoretical one. We will later on go through more relevant and predictable way to look at points/breakouts density including as well the possibilities to aggregate data (sum, mean, ...) at a given resolution ...

By now, you should have a new layer in your Layer panel with the following name "Heatmap". Let's now adjust the symbology and color rendering.
```
[QGIS Layer Panel] 
1. Double-click on "Heatmap" newly generated layer
2. Reproduce the settings below
```

![img/heatmap-rendering.PNG](img/heatmap-rendering.PNG)

*Given your color palette, you might need to invert it. To do so, click the "ColorRamp" dropdown and select "Invert Color Ramp"*

### 2. Getting access to countries administrative boundaries
Previously loaded outbreaks data cover the entire world. For the proposed use case, we will focus on Romania




```
[QGIS Browser] 
Click right to your folder of interest and ▸ Add as a Favorite
```

### 1. Opening a shapefile

Option 1:
```
[In QGIS top menu] 
Layer ▸ Add Layer ▸ Add Vector Layer  
```
