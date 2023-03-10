import 'package:dv_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                bottom: 80,
              ),
              child: SizedBox(
                child: Image.asset(
                  "assets/images/Logo.png",
                  alignment: Alignment.centerLeft,
                  height: 35,
                ),
              ),
            ),
            const MenuList(
              image: 'assets/icons/home-page-white 1.png',
              title: 'Home',
            ),
            const MenuList(
              image: 'assets/icons/about-us-white 1.png',
              title: 'About',
            ),
            const MenuList(
              image: 'assets/icons/out-tem-white 1.png',
              title: 'Team',
            ),
            const MenuList(
              image: 'assets/icons/reviews-white 1.png',
              title: 'Newsletter',
            ),
          ],
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  const MenuList({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
      ),
      child: ListTile(
        leading: Image.asset(
          image,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
