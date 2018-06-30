# Msdf_BatSelector
This repository contains a Win64 binary of MSDFGEN who encode a SVG to a MSDF Image, and a bat to an easily manually selection.

For more info about MSDFGEN go to this repository https://github.com/cheke/msdfgen

The options on the bat are secuantilly, Width -> Height of the result MSDF Image.
Type Range defines the "-pxrange" parameter, Described as: 
-range <range>, -pxrange <range> – specifies the width of the range around the shape between the minimum 
and maximum representable signed distance in shape units or distance field pixels, respectivelly.
And on the last point an asset selector to get the SVG and process it.
On the bat I disabled the possibily of do a multiselection, but its modificable with a single boolean.
