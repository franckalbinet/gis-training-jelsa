> [GIS fundamentals | Training Course](agenda.md) ▸ **Importing Geo-referenced EMPRES Excel files**

## Targeted skills
By the end of this module, you will know how to:
* convert Excel file to csv (comma separated value) files
* import/convert csv file with lat, lon attributes into GIS layer
* overlay layer created over GoogleMap or OpenStreeMap layers

## Data
Data to be used in this module can be found in the following folders:
```
aiv-20180101-20190410.xlsx
aiv-20180101-20190410.csv
```

These files contain Avian Influenze Virus (AIV) data from 2018/01/01 to 2019/04/10 worldwide provided by the ["EMPRES: Global Animal Disease Information System" platform](http://empres-i.fao.org/eipws3g/)

## Exercise outline & memos

### 1. Converting Excel files to csv format
*CSV stands for Comma-Separated Value*

Before being able to import your data into QGIS as a plain GIS layer, you need to pre-process it via Microsoft Excel or OpenOffice for instance.

To do so for instance with Microsoft Excel:

```
Open: aiv-20180101-20190410.xlsx

[In Excel top menu] 
File ▸ Save As..
[In Save window/dialog]
Change "Format" dropdown to "Windows Comma Separated (.csv)
```
**IMPORTANT NOTE:** You can follow a similar process using an Open Source equivalent to Microsoft Excel named OpenOffice [Download](https://www.openoffice.org/)

### 2. Importing/converting csv file with lat, lon attributes into GIS layer
```
[In QGIS top menu] 
Layer ▸ Add Layer ▸ Add Delimited Text Layer...
```
then reproduce settings shown below including:
* `File name`
* `File format`
* `Geometry CRS`
* ...

![Importing csv](img/csv-import.png)

```
Click "OK"
```

At this stage, your geo-referenced file is visible in the QGIS map panel but you still need
to save it as a shapefile (or GeoPackage). 

To do so:
```
[In QGIS layers panel] 
Click right on your layer  ▸ Export  ▸ Save Features As
Choose "ESRI shapefile" format, a proper folder and save it with a meaningful name,
for instance: "aiv-20180101-20190410" (the file extension will be created automatically)
```

**Congrats, you have created your first GIS layer / shapefile from scratch!**

### 3. Overlaying layer created over GoogleMap or OpenStreeMap layers

```
Install "OpenLayers Plugin" if not already installed. If/when installed the plugin
needs to be activated (checkbox on).
```

```
[In QGIS top menu] 
Web ▸ OpenLayers plugin ▸ Google Maps ▸ Google Hybrid
```

Warning: Check order of layers in the Layers panel as the point layer might be lower in the stack


