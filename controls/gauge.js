function gaugeChart(DivId, temp) {

  //console.log("Chart got data value: " + temp);

    var data = google.visualization.arrayToDataTable([
      ['Label', 'Value'],
      ['Dryness', temp]
    ]);

    var options = {
      redColor: '#ff0000',
      redFrom: 0, redTo: 3.5,
      greenFrom: 3.5, greenTo: 7,
      yellowColor: '#0000ff',
      yellowFrom: 7, yellowTo: 10,
      minorTicks: 5,
      max: 10,
      min: 0,
    };

    var chart = new google.visualization.Gauge(document.getElementById(DivId));

    chart.draw(data, options);
}