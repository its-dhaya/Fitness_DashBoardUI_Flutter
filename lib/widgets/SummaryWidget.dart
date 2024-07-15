import 'package:dashboard/widgets/PieChart.dart';
import 'package:dashboard/widgets/ScheduledWidget.dart';
import 'package:dashboard/widgets/SummaryDetail.dart';
import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Chart(),
              Text('Summary',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10,),
              Padding(padding: 
              EdgeInsets.all(20),
              child: SummaryDetails(),
              
              ),
              SizedBox(height: 30,),
              Scheduled()
            ],
          ),
    );
  }
}