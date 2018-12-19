#!/usr/bin/env node

var express = require('express');
var app = express();
app.use(express.static(__dirname));

// NodeJS SPI Dump for MCP3008 - Created by Mikael Levén
var rpio = require('rpio');

app.get('/', function (req, res) {
    res.sendFile('/home/daniel/pages/dashboard.html');
});

app.get('/channels', function (req, res) {
    var channel_values = read_channels();
    res.send(JSON.stringify(channel_values));
 });

app.get('/channel', function (req, res){
    var channel = req.query.channel;
    var channel_values = read_channels();
    var point = channel_values[channel];
    // value of 1st sensor - to be stored in db in device table
    var value = (Math.sqrt(331687756 - 381250 * point) - 16)/1525;
    res.status(200).json({value: value});
 });

app.get('/solve', function (req, res) {
    var point = req.query.point;
    var answer = (Math.sqrt(331687756 - 381250 * point) - 16)/1525;
    res.send(answer.toString());
});

app.get('/video', function (req, res) {
    var dir = '/var/lib/motion'
    var fs = require('fs'),
    path = require('path'),
    _ = require('underscore');

    var files = fs.readdirSync(dir);

    // use underscore for max()
    //_.max(files, function (f) {
    //    var fullpath = path.join(dir, f);

        // ctime = creation time is used
        // replace with mtime for modification time
    res.json({src: path.join(dir, files[files.length - 1])});
    //});
});

app.get('/temp', function (req, res){
    try {
        var file = require('fs');
        //var pattern = new RegExp("(?<=t=)[0-9]*");
        var pattern = new RegExp("(t=)[0-9]*");

        file.readFile('/sys/bus/w1/devices/28-000004b0191d/w1_slave', function(err, buffer){
            if (err){
                console.error(err);
            }

            if (buffer)
            {
                // get raw strings from file
                var rawData = buffer.toString('ascii');

                // check for a match
                if (rawData.match(pattern)){
                    // match the temp portion of the string
                    var tempString = rawData.match(pattern);
                    tempString = tempString.toString();
                    // strip the 't=' portion
                    var len = tempString.length;
                    var rawTemp = tempString.substring(2, len);
                    // get C temp
                    var tempC = parseFloat(rawTemp) / 1000.0;
                    // convert to F temp
                    var tempF = (tempC * 9 / 5) + 32;
                    // round to a single decimal
                    tempF = Math.round(tempF * 10) /10;

                    //console.log(tempF);
                    
                    res.status(200).json({value: tempF});
                }
            }else {res.status(200).json({value: 0});}
            
        });
    }catch(err){console.log(err);}
});

 const port = 80;

 var server = app.listen(port, function () {
    var host = server.address().address
    var port = server.address().port
    
    console.log("Eden API listening at http://%s:%s", host, port)
 });

 rpio.spiBegin();


function read_channels(){
    
    //rpio.spiChipSelect(0);                  /* Use CE0 (slave 0) */
    //rpio.spiSetCSPolarity(0, rpio.LOW);    /* Commonly chip enable (CE) pins are active low, and this is the default. */
    //rpio.spiSetClockDivider(256);           /* MCP3008 max is ~1MHz, 256 == 0.98MHz */
    //rpio.spiSetDataMode(0);

    var moisture = new Array(8);

    for (var channel = 0; channel <= 7; channel++) {
        // Prepare TX buffer [trigger byte = 0x01] [channel 0 = 0x80 (128)] [placeholder = 0x01]
        var sendBuffer = new Buffer([0x01, (8 + channel << 4), 0x01]); 
        var recieveBuffer =  new Buffer(3);
        rpio.spiTransfer(sendBuffer, recieveBuffer, sendBuffer.length); // Send TX buffer and recieve RX buffer

        // Extract value from output buffer. Ignore first byte. 
        var junk = recieveBuffer[0],
            MSB = recieveBuffer[1],
            LSB = recieveBuffer[2];

        // Ignore first six bits of MSB, bit shift MSB 8 positions and 
        // finally combine LSB and MSB to get a full 10 bit value
        var value = ((MSB & 3) << 8) + LSB; 

        moisture[channel] = value;
    }

    return moisture;
}

process.on('SIGINT', function () {
    rpio.spiEnd();
    console.log('\nShutting down, performing GPIO cleanup');
    process.exit();
});