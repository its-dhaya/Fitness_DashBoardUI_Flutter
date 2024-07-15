import 'package:dashboard/constants/constants.dart';
import 'package:dashboard/data/sidemenudata.dart';
import 'package:flutter/material.dart';

class Sidemenu extends StatefulWidget {
  const Sidemenu({super.key});

  @override
  State<Sidemenu> createState() => _SidemenuState();
}

class _SidemenuState extends State<Sidemenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = Sidemenudata();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 80,horizontal: 20),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context,index)=>buildMenu(data,index)),

    );
  }
  
  Widget buildMenu(Sidemenudata data, int index) {
    final isSelected = selectedIndex == index;
       return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration
        (
          borderRadius: BorderRadius.all(Radius.circular(10)
          ),
          color: isSelected ? selectionColor :Colors.transparent,
        ),
         child: InkWell(
          onTap: ()=>setState(() {
            selectedIndex = index;
          }),
           child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 7),
                child: Icon(
                  data.menu[index].icon,
                  color:isSelected? Colors.black: Colors.grey,
                  
                ),
              ),
              Text(
                data.menu[index].title,
                style: TextStyle(
                  fontSize: 16, fontWeight: isSelected?FontWeight.w600:FontWeight.normal, color: isSelected? Colors.black: Colors.grey),
              )
            ],
           ),
         ),
       );
  }
}