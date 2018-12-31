exports.getChannel = (rpio, channel) => {
    var channel_values = read_channels(rpio);
    var point = channel_values[channel];
    var value = 0;
    // value of 1st sensor - to be stored in db in device table
    if (channel == 0 || channel == 1) {
        //value = (Math.sqrt(331687756 - 381250 * point) - 16)/1525;
        value = (-10/313) * (point - 621);
    }
    else if (channel == 2) {
        value = (-5 / 224) * (point - 862);
    }
    else if (channel == 3) {
        value = (-10 / 273) * (point - 602);
    }
    return value;
};

function read_channels(rpio){
    
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

exports.getTemp = () => {
    var file = require('fs');
    //var pattern = new RegExp("(?<=t=)[0-9]*");
    var pattern = new RegExp("(t=)[0-9]*");

    var tempF = 0;

    return file.readFile('/sys/bus/w1/devices/28-000004b0191d/w1_slave', function(err, buffer){
        if (err){
            console.error(err);
            return 0;
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
                tempF = (tempC * 9 / 5) + 32;
                // round to a single decimal
                tempF = Math.round(tempF * 10) /10;

                return tempF;
            }
        }
        
    });
    
};