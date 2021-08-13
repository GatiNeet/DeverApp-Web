import 'package:deverapp/service/color_service.dart';
import 'package:deverapp/widget/navBtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBord extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height *0.12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:100,top: 20),
                    child: Text(
                      'DeverApp',
                      style: GoogleFonts.getFont(
                        'Nunito',
                        color: HexColor('ff5e8e'),
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                    height: size.height *0.09,
                    child:Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NavBtn('トップ',),
                          NavBtn('コース'),
                          NavBtn('価格'),
                          NavBtn('お知らせ'),
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
              Container(
                height: size.height *0.8,
                margin: EdgeInsets.only(left:100,top: 30),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              '0から始めるアプリ開発',
                              style: GoogleFonts.getFont(
                                'Nunito',
                                fontWeight: FontWeight.w900,
                                fontSize: 50,
                                color: HexColor('0169b2')
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              '最短でFlutterを学べる',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.getFont(
                                'Nunito',
                                fontWeight: FontWeight.w900,
                                fontSize: 50,
                                color: HexColor('0169b2')
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Text(
                              '月額500円で',
                              style: GoogleFonts.getFont(
                                'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              '効率よくFlutterでのアプリ開発が学べます',
                              style: GoogleFonts.getFont(
                                'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 50,),
                          Container(
                            width: 180,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: HexColor('ff5e8e'),
                            ),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child:Center(
                                child: Text(
                                  'Read More',
                                  style: GoogleFonts.getFont(
                                    'Nunito',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 25,
                                    color: Colors.white,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Container(
                          //     child: Row(
                          //       children: [
                          //         CircleAvatar(),
                          //         CircleAvatar(),
                          //         CircleAvatar(),
                          //       ],
                          //     ),
                          // ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left:80,top:80),
                        child: SvgPicture.asset(
                          'images/home.svg',
                          semanticsLabel: 'shopping',
                          height: size.height*0.7-80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
