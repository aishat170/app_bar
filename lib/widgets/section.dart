import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    super.key, 
    required this.header, 
    required this.row1, 
    required this.height,
    required this.fontSize,
    this.row2,
});

  final String header;
  final Widget? row1;
  final Widget? row2;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
      width : double.infinity,
      height: height, 
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 37, 39, 39),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                header, 
                style: TextStyle(color: Colors.white, fontSize: fontSize)
                ),
                Icon(Icons.chevron_right_outlined, color: Colors.white),
              ],
            ),
            row1!,
            row2 ?? SizedBox(),
          ],
        ),
    );
  }
}
