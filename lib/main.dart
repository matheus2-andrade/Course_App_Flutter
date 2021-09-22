import 'package:course_app/constants.dart';
import 'package:course_app/details_screen.dart';
import 'package:course_app/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course App',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/menu.svg"),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/user.jpg"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Olá Matheus,",
              style: kHeadingextStyle,
            ),
            Text(
              "Escolha um curso que goste",
              style: kSubheadingextStyle,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/search.svg"),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Pesquise qualquer coisa",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFA0A5BD),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categorias",
                  style: kTitleTextStyle,
                ),
                Text(
                  "Veja todos",
                  style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: StaggeredGridView.countBuilder(
                    padding: EdgeInsets.all(0),
                    crossAxisCount: 2,
                    itemCount: categories.length,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(20),
                        height: index.isEven ? 200 : 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage(categories[index].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categories[index].name,
                              style: kTitleTextStyle,
                            ),
                            Text(
                              "${categories[index].numOfCourses} Cursos",
                              style:
                                  TextStyle(color: kTextColor.withOpacity(.5)),
                            )
                          ],
                        ),
                      );
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1)))
          ],
        ),
      ),
    );
  }
}
