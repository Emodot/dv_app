import 'package:dv_app/constants.dart';
import 'package:dv_app/screens/about/about_screen.dart';
import 'package:dv_app/screens/welcome/welcome_screen.dart';
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
            MenuList(
              image: 'assets/icons/HouseLine.svg',
              title: 'Home',
              press: () => {Navigator.of(context).pop()},
            ),
            MenuList(
              image: 'assets/icons/Bank.svg',
              title: 'About',
              press: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutScreen(),
                  ),
                );
              },
            ),
            MenuList(
              image: 'assets/icons/Users.svg',
              title: 'Team',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                );
              },
            ),
            MenuList(
              image: 'assets/icons/Bookmarks.svg',
              title: 'Newsletter',
              press: () {},
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
    required this.press,
  });

  final String image, title;
  final VoidCallback press;

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
        leading: SvgPicture.asset(
          image,
          color: Colors.white,
          width: 20,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        onTap: press,
      ),
    );
  }
}
