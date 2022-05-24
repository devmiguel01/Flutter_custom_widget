import 'package:flutter/material.dart';




class CustomButton extends StatelessWidget {
   CustomButton({Key? key,required this.text,required this.onTap,required this.hasBackground}) : super(key: key);
  GestureTapCallback onTap;
  String text;
  bool  hasBackground=true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        margin: EdgeInsets.all(20),
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: hasBackground?Colors.black:Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10)),

        ),
        child:Center(
          child:  Text(text,
            style: TextStyle(
                color: hasBackground?Colors.white:Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600
            ),

          ),
        ),
      ),
    );
  }
}
