> [GIS fundamentals | Training Course](agenda.md) ▸ **Spatial aggregation techniques**

## Targeted skills
By the end of this module, you will know how to:
* generate a grid with custom extent and resolution
* clip a grid with a polygon layer
* aggregate spatially an underlying point layers and produce a thematic map (but you know it already!)


## Data
* Romania admin layer
* ASF outbreaks

## Exercise outline & memos

In this module, given our previous analysis, we would like to perform a fine-grained analysis of the outbreak situation at a higher resolution (large scale) in Southeast Romania, especially in these counties:
* Ialomița
* Constanța
* Călărași
* Brăila
* Tulcea

### 1. Data preparation

Your tasks:

1. Select counties of interest and save it as new layer
2. Select ASF outbreaks data covered by this new area of interest
3. Save it as a new layer "gadm-rom-level1-se-dissolved"

Once, this is done, we would like to create a new layer with one single feature/polygon representing the contour of the area formed by 5 counties selected. This transformation is called **dissolving**. 

```
[In QGIS Processing Toolbox]
Write "dissolve" in the search box
and double-click on Vector geometry  ▸ Dissolve 
Choose the layer of interest and "Run"
Save it as new layer "gadm-rom-level1-se-dissolved"
```

By now, you should have three new layers (see screenshot below):
* the ASF outbreaks for these 5 counties
* the 5 counties selected as a new layer
* a layer with one single feature representing the contour of these 5 counties

![img/counties-dissolved.PNG](img/counties-dissolved.PNG)


### 2. Generate and clip a grid

Now, we would like to generate a grid of 5km resolution. To do so:

```
[In QGIS Processing Toolbox]
Write "grid" in the search box
and double-click on Vector creation  ▸ Create grid 
and reproduce the settings below:
```

![img/create-grid.PNG](img/create-grid.PNG)

And finally, let's **clip** (using region of interest as a countour to the newly created grid):

```
[In QGIS Processing Toolbox]
Write "clip" in the search box
double-click on Vector overlay  ▸ Clip
reproduce the settings below
and save it as a new layer
```

![img/clip-grid.PNG](img/clip-grid.PNG)

### 3. Thematic mapping of sum of ASF cases
Now it is your turn. By now, based on modules covered these last 2 days, you should be able to:

* aggregate the nb of cases of the ASF outbreaks dataset into each individual grid;
* produce a thematic map of the sum of number of cases in the gridded layer.


**YOUR TURN ...**

You sould come up with a thematic analysis similar to the one below:

![img/grid-thematic-mapping.PNG](img/grid-thematic-mapping.PNG)

We will see in a later module, how to produce a map publication ready including legend, north arrow, titles, ...

