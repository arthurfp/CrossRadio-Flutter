import 'package:flutter/material.dart';
import 'package:cross_radio/models/CustomList/WorldTime.dart';
import 'package:cross_radio/utils/dimensions.dart';

import 'dialog_pages/premium_dialog.dart';

class Premium extends StatefulWidget {
  const Premium({Key? key}) : super(key: key);

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  Future sleep() {
    return Future.delayed(const Duration(seconds: 1), () => showAlertDialog());
  }

  @override
  Widget build(BuildContext context) {
    List<WorldTime> locations = [
      WorldTime('Premium Beast111', "assets/images/demo/bc.png", Icons.play_circle_outline, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.lock_open_sharp, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.play_circle_outline, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.play_circle_outline, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.play_circle_outline, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.play_circle_outline, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.play_circle_outline, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.play_circle_outline, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.play_circle_outline, "Temperature Sean Paul"),
    ];

    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(locations.length, (index) {
            return GridTile(
                child: Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: InkWell(
                    onTap: showAlertDialog,
                    child: Image.asset(
                      locations[index].flag,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                footer: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text(
                        locations[index].title,
                        style: TextStyle(
                          fontSize: Dimensions.largeTextSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                            Flexible(
                              flex: 5,
                              child: Text(
                                locations[index].body,
                                style: TextStyle(
                                  fontSize: Dimensions.smallTextSize,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Icon(
                                locations[index].url,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ])));
          })),
    );
  }

  showAlertDialog() {
    PageController controller = PageController();
    List<Widget> _list = <Widget>[
      const Center(child: DialogPag1()),
      const Center(child: DialogPag1()),
      const Center(child: DialogPag1()),
    ];

    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      content: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
            width: MediaQuery.of(context).size.height * 0.8,
            height: MediaQuery.of(context).size.width * 0.7,
            child: Container(
              height: MediaQuery.of(context).size.width * 0.99,
              width: MediaQuery.of(context).size.height * 0.99,
              alignment: Alignment.center,
              child: PageView(
                children: _list,
                scrollDirection: Axis.horizontal,
                // reverse: true,
                // physics: BouncingScrollPhysics(),
                controller: controller,
                onPageChanged: (int num) {
                  setState(() {});
                },
              ),
            )),
      ),
      actions: const [],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (context) {
        return alert;
      },
    );
  }
}
