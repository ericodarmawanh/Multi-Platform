import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihanlayout/presentation/widgets/menu_thumbnail.dart';
import 'package:latihanlayout/services/category_services.dart';
import 'package:latihanlayout/services/menu_services.dart';

import '../widgets/category_thumbnail.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 450,
              color: Colors.green.shade900,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/pp.jpeg')),
                                  shape: BoxShape.circle),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome',
                                  style: GoogleFonts.poppins(
                                      color: Colors.yellow.shade600,
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Jennie Kim',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Colors.white24, shape: BoxShape.circle),
                          child: const Center(
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: GoogleFonts.poppins(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Find your cofee',
                        hintStyle: GoogleFonts.poppins(color: Colors.white),
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          3,
                          (index) => Container(
                                margin: EdgeInsets.fromLTRB(
                                    index == 0 ? 20 : 0, 0, 20, 0),
                                width: 250,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                              )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Text(
                      'Category',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: CategoryServices()
                          .getCategories()
                          .map((e) => CategoryThumbnail(
                                category: e,
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                    const SizedBox(
                      width: 100,
                      child: Divider(
                        color: Colors.grey,
                        thickness: 3,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Menu',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        Text(
                          'See more',
                          style: GoogleFonts.poppins(
                            color: Colors.green.shade900,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ] +
                  MenuServices()
                      .getMenus()
                      .map((e) => MenuThumbnail(menu: e))
                      .toList() +
                  [
                    const SizedBox(
                      height: 20,
                    )
                  ],
            ),
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(10, size.height - 20, 30, size.height - 20);
    path.lineTo(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
        size.width - 10, size.height - 20, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
