google.charts.load('current', {packages: ['corechart', 'line']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

      var data = new google.visualization.DataTable();
      data.addColumn('string', 'X');
      data.addColumn('number', 'Orders');

      // var dataView = document.getElementById('chart_time');
      let dataView = document.querySelector('#chart_time');
      let dataGoogle = dataView.getAttribute('data-google')

      data.addRows(JSON.parse(dataGoogle));

      var options = {
        hAxis: {
          // title: 'Time'
        },
        vAxis: {
          // title: 'Popularity'
        }
      };

      var chart = new google.visualization.LineChart(document.getElementById('chart_time'));

      chart.draw(data, options);
    }
