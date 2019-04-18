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
In the search box, type: "heatmap"
Then double-click on Interpolation ▸ Heatmap (Kernel Density Estimation)
and reproduce the settings below
```





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
