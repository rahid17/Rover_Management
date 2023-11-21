import 'package:flutter/material.dart';

class KAppDashbordIcon extends StatelessWidget {
  const KAppDashbordIcon({
    super.key,  
    required this.Icons,
    required this.data,
    this.onTap,
  });
  final Icons;
  final data;
  final onTap;
  

  @override
  
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(height: 10,),
            Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), 
            color: Colors.white),
            child: 
            Icon(
              Icons,
              size: 40,
            ),
            ),
            SizedBox(height: 5,),
            Text(
              data, 
              maxLines: 2, 
              style: TextStyle(
                fontSize: 14, 
                fontWeight: FontWeight.bold
              ),
            )
        ],
      ),
    );
  }
}
