import 'package:flutter/material.dart';
import 'package:cross_radio/models/CustomList/WorldTime.dart';
import 'package:cross_radio/utils/dimensions.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<WorldTime> locations = [
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.play_circle_outline, "Temperature Sean Paul"),
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
            })));
  }
}
