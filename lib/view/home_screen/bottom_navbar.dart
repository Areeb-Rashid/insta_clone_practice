import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_clone/view/home_screen/home_screen.dart';
import 'package:insta_clone/view/signup_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({super.key});
  final PersistentTabController _controller = PersistentTabController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(context),
        backgroundColor: context.isDarkMode ? Colors.black : Colors.white,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style5
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      SignUpScreen(),
      Container(),
      Container(),
      Container(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home,size: 32,),
        title: ("Home"),
        activeColorPrimary: context.isDarkMode ? Colors.white : Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ), PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.search,size: 32,),
        title: ("Search"),
        activeColorPrimary: context.isDarkMode ? Colors.white : Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ), PersistentBottomNavBarItem(
        icon: Icon(Icons.add_box_outlined,size: 32,),
        title: ("Story"),
        activeColorPrimary: context.isDarkMode ? Colors.white : Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ), PersistentBottomNavBarItem(
        icon: Icon(Icons.video_collection_outlined,size: 32,),
        title: ("Reels"),
        activeColorPrimary: context.isDarkMode ? Colors.white : Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person_crop_circle,size: 32,),
        title: ("Profile"),
        activeColorPrimary: context.isDarkMode ? Colors.white : Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
