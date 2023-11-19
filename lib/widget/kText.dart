import 'package:flutter/material.dart';

class KText extends StatelessWidget {
   KText({
    super.key,
    this.data,
     this.fontsize =0,
     this.FontWeight =0,
     this.color,
     this.maxLines=1,
  });
final data;
final double fontsize;
final FontWeight;
final color;
final maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: fontsize==0?20:fontsize,
        fontWeight: FontWeight==0?null:FontWeight,
        // color: Colors.black,
        color: color,
      ),
      
      
    );
  }
}