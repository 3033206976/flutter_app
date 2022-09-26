import 'package:flutter/material.dart';

class AllScaffold {
  double paddingLeft = 10.0;
  double paddingRight = 10.0;
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  AppBar getAppBar(
      BuildContext context, GlobalKey<ScaffoldState> key, Size screenSize) {
    return AppBar(
      backgroundColor: Color.fromRGBO(200, 182, 255, 1.0),
      elevation: 0.0,
      leading: null,
      titleSpacing: 0.0,
      automaticallyImplyLeading: false,
      title: Container(
        width: screenSize.width,
        height: 56.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: paddingLeft),
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Image.asset(
                  "assets/images/appbar_icon_menu.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
                onTap: () => onClickLeftMenu(key),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: paddingRight),
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Image.asset(
                  "assets/images/appbar_icon_shopping_cart.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
                onTap: onClickRightShoppingCart,
              ),
            )
          ],
        ),
      ),
    );
  }

  void onClickLeftMenu(GlobalKey<ScaffoldState> key) {
    key.currentState?.openDrawer();
  }

  void onClickRightShoppingCart() {}

  Drawer getDrawer(Size screenSize) {
    double drawerWidth = screenSize.width * 0.7;
    return Drawer(
      
      child: Container(
      width: drawerWidth,
      color: Color.fromRGBO(233, 226, 220, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 80.0,
                margin: EdgeInsets.only(top: 56.0),
                child: Image.asset(
                  "assets/images/drawer_default_avatar.png",
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
             Container(
                width: drawerWidth,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  '3033206976@qq.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "ununtuLight"),
                ),
              ),
            Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(0.0),
                    itemCount: 100,
                    itemBuilder: ((context, index) {
                      return Text('123');
                    }),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
