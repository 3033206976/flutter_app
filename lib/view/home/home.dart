import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/app/app_initialize.dart';
import 'package:flutter_app/view/appbar/appbar.dart';
import 'package:get_it/get_it.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: _key,
        appBar: getIt<AllScaffold>().getAppBar(context, _key, screenSize),
        body: getBody(screenSize),
        drawer: getIt<AllScaffold>().getDrawer(screenSize));
  }

  Widget getBody(Size screenSize) {
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              width: screenSize.width,
              height: 40.0,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/home_icon_loacation.png",
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: screenSize.width - 60.0,
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      '404 Landscape Avenue, Shuangcheng District, Harbin City, Heilongjiang Province, China',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: "ununtuLight",
                        fontSize: 15.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            onTap: setLocationOnClick,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: TextField(
              readOnly: true,
              cursorColor: Color.fromRGBO(200, 182, 255, 1.0),
              style: TextStyle(
                fontSize: 18.0,
              ),
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    child: Image(
                      width: 25.0,
                      height: 25.0,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/home_icon_search.png",
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                suffixIcon: Container(
                  width: 80.0,
                  margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 5.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(200, 182, 255, 1.0),
                  borderRadius: BorderRadius.circular(360.0)
                  ),
                  child: Text(
                    'Search',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ununtuLight"
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 15.0),
                fillColor: Color.fromRGBO(227, 226, 226, 1.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(360.0),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(200, 182, 255, 1.0),
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(360.0),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(200, 182, 226, 1.0),
                    width: 1.0,
                  ),
                ),
              ),
              onTap: setInputOnClick,
            ),
          ),
          Container(
            width: screenSize.width,
            height: 200.0,
            margin: EdgeInsets.only(top: 10.0),
            color: Colors.black,
          )
        ],
      ),
    );
  }

  void setInputOnClick() {
    print("已经点击了search");
  }

  void setLocationOnClick() {
    print("已经点击了location");
  }
}
