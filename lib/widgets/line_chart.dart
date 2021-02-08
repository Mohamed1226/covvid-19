import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartReport extends StatelessWidget {
  final Map historyData;
final String title ;
  const LineChartReport({Key key,this.title, this.historyData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: LineChart(
       LineChartData(
         gridData: FlGridData(show: false),
         borderData: FlBorderData(show: false),
         titlesData: FlTitlesData(show: false),
         lineBarsData: [LineChartBarData(
           spots: getSpots(),
           isCurved: true,
           dotData: FlDotData(show: false),
           belowBarData: BarAreaData(show: false),
           colors: [Color(0xFF0D8E53)],
         )],
       ),
      ),
    );
  }
  List<FlSpot> getSpots(){

    if(this.historyData ==null){
      return [
        FlSpot(0, .5),
        FlSpot(1, 1.5),
        FlSpot(2, 2.5),
        FlSpot(3, 4),
        FlSpot(4, 5),
        FlSpot(5, 5),
        FlSpot(5, 5),
        FlSpot(5, 5),
        FlSpot(6, 7),
        FlSpot(8, 9),

      ];
    }else{
       List<FlSpot> list =List<FlSpot>();
       var map = Map<String,dynamic>.from(historyData[getName()]);

       int i = 0 ;
       for(var item in map.values){
 int ditem =item ;
         list.add(FlSpot(i.toDouble(), ditem.toDouble()));
         i++;
       }
       return list ;
    }

  }

  String getName(){
    switch(this.title){
      case 'cases':
        return 'cases';
        break ;
      case 'deaths':
        return 'deaths' ;
        break ;
      case 'recovered':
        return 'recovered';
        break ;
       default :
         return ' ';

    }
  }
}

