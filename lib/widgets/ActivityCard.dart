import 'package:dashboard/data/HealthDetail.dart';
import 'package:dashboard/widgets/CustomCard.dart';
import 'package:flutter/material.dart';

class Activitycard extends StatelessWidget {
  const Activitycard({super.key});

  @override
  Widget build(BuildContext context) {
    final healtDetails = Healthdetail();
    return GridView.builder(
      itemCount: healtDetails.healthData.length,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ) , 
      itemBuilder:(context,index)=>Customcard(child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(healtDetails.healthData[index].icon,
            width: 30,
            height: 30,),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 4),
              child: Text(healtDetails.healthData[index].value,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w600
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 4),
              child: Text(healtDetails.healthData[index].title,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w600
              ),
              ),
            ),
          ],
        ),
      )) );
  }
}