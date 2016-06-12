var fs      = require("fs");
var proj4   = require("proj4");
var parse   = require("csv-parse");
var generate = require("csv-generate");

// Setup EPSG:2965 projection
proj4.defs('EPSG:2965', '+proj=tmerc +lat_0=37.5 +lon_0=-85.66666666666667 +k=0.999966667 +x_0=99999.99989839978 +y_0=249999.9998983998 +ellps=GRS80 +datum=NAD83 +to_meter=0.3048006096012192 +no_defs')

fs.readFile("IMPD_UCR_2014_Data.csv", function(err, rawCSV) {
    var records = parse(rawCSV, function(err, records) {
        if (err) throw err;

        // For each record, convert the EPSG:2965 coords to EPSG:4365 ones (AKA, lat & lon)
        var newRecords = records.map(function(record) {
            var coords = record.slice(8);
            var newCoords = proj4('EPSG:2965', 'EPSG:4326', coords);
            return record.slice(0, 8).concat(newCoords);
        });

        // Turn arrays into CSV string
        var rawCSVOutput = newRecords.map(function(record) {
            return record.join(",");
        }).join("\n");

        // Write out CSV string to file
        fs.writeFile('IMPD_UCR_2014_Data_NEW.csv', rawCSVOutput, function(err) {
            if (err) throw err;
            console.log("Done, mother fuckers!");
        });
    });
});
