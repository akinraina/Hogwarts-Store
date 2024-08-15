import 'package:flutter/material.dart';


class MiniIcons extends StatelessWidget {


final String iconName;
final String iconImage;
  const MiniIcons({super.key, required this.iconImage, required this.iconName});


  @override
  Widget build(BuildContext context) {
    return  Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 59, 21, 21)
                    ),
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(iconImage, height: 30,),
                         Text(iconName,style: const TextStyle(color: Colors.white,fontSize:13),)
                      ],
                     
                    ),
                  ),
                );
  }
}








