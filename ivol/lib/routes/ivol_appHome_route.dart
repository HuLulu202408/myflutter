import 'package:flutter/material.dart';
import 'package:ivol/utils/brand.dart';
import 'ivol_pageHome_route.dart';
import 'ivol_page_discover_route.dart';
import 'ivol_msg_page.dart';
import 'ivol_profile_page.dart';

class IVOAppHomeRoute extends StatefulWidget {
  const IVOAppHomeRoute({super.key});
  @override
  State<StatefulWidget> createState() => _IVOAppHomeRouteState();
}

class _IVOAppHomeRouteState extends State<IVOAppHomeRoute> {
  int _currentIndex = 0;
  final List<Map> _tabChilds = [
    {"title": "Home", "tabIcon": "home_tab", "tab_selIcon": "home_tab_sel", "child": IVOLPageHomeRoute()},
    {"title": "Discover", "tabIcon": "discover_tab", "tab_selIcon": "discover_tab_sel", "child": IVODiscoverPage()},
    {"title": "Message Center", "tabIcon": "msg_tab", "tab_selIcon": "msg_tab_sel", "child": IVOMsgPage()},
    {"title": "Profile Center", "tabIcon": "profile_tab", "tab_selIcon": "profile_tab_sel", "child": IVOProfilePage()},
  ];
  @override
  void initState() {
    super.initState();
  }

  void _didSelectItemAtIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> _childWidgets() {
    return List.generate(_tabChilds.length, (index) {
      Map map = _tabChilds[index];
      Widget route = map["child"];

      return IVOLBrandUtil.brandScaffold(
        map["title"],
        route,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return _creatMainScaffold();
  }

  //background creat
  Widget _creatBackGroundWidget() {
    return Image.asset("assets/images/background.png", fit: BoxFit.fill);
  }

  Widget _creatMainScaffold() {
    return Scaffold(
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          boxShadow: List.filled(1, BoxShadow(
            color: Color.from(alpha: 0.2, red: 0, green: 0, blue: 0),
            offset: Offset(0, -2),
            blurStyle: BlurStyle.normal,
            blurRadius: 2
          )),
          // color: Color.from(alpha: 1, red: 222.0/255.0, green: 235/255.0 , blue: 1),
          borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
        ),
        child: BottomNavigationBar
        (
        backgroundColor: Color.from(alpha: 1, red: 222.0/255.0, green: 235/255.0 , blue: 1),
        currentIndex: _currentIndex,
        fixedColor: null,
        iconSize: 30.0,
        type: BottomNavigationBarType.fixed,
        items:List.generate(_tabChilds.length, (index){
          Map map = _tabChilds[index];
          String iconName = map["tabIcon"];
          String selIconName = map["tab_selIcon"];
          return BottomNavigationBarItem(icon: Image.asset("assets/images/$iconName.png"),activeIcon: Image.asset("assets/images/$selIconName.png"),label: "");
        }),
        onTap: _didSelectItemAtIndex,
      ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          //background
          _creatBackGroundWidget(),
          // ..._childWidgets(),
          _childWidgets()[_currentIndex],
        ],
      ),
    );
  }
}
