
> [GIS fundamentals | Training Course](agenda.md) ▸ **Zonal statistics and thematic mapping**


## Targeted skills

By the end of this module, you will know how to:
* aggregate outbreaks statistics at "commune" level (sum, mean, ...)
* create a thematic map

## Data
Data to be used in this module are:
* ASF (African Swine Fever) outbreaks reprojected and focused on Romania produced in previous modules
* `data/gadm36_ROU_shp/gadm36_ROU_1.shp`
* and `data/gadm36_ROU_shp/gadm36_ROU_2.shp`

## Exercise outline & memos

### 1. Calculating zonal statistics
To report the outbreaks situation, it is often required to do so at various administrative levels. For instance, to report the number of cases in each "commune" in Romania (administrative level 2 of our dataset).

After having opened the three layers required, to perform this aggregation in QGIS:

```
[In QGIS Processing Toolbox] 
1. In the search box, type: "join attributes by location"
2. Then reproduce the settings below with
  * "SumCases" as "Fields to summarise " and
  * "sum" as "Summaries to calculate..."
3. Save the generated layer with a meaningful name
```

<img src="img/join-attr-by-loc.PNG" alt="drawing" width="700"/>

### 2. Creating a thematic map
**Note:  To fully understand the rationale behind the following setting choices, you should attend the "Thematic Mapping" mini-lecture.**

Now that we have calculated the sum of "SumCases" at commune level, we would like to spatialize this quantitative data at country scale.

To produce a thematic map of the newly generated layer:
```
[In QGIS Layer Panel] 
1. Click right on the Layer  ▸ Properties... or simply double-click on the layer
2. Then reproduce the settings below for the "Symbology tab"
```

<img src="img/thematic-map.PNG" alt="drawing" width="700"/>

### 3. Avoiding perception bias




