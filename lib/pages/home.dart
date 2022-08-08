import 'package:dd_js_util/common/circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:yoloshow/common/string_ext.dart';
import 'package:yoloshow/pages/index/index.dart';
import 'package:yoloshow/pages/message/index.dart';
import 'package:yoloshow/pages/notice/index.dart';
import 'package:yoloshow/pages/user/index.dart';
import 'package:yoloshow/pages/write/index.dart';

final homeIndex = StateProvider((ref) => 0);

///首页
class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends ConsumerState {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.black,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      onItemSelected: (i) {
        ref.read(homeIndex.notifier).state = i;
      },
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [const IndexPage(), const MessagePage(), const WritePostPage(), const NoticePage(), const UserPage()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: (ref.watch(homeIndex) == 0 ? 'home' : 'home_un').svgAssetsPath.svg,
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: 'nitice${ref.watch(homeIndex) == 1 ? '_un' : ''}'.svgAssetsPath.svg,
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white54,
      ),
      PersistentBottomNavBarItem(
          contentPadding: 0,
          icon: Container(
            width: 44,
            height: 44,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient:
                    const LinearGradient(colors: [Color(0xffEC2A83), Color(0xff871CF4)], begin: Alignment.centerLeft, end: Alignment.centerRight)),
            child: 'plus'.svgAssetsPath.svgWithColor(Colors.white).sizeBox(12, 12),
          ).constraintBox((size, child) {
            print(size);
            return child;
          }),
          activeColorPrimary: Colors.transparent),
      PersistentBottomNavBarItem(
        icon: 'msg'.svgAssetsPath.svg,
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white54,
      ),
      PersistentBottomNavBarItem(
        icon: ref.watch(homeIndex) == 4 ? Container(
          child: Image.network('https://img.itbug.shop/public%2F2022-08-0710%3A36%3A01%2FTL1cWY.jpg').circleWidget,
        ) : 'u'.svgAssetsPath.svg,
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white54,
      ),
    ];
  }
}
