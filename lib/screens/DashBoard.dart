import 'package:dashboard/widgets/DashBoardwidget.dart';
import 'package:dashboard/widgets/SummaryWidget.dart';
import 'package:dashboard/widgets/sidemenu.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child:Sidemenu()
              ),
              Expanded(
                flex: 7,
                child: Dashboardwidget(),
              ),
              Expanded(
                flex: 3,
                child: SummaryWidget(),
              ),
          ],
        ),),
    );
  }
}