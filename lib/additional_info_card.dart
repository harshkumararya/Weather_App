import 'package:flutter/material.dart';

class AdditionalInfoCard extends StatelessWidget{
  final IconData icon;
  final String label;
  final String val;
  const AdditionalInfoCard({
    super.key,
    required this.icon,
    required this.label,
    required this.val,
    });
  @override
  Widget build(BuildContext context){
    return  Container(
        width: 100,
        padding: const EdgeInsets.all(8),
        child: Column(
          
          children: [  
            Icon(icon,size: 32,),
            SizedBox(height: 8,),
            Text(label,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
            SizedBox(height: 8,),
            Text(val,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
        
          ],
        ),
      );

    
  }
}