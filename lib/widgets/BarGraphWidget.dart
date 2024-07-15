import 'package:dashboard/data/BarGraphData.dart';
import 'package:dashboard/model/graphmodel.dart';
import 'package:dashboard/widgets/CustomCard.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphWidget extends StatelessWidget {
  const BarGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();
    return GridView.builder(
      itemCount: barGraphData.data.length,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      crossAxisSpacing: 15,
      mainAxisSpacing: 12.0,
      childAspectRatio: 5/4
      ) ,
       itemBuilder: (context,index){
        return Customcard(
          padding: EdgeInsets.all(5),
          child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Padding(padding: EdgeInsets.all(8),
          child: Text(
            barGraphData.data[index].label,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          ),
          SizedBox(height: 12,),
          Expanded(child: BarChart(
            BarChartData(
              barGroups: _chartGroups(
                points: barGraphData.data[index].graph,
                color: barGraphData.data[index].color,
              ),
              borderData: FlBorderData(border: Border()),
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      return Padding(padding: EdgeInsets.only(top: 5),
                      child: Text(
                        barGraphData.label[value.toInt()],
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      );
                    },
                  ),
                  
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false,)
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false)
                )
              )
            )
          ))
         ],
          )
          );
       }
       );
  }

  List<BarChartGroupData> _chartGroups({
    required List<GraphModel> points,
    required Color color,
  }) {
    return points.map((point)=>BarChartGroupData(x: point.x.toInt(),barRods: [
      BarChartRodData(toY: 
      point.y,
      width: 12,
      color: color.withOpacity(point.y.toInt()>4?1:0.4),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(3),
        topRight: Radius.circular(3)
      )
      )
    ]))
    .toList();
 }
}