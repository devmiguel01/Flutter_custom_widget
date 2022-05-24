import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
 CustomButton({Key? key,required this.onTap,required this.text,
   this.hasBackground=true

 }) : super(key: key);
  GestureTapCallback onTap;
  String text;
  bool  hasBackground=true;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:widget.onTap ,
      child: Container(
        margin: EdgeInsets.all(20),
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: widget.hasBackground?Colors.black:Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10)),

        ),
        child:Center(
          child:  Text(widget.text,
            style: TextStyle(
                color: widget.hasBackground?Colors.white:Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),

          ),
        ),
      ),
    );
  }
}
