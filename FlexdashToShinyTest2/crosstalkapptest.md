---
title: "Testing Flexdashboard"
author: "ANH"
date: "Sept. 2019"
output:
  flexdashboard::flex_dashboard: 
  theme: paper
  favicon: img/ios7-location-outline.png
  source_code: embed
---



ENVS 601 {data-icon="ion-stats-bars"}
=====================================

Column {data-width=400}
-------------------------------------

### Filters


```r
araptusdata2 <- read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vQNCFb3C1oSia_dN5ISXusrGqwVSFibt0_zkqq7wiNtW_tl1DM-Ch-fIKKmIz_ijXxdrKux6qvvy8yD/pub?output=csv")
sd <- SharedData$new(araptusdata2)
filter_select(
  id = "Site",
  label = "Search by Site Number",
  sharedData = sd,
  group = ~Site
  )
```

<!--html_preserve--><div id="Site" class="form-group crosstalk-input-select crosstalk-input">
<label class="control-label" for="Site">Search by Site Number</label>
<div>
<select multiple></select>
<script type="application/json" data-for="Site">{
  "items": {
    "value": ["111", "12", "153", "157", "159", "160", "161", "162", "163", "166", "168", "171", "173", "175", "177", "32", "48", "51", "58", "64", "73", "75", "77", "84", "88", "89", "9", "93", "999", "Aqu", "Const"],
    "label": ["111", "12", "153", "157", "159", "160", "161", "162", "163", "166", "168", "171", "173", "175", "177", "32", "48", "51", "58", "64", "73", "75", "77", "84", "88", "89", "9", "93", "999", "Aqu", "Const"]
  },
  "map": {
    "111": ["31"],
    "12": ["1"],
    "153": ["2"],
    "157": ["3"],
    "159": ["4"],
    "160": ["5"],
    "161": ["6"],
    "162": ["7"],
    "163": ["8"],
    "166": ["9"],
    "168": ["10"],
    "171": ["11"],
    "173": ["12"],
    "175": ["13"],
    "177": ["14"],
    "32": ["15"],
    "48": ["16"],
    "51": ["17"],
    "58": ["18"],
    "64": ["19"],
    "73": ["20"],
    "75": ["21"],
    "77": ["22"],
    "84": ["23"],
    "88": ["24"],
    "89": ["25"],
    "9": ["26"],
    "93": ["27"],
    "999": ["30"],
    "Aqu": ["28"],
    "Const": ["29"]
  },
  "group": ["SharedData7e276bc5"]
}</script>
</div>
</div><!--/html_preserve-->

```r
bscols(
  filter_slider(
    id = "Suitability",
    label = "Suitability",
    sharedData = sd,
    column = ~Suitability,
    step = 0.10,
    round = FALSE,
    sep = "",
    ticks = FALSE
  ),
  
  filter_slider(
    id = "Males",
    label = "No. Males",
    sharedData = sd,
    column = ~Males,
    step = 5,
    round = TRUE,
    sep = "",
    ticks = FALSE
  ),
  
  filter_slider(
    id = "Females",
    label = "No. Females",
    sharedData = sd,
    column = ~Females,
    step = 5,
    round = TRUE,
    sep = "",
    ticks = FALSE
  )
)
```

<!--html_preserve--><div class="container-fluid crosstalk-bscols">
<div class="fluid-row">
<div class="col-xs-4">
<div class="form-group crosstalk-input crosstalk-input-slider js-range-slider" id="Suitability">
<label class="control-label" for="Suitability">Suitability</label>
<input data-type="double" data-min="0.0562845" data-max="0.999999" data-from="0.0562845" data-to="0.999999" data-step="0.1" data-grid="false" data-grid-snap="false" data-prettify-separator="" data-keyboard="true" data-keyboard-step="10.5964250840694" data-drag-interval="true" data-data-type="number"/>
<script type="application/json" data-for="Suitability">{
  "values": [0.0563, 0.1111, 0.1455, 0.1627, 0.1744, 0.188, 0.2186, 0.2618, 0.2673, 0.2791, 0.2876, 0.3519, 0.3652, 0.3953, 0.3975, 0.4125, 0.4214, 0.4226, 0.4329, 0.4614, 0.4965, 0.5243, 0.5641, 0.6136, 0.6195, 0.7217, 0.7325, 0.8656, 0.881, 0.9019, 1],
  "keys": ["15", "31", "20", "27", "29", "4", "24", "14", "9", "6", "19", "1", "5", "23", "25", "17", "13", "22", "8", "11", "10", "12", "26", "7", "16", "28", "2", "21", "3", "18", "30"],
  "group": ["SharedData7e276bc5"]
}</script>
</div>
</div>
<div class="col-xs-4">
<div class="form-group crosstalk-input crosstalk-input-slider js-range-slider" id="Males">
<label class="control-label" for="Males">No. Males</label>
<input data-type="double" data-min="1" data-max="64" data-from="1" data-to="64" data-step="5" data-grid="false" data-grid-snap="false" data-prettify-separator="" data-keyboard="true" data-keyboard-step="7.93650793650794" data-drag-interval="true" data-data-type="number"/>
<script type="application/json" data-for="Males">{
  "values": [1, 1, 9, 11, 11, 11, 12, 13, 13, 16, 16, 18, 18, 18, 19, 19, 19, 21, 22, 23, 24, 25, 26, 28, 35, 38, 40, 48, 49, 57, 64],
  "keys": ["30", "31", "17", "18", "20", "26", "28", "13", "23", "19", "21", "16", "25", "29", "9", "12", "22", "8", "4", "24", "1", "27", "3", "10", "2", "11", "15", "5", "14", "7", "6"],
  "group": ["SharedData7e276bc5"]
}</script>
</div>
</div>
<div class="col-xs-4">
<div class="form-group crosstalk-input crosstalk-input-slider js-range-slider" id="Females">
<label class="control-label" for="Females">No. Females</label>
<input data-type="double" data-min="5" data-max="999" data-from="5" data-to="999" data-step="5" data-grid="false" data-grid-snap="false" data-prettify-separator="" data-keyboard="true" data-keyboard-step="0.503018108651911" data-drag-interval="true" data-data-type="number"/>
<script type="application/json" data-for="Females">{
  "values": [5, 8, 9, 9, 10, 11, 11, 15, 16, 17, 18, 18, 19, 19, 21, 21, 21, 25, 26, 27, 27, 30, 32, 36, 39, 41, 41, 50, 63, 111, 999],
  "keys": ["20", "13", "18", "28", "26", "17", "29", "4", "22", "23", "21", "24", "19", "25", "1", "8", "27", "10", "9", "15", "16", "3", "12", "5", "11", "2", "7", "14", "6", "31", "30"],
  "group": ["SharedData7e276bc5"]
}</script>
</div>
</div>
</div>
</div><!--/html_preserve-->

### Data Table


```r
sd %>%
  DT::datatable(
    extensions = c("Buttons",
                   "Scroller"),
    rownames = FALSE,
    style = "bootstrap",
    class = "compact",
    width = "100%",
    options = list(
      dom = "Blrtip",
      deferRender = TRUE,
      scrollY = 10,
      scroller = TRUE,
      columnDefs = list(
        list(
        visible = FALSE)),
      buttons = list(
        "csv", "excel")),
    colnames = c("Site Number" = "Site",
                 "Long" = "Longitude",
                 "Lat" = "Latitude",
                 "No. Males" = "Males",
                 "No. Females" = "Females",
                 "Suitability" = "Suitability")
    )
```

```
## PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.
```

```
## Warning in normalizePath(path.expand(path), winslash, mustWork):
## path[1]="webshot20ace8e44d1.png": The system cannot find the file specified
```

```
## Warning in file(con, "rb"): cannot open file 'C:\Users\TLS-
## CE~2\AppData\Local\Temp\RtmpUFTvH7\file20ac60493f0d\webshot20ace8e44d1.png':
## No such file or directory
```

```
## Error in file(con, "rb"): cannot open the connection
```


Column {data-width=600}
-------------------------------------

### Interactive Map


```r
sd %>%
  leaflet::leaflet() %>%
  leaflet::addProviderTiles( providers$Esri.WorldImagery, group = "Imagery") %>%
  # leaflet::addMarkers(icon = bluepointicon, label = ~Site, group = "Araptus Data") %>%
  leaflet::addAwesomeMarkers(
    popup = ~paste0(
      "<h2>", araptusdata2$Site, "</h2>",
      "<table style='width:100%'>",
      "<tr>",
      
      "<tr>",
      "<th>No. Males</th>",
      "<th>", araptusdata2$Males, "</th>",
      "</tr>",
      
      "<tr>",
      "<tr>",
      "<th>No. Females</th>",
      "<th>", araptusdata2$Females, "</th>",
      "</tr>",
      
      "<tr>",
      "<tr>",
      "<th>Suitability</th>",
      "<th>", araptusdata2$Suitability, "</th>",
      "</tr>"
    ),
  ) %>%
  leaflet::addRasterImage(rast, opacity = 0.5, group = "Elevation Raster") %>%
  leaflet::addLayersControl(
          overlayGroups = c("Elevation Raster", "Araptus Data"),
          options = layersControlOptions(collapsed = FALSE)) %>%
  leaflet::addMeasure()
```

```
## Assuming "Longitude" and "Latitude" are longitude and latitude, respectively
```

```
## PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.
```

```
## Warning in normalizePath(path.expand(path), winslash, mustWork):
## path[1]="webshot20ac77d959ef.png": The system cannot find the file
## specified
```

```
## Warning in file(con, "rb"): cannot open file 'C:\Users\TLS-
## CE~2\AppData\Local\Temp\RtmpUFTvH7\file20ac159b4361\webshot20ac77d959ef.png':
## No such file or directory
```

```
## Error in file(con, "rb"): cannot open the connection
```







ENVS 602 {data-icon="ion-stats-bars"}
=====================================

Column {data-width=400}
-------------------------------------

### Filters


```r
araptusdata2 <- read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vQNCFb3C1oSia_dN5ISXusrGqwVSFibt0_zkqq7wiNtW_tl1DM-Ch-fIKKmIz_ijXxdrKux6qvvy8yD/pub?output=csv")
sd <- SharedData$new(araptusdata2)
filter_select(
  id = "Site",
  label = "Search by Site Number",
  sharedData = sd,
  group = ~Site
  )
```

<!--html_preserve--><div id="Site" class="form-group crosstalk-input-select crosstalk-input">
<label class="control-label" for="Site">Search by Site Number</label>
<div>
<select multiple></select>
<script type="application/json" data-for="Site">{
  "items": {
    "value": ["111", "12", "153", "157", "159", "160", "161", "162", "163", "166", "168", "171", "173", "175", "177", "32", "48", "51", "58", "64", "73", "75", "77", "84", "88", "89", "9", "93", "999", "Aqu", "Const"],
    "label": ["111", "12", "153", "157", "159", "160", "161", "162", "163", "166", "168", "171", "173", "175", "177", "32", "48", "51", "58", "64", "73", "75", "77", "84", "88", "89", "9", "93", "999", "Aqu", "Const"]
  },
  "map": {
    "111": ["31"],
    "12": ["1"],
    "153": ["2"],
    "157": ["3"],
    "159": ["4"],
    "160": ["5"],
    "161": ["6"],
    "162": ["7"],
    "163": ["8"],
    "166": ["9"],
    "168": ["10"],
    "171": ["11"],
    "173": ["12"],
    "175": ["13"],
    "177": ["14"],
    "32": ["15"],
    "48": ["16"],
    "51": ["17"],
    "58": ["18"],
    "64": ["19"],
    "73": ["20"],
    "75": ["21"],
    "77": ["22"],
    "84": ["23"],
    "88": ["24"],
    "89": ["25"],
    "9": ["26"],
    "93": ["27"],
    "999": ["30"],
    "Aqu": ["28"],
    "Const": ["29"]
  },
  "group": ["SharedDataf0f2818e"]
}</script>
</div>
</div><!--/html_preserve-->

```r
bscols(
  filter_slider(
    id = "Suitability",
    label = "Suitability",
    sharedData = sd,
    column = ~Suitability,
    step = 0.10,
    round = FALSE,
    sep = "",
    ticks = FALSE
  ),
  
  filter_slider(
    id = "Males",
    label = "No. Males",
    sharedData = sd,
    column = ~Males,
    step = 5,
    round = TRUE,
    sep = "",
    ticks = FALSE
  ),
  
  filter_slider(
    id = "Females",
    label = "No. Females",
    sharedData = sd,
    column = ~Females,
    step = 5,
    round = TRUE,
    sep = "",
    ticks = FALSE
  )
)
```

<!--html_preserve--><div class="container-fluid crosstalk-bscols">
<div class="fluid-row">
<div class="col-xs-4">
<div class="form-group crosstalk-input crosstalk-input-slider js-range-slider" id="Suitability">
<label class="control-label" for="Suitability">Suitability</label>
<input data-type="double" data-min="0.0562845" data-max="0.999999" data-from="0.0562845" data-to="0.999999" data-step="0.1" data-grid="false" data-grid-snap="false" data-prettify-separator="" data-keyboard="true" data-keyboard-step="10.5964250840694" data-drag-interval="true" data-data-type="number"/>
<script type="application/json" data-for="Suitability">{
  "values": [0.0563, 0.1111, 0.1455, 0.1627, 0.1744, 0.188, 0.2186, 0.2618, 0.2673, 0.2791, 0.2876, 0.3519, 0.3652, 0.3953, 0.3975, 0.4125, 0.4214, 0.4226, 0.4329, 0.4614, 0.4965, 0.5243, 0.5641, 0.6136, 0.6195, 0.7217, 0.7325, 0.8656, 0.881, 0.9019, 1],
  "keys": ["15", "31", "20", "27", "29", "4", "24", "14", "9", "6", "19", "1", "5", "23", "25", "17", "13", "22", "8", "11", "10", "12", "26", "7", "16", "28", "2", "21", "3", "18", "30"],
  "group": ["SharedDataf0f2818e"]
}</script>
</div>
</div>
<div class="col-xs-4">
<div class="form-group crosstalk-input crosstalk-input-slider js-range-slider" id="Males">
<label class="control-label" for="Males">No. Males</label>
<input data-type="double" data-min="1" data-max="64" data-from="1" data-to="64" data-step="5" data-grid="false" data-grid-snap="false" data-prettify-separator="" data-keyboard="true" data-keyboard-step="7.93650793650794" data-drag-interval="true" data-data-type="number"/>
<script type="application/json" data-for="Males">{
  "values": [1, 1, 9, 11, 11, 11, 12, 13, 13, 16, 16, 18, 18, 18, 19, 19, 19, 21, 22, 23, 24, 25, 26, 28, 35, 38, 40, 48, 49, 57, 64],
  "keys": ["30", "31", "17", "18", "20", "26", "28", "13", "23", "19", "21", "16", "25", "29", "9", "12", "22", "8", "4", "24", "1", "27", "3", "10", "2", "11", "15", "5", "14", "7", "6"],
  "group": ["SharedDataf0f2818e"]
}</script>
</div>
</div>
<div class="col-xs-4">
<div class="form-group crosstalk-input crosstalk-input-slider js-range-slider" id="Females">
<label class="control-label" for="Females">No. Females</label>
<input data-type="double" data-min="5" data-max="999" data-from="5" data-to="999" data-step="5" data-grid="false" data-grid-snap="false" data-prettify-separator="" data-keyboard="true" data-keyboard-step="0.503018108651911" data-drag-interval="true" data-data-type="number"/>
<script type="application/json" data-for="Females">{
  "values": [5, 8, 9, 9, 10, 11, 11, 15, 16, 17, 18, 18, 19, 19, 21, 21, 21, 25, 26, 27, 27, 30, 32, 36, 39, 41, 41, 50, 63, 111, 999],
  "keys": ["20", "13", "18", "28", "26", "17", "29", "4", "22", "23", "21", "24", "19", "25", "1", "8", "27", "10", "9", "15", "16", "3", "12", "5", "11", "2", "7", "14", "6", "31", "30"],
  "group": ["SharedDataf0f2818e"]
}</script>
</div>
</div>
</div>
</div><!--/html_preserve-->

### Data Table


```r
sd %>%
  DT::datatable(
    extensions = c("Buttons",
                   "Scroller"),
    rownames = FALSE,
    style = "bootstrap",
    class = "compact",
    width = "100%",
    options = list(
      dom = "Blrtip",
      deferRender = TRUE,
      scrollY = 10,
      scroller = TRUE,
      columnDefs = list(
        list(
        visible = FALSE)),
      buttons = list(
        "csv", "excel")),
    colnames = c("Site Number" = "Site",
                 "Long" = "Longitude",
                 "Lat" = "Latitude",
                 "No. Males" = "Males",
                 "No. Females" = "Females",
                 "Suitability" = "Suitability")
    )
```

```
## PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.
```

```
## Warning in normalizePath(path.expand(path), winslash, mustWork):
## path[1]="webshot20ac70973e88.png": The system cannot find the file
## specified
```

```
## Warning in file(con, "rb"): cannot open file 'C:\Users\TLS-
## CE~2\AppData\Local\Temp\RtmpUFTvH7\file20ac75e6d0f\webshot20ac70973e88.png':
## No such file or directory
```

```
## Error in file(con, "rb"): cannot open the connection
```


Column {data-width=600}
-------------------------------------

### Interactive Map


```r
sd %>%
  leaflet::leaflet() %>%
  leaflet::addProviderTiles( providers$Esri.WorldImagery, group = "Imagery") %>%
  # leaflet::addMarkers(icon = bluepointicon, label = ~Site, group = "Araptus Data") %>%
  leaflet::addAwesomeMarkers(
    popup = ~paste0(
      "<h2>", araptusdata2$Site, "</h2>",
      "<table style='width:100%'>",
      "<tr>",
      
      "<tr>",
      "<th>No. Males</th>",
      "<th>", araptusdata2$Males, "</th>",
      "</tr>",
      
      "<tr>",
      "<tr>",
      "<th>No. Females</th>",
      "<th>", araptusdata2$Females, "</th>",
      "</tr>",
      
      "<tr>",
      "<tr>",
      "<th>Suitability</th>",
      "<th>", araptusdata2$Suitability, "</th>",
      "</tr>"
    ),
  ) %>%
  leaflet::addRasterImage(rast, opacity = 0.5, group = "Elevation Raster") %>%
  leaflet::addLayersControl(
          overlayGroups = c("Elevation Raster", "Araptus Data"),
          options = layersControlOptions(collapsed = FALSE)) %>%
  leaflet::addMeasure()
```

```
## Assuming "Longitude" and "Latitude" are longitude and latitude, respectively
```

```
## PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.
```

```
## Warning in normalizePath(path.expand(path), winslash, mustWork):
## path[1]="webshot20ac2e8e4015.png": The system cannot find the file
## specified
```

```
## Warning in file(con, "rb"): cannot open file 'C:\Users\TLS-
## CE~2\AppData\Local\Temp\RtmpUFTvH7\file20acea6526c\webshot20ac2e8e4015.png':
## No such file or directory
```

```
## Error in file(con, "rb"): cannot open the connection
```



ENVS 603 {data-icon="ion-stats-bars"}
=====================================

Column {data-width=400}
-------------------------------------

### Filters


```r
araptusdata2 <- read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vQNCFb3C1oSia_dN5ISXusrGqwVSFibt0_zkqq7wiNtW_tl1DM-Ch-fIKKmIz_ijXxdrKux6qvvy8yD/pub?output=csv")
sd <- SharedData$new(araptusdata2)
filter_select(
  id = "Site",
  label = "Search by Site Number",
  sharedData = sd,
  group = ~Site
  )
```

<!--html_preserve--><div id="Site" class="form-group crosstalk-input-select crosstalk-input">
<label class="control-label" for="Site">Search by Site Number</label>
<div>
<select multiple></select>
<script type="application/json" data-for="Site">{
  "items": {
    "value": ["111", "12", "153", "157", "159", "160", "161", "162", "163", "166", "168", "171", "173", "175", "177", "32", "48", "51", "58", "64", "73", "75", "77", "84", "88", "89", "9", "93", "999", "Aqu", "Const"],
    "label": ["111", "12", "153", "157", "159", "160", "161", "162", "163", "166", "168", "171", "173", "175", "177", "32", "48", "51", "58", "64", "73", "75", "77", "84", "88", "89", "9", "93", "999", "Aqu", "Const"]
  },
  "map": {
    "111": ["31"],
    "12": ["1"],
    "153": ["2"],
    "157": ["3"],
    "159": ["4"],
    "160": ["5"],
    "161": ["6"],
    "162": ["7"],
    "163": ["8"],
    "166": ["9"],
    "168": ["10"],
    "171": ["11"],
    "173": ["12"],
    "175": ["13"],
    "177": ["14"],
    "32": ["15"],
    "48": ["16"],
    "51": ["17"],
    "58": ["18"],
    "64": ["19"],
    "73": ["20"],
    "75": ["21"],
    "77": ["22"],
    "84": ["23"],
    "88": ["24"],
    "89": ["25"],
    "9": ["26"],
    "93": ["27"],
    "999": ["30"],
    "Aqu": ["28"],
    "Const": ["29"]
  },
  "group": ["SharedData7ac5fc92"]
}</script>
</div>
</div><!--/html_preserve-->

```r
bscols(
  filter_slider(
    id = "Suitability",
    label = "Suitability",
    sharedData = sd,
    column = ~Suitability,
    step = 0.10,
    round = FALSE,
    sep = "",
    ticks = FALSE
  ),
  
  filter_slider(
    id = "Males",
    label = "No. Males",
    sharedData = sd,
    column = ~Males,
    step = 5,
    round = TRUE,
    sep = "",
    ticks = FALSE
  ),
  
  filter_slider(
    id = "Females",
    label = "No. Females",
    sharedData = sd,
    column = ~Females,
    step = 5,
    round = TRUE,
    sep = "",
    ticks = FALSE
  )
)
```

<!--html_preserve--><div class="container-fluid crosstalk-bscols">
<div class="fluid-row">
<div class="col-xs-4">
<div class="form-group crosstalk-input crosstalk-input-slider js-range-slider" id="Suitability">
<label class="control-label" for="Suitability">Suitability</label>
<input data-type="double" data-min="0.0562845" data-max="0.999999" data-from="0.0562845" data-to="0.999999" data-step="0.1" data-grid="false" data-grid-snap="false" data-prettify-separator="" data-keyboard="true" data-keyboard-step="10.5964250840694" data-drag-interval="true" data-data-type="number"/>
<script type="application/json" data-for="Suitability">{
  "values": [0.0563, 0.1111, 0.1455, 0.1627, 0.1744, 0.188, 0.2186, 0.2618, 0.2673, 0.2791, 0.2876, 0.3519, 0.3652, 0.3953, 0.3975, 0.4125, 0.4214, 0.4226, 0.4329, 0.4614, 0.4965, 0.5243, 0.5641, 0.6136, 0.6195, 0.7217, 0.7325, 0.8656, 0.881, 0.9019, 1],
  "keys": ["15", "31", "20", "27", "29", "4", "24", "14", "9", "6", "19", "1", "5", "23", "25", "17", "13", "22", "8", "11", "10", "12", "26", "7", "16", "28", "2", "21", "3", "18", "30"],
  "group": ["SharedData7ac5fc92"]
}</script>
</div>
</div>
<div class="col-xs-4">
<div class="form-group crosstalk-input crosstalk-input-slider js-range-slider" id="Males">
<label class="control-label" for="Males">No. Males</label>
<input data-type="double" data-min="1" data-max="64" data-from="1" data-to="64" data-step="5" data-grid="false" data-grid-snap="false" data-prettify-separator="" data-keyboard="true" data-keyboard-step="7.93650793650794" data-drag-interval="true" data-data-type="number"/>
<script type="application/json" data-for="Males">{
  "values": [1, 1, 9, 11, 11, 11, 12, 13, 13, 16, 16, 18, 18, 18, 19, 19, 19, 21, 22, 23, 24, 25, 26, 28, 35, 38, 40, 48, 49, 57, 64],
  "keys": ["30", "31", "17", "18", "20", "26", "28", "13", "23", "19", "21", "16", "25", "29", "9", "12", "22", "8", "4", "24", "1", "27", "3", "10", "2", "11", "15", "5", "14", "7", "6"],
  "group": ["SharedData7ac5fc92"]
}</script>
</div>
</div>
<div class="col-xs-4">
<div class="form-group crosstalk-input crosstalk-input-slider js-range-slider" id="Females">
<label class="control-label" for="Females">No. Females</label>
<input data-type="double" data-min="5" data-max="999" data-from="5" data-to="999" data-step="5" data-grid="false" data-grid-snap="false" data-prettify-separator="" data-keyboard="true" data-keyboard-step="0.503018108651911" data-drag-interval="true" data-data-type="number"/>
<script type="application/json" data-for="Females">{
  "values": [5, 8, 9, 9, 10, 11, 11, 15, 16, 17, 18, 18, 19, 19, 21, 21, 21, 25, 26, 27, 27, 30, 32, 36, 39, 41, 41, 50, 63, 111, 999],
  "keys": ["20", "13", "18", "28", "26", "17", "29", "4", "22", "23", "21", "24", "19", "25", "1", "8", "27", "10", "9", "15", "16", "3", "12", "5", "11", "2", "7", "14", "6", "31", "30"],
  "group": ["SharedData7ac5fc92"]
}</script>
</div>
</div>
</div>
</div><!--/html_preserve-->

### Data Table


```r
sd %>%
  DT::datatable(
    extensions = c("Buttons",
                   "Scroller"),
    rownames = FALSE,
    style = "bootstrap",
    class = "compact",
    width = "100%",
    options = list(
      dom = "Blrtip",
      deferRender = TRUE,
      scrollY = 10,
      scroller = TRUE,
      columnDefs = list(
        list(
        visible = FALSE)),
      buttons = list(
        "csv", "excel")),
    colnames = c("Site Number" = "Site",
                 "Long" = "Longitude",
                 "Lat" = "Latitude",
                 "No. Males" = "Males",
                 "No. Females" = "Females",
                 "Suitability" = "Suitability")
    )
```

```
## PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.
```

```
## Warning in normalizePath(path.expand(path), winslash, mustWork):
## path[1]="webshot20ac65f58b8.png": The system cannot find the file specified
```

```
## Warning in file(con, "rb"): cannot open file 'C:\Users\TLS-
## CE~2\AppData\Local\Temp\RtmpUFTvH7\file20ac16ad7c44\webshot20ac65f58b8.png':
## No such file or directory
```

```
## Error in file(con, "rb"): cannot open the connection
```


Column {data-width=600}
-------------------------------------

### Interactive Map


```r
sd %>%
  leaflet::leaflet() %>%
  leaflet::addProviderTiles( providers$Esri.WorldImagery, group = "Imagery") %>%
  # leaflet::addMarkers(icon = bluepointicon, label = ~Site, group = "Araptus Data") %>%
  leaflet::addAwesomeMarkers(
    popup = ~paste0(
      "<h2>", araptusdata2$Site, "</h2>",
      "<table style='width:100%'>",
      "<tr>",
      
      "<tr>",
      "<th>No. Males</th>",
      "<th>", araptusdata2$Males, "</th>",
      "</tr>",
      
      "<tr>",
      "<tr>",
      "<th>No. Females</th>",
      "<th>", araptusdata2$Females, "</th>",
      "</tr>",
      
      "<tr>",
      "<tr>",
      "<th>Suitability</th>",
      "<th>", araptusdata2$Suitability, "</th>",
      "</tr>"
    ),
  ) %>%
  leaflet::addRasterImage(rast, opacity = 0.5, group = "Elevation Raster") %>%
  leaflet::addLayersControl(
          overlayGroups = c("Elevation Raster", "Araptus Data"),
          options = layersControlOptions(collapsed = FALSE)) %>%
  leaflet::addMeasure()
```

```
## Assuming "Longitude" and "Latitude" are longitude and latitude, respectively
```

```
## PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.
```

```
## Warning in normalizePath(path.expand(path), winslash, mustWork):
## path[1]="webshot20acb882605.png": The system cannot find the file specified
```

```
## Warning in file(con, "rb"): cannot open file 'C:\Users\TLS-
## CE~2\AppData\Local\Temp\RtmpUFTvH7\file20ac7fd310ac\webshot20acb882605.png':
## No such file or directory
```

```
## Error in file(con, "rb"): cannot open the connection
```







Information {data-orientation=rows data-icon="fa-info-circle"}
=====================================

CREDITS AND UPDATES
