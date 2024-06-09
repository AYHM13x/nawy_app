
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                  drawBelowEverything: true,
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 8,
                    interval: 10000,
                    getTitlesWidget: (value, meta) {
                      switch (value.toInt()) {
                        case 5000:
                          return Text('\$25,000');
                        case 15000:
                          return Text('\$35,000');
                        case 25000:
                          return Text('\$45,000');
                        default:
                          return Text('');
                      }
                    },
                  )),
              rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                showTitles: false,
              )),
              bottomTitles: AxisTitles(
                drawBelowEverything: true,
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 0:
                        return Text('23');
                      case 2:
                        return Text('24');
                      case 4:
                        return Text('25');
                      case 6:
                        return Text('26');
                      case 8:
                        return Text('27');
                      case 10:
                        return Text('28');
                      case 12:
                        return Text('29');
                      case 14:
                        return Text('30');
                      default:
                        return Text('');
                    }
                  },
                ),
              )),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.grey.shade300),
          ),
          minX: 0,
          maxX: 14,
          minY: 0,
          maxY: 30000,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 10000),
                FlSpot(2, 12000),
                FlSpot(4, 15000),
                FlSpot(6, 13000),
                FlSpot(8, 17000),
                FlSpot(10, 20000),
                FlSpot(12, 25000),
                FlSpot(14, 30000),
              ],
              isCurved: true,
              color: Colors.purple,
              barWidth: 2,
              belowBarData: BarAreaData(
                show: true,
                color: Colors.purple.withOpacity(0.1),
              ),
              dotData: FlDotData(
                show: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
