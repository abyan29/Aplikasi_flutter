import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTab;
  final Color color;
  final double width;
  final double height;
  // final Color textColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTab,
    this.color = Colors.blue,
    this.width = 350,
    this.height = 50,
    // this.textColor = Colors.white,
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: InkWell(
        onTap: onTab,
        splashColor: color,  
        borderRadius: BorderRadius.circular(30),  
        child: Ink(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              ),
            ),
          ),  
      ),
    );
  }
}