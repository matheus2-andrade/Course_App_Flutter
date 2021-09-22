import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/course_content.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF5F4EF),
        image: DecorationImage(
          image: AssetImage("assets/images/ux_big.png"),
          alignment: Alignment.topRight,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/icons/arrow-left.svg"),
                    SvgPicture.asset("assets/icons/more-vertical.svg"),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ClipPath(
                  clipper: BestSellerClipper(),
                  child: Container(
                    color: kBestSellerColor,
                    padding:
                        EdgeInsets.only(left: 10, top: 5, right: 20, bottom: 5),
                    child: Text(
                      "Mais Vendidos".toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Design Thinking",
                  style: kHeadingextStyle,
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/person.svg"),
                    SizedBox(
                      width: 5,
                    ),
                    Text("18K"),
                    SvgPicture.asset("assets/icons/star.svg"),
                    SizedBox(
                      width: 5,
                    ),
                    Text("4.8")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "\$50",
                      style: kHeadingextStyle.copyWith(fontSize: 32),
                    ),
                    TextSpan(
                      text: "\$70",
                      style: TextStyle(
                          color: kTextColor.withOpacity(.5),
                          decoration: TextDecoration.lineThrough),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contéudo do curso",
                          style: kTitleTextStyle,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CourseContent(
                          number: "01",
                          duration: 5.35,
                          title: "Bem vindo ao curso",
                          isDone: true,
                        ),
                        CourseContent(
                          number: "02",
                          duration: 19.4,
                          title: "Design Thinking - Introdução",
                          isDone: true,
                        ),
                        CourseContent(
                          number: "03",
                          duration: 15.35,
                          title: "Design Thinking - Processo",
                          isDone: true,
                        ),
                        CourseContent(
                          number: "04",
                          duration: 5.35,
                          title: "Perspectiva do consumidor",
                          isDone: true,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 50,
                            color: kTextColor.withOpacity(.1),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(14),
                            height: 56,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFEDEE),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: SvgPicture.asset(
                                "assets/icons/shopping-bag.svg"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: kBlueColor,
                              ),
                              child: Text(
                                "Compre Agora",
                                style: kSubtitleTextSyule.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
