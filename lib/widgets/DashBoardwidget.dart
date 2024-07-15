import 'package:dashboard/widgets/ActivityCard.dart';
import 'package:dashboard/widgets/BarGraphWidget.dart';
import 'package:dashboard/widgets/HeaderWidget.dart';
import 'package:dashboard/widgets/LineChartWidget.dart';
import 'package:dashboard/widgets/SummaryWidget.dart';

import 'package:flutter/material.dart';

class Dashboardwidget extends StatelessWidget {
  const Dashboardwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(height: 18,),
             Headerwidget(),
             SizedBox(height: 18,),
             Activitycard(),
             SizedBox(height: 18,),
             LineChartWidget(),
             SizedBox(height: 18,),
             BarGraphWidget(),
             
          ],
        ),
      ),
    );
  }
}