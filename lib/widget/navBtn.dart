import 'package:deverapp/service/color_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBtn extends StatelessWidget {

  NavBtn(this.name,);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15,left:8,right: 8,bottom: 8),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: 80,
          height: 60,
          decoration: BoxDecoration(
            color: HexColor('0169b2'),
            borderRadius: BorderRadius.circular(40)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // btn,
              Text(
                name,
                style: GoogleFonts.getFont(
                  'Nunito', 
                  color:Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}


