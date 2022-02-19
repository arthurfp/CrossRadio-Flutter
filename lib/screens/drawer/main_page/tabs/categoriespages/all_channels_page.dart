import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:cross_radio/models/CustomList/WorldTime.dart';
import 'package:cross_radio/utils/dimensions.dart';

double _opacityValue = 1;

class AllChannels extends StatelessWidget {
  const AllChannels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<WorldTime> locations = [
      WorldTime('Urban pop Hits1', "assets/images/demo/bc.png", Icons.lock_open_sharp, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.lock_open_sharp, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.play_circle_outline, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.lock_open_sharp, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.lock_open_sharp, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.play_circle_outline, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.lock_open_sharp, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.lock_open_sharp, "Temperature Sean Paul"),
      WorldTime('Urban pop Hits', "assets/images/demo/bc.png", Icons.lock_open_sharp, "Temperature Sean Paul"),
    ];

    return Scaffold(
        body: Stack(children: [
      GridView.count(
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
          })),
      Miniplayer(
        backgroundColor: Colors.pink,
        minHeight: 70,
        maxHeight: MediaQuery.of(context).size.height,
        builder: (height, percentage) {
          return Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 500),
                      child: Image.asset("assets/images/demo/cd.png"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Opacity(
                          opacity: _opacityValue,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Hello",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(fontSize: Dimensions.defaultTextSize)),
                              Text(
                                "helo2",
                                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Theme.of(context).textTheme.bodyText2!.color!.withOpacity(0.55),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    IconButton(icon: const Icon(Icons.fullscreen), onPressed: () {}),
                    const Padding(
                      padding: EdgeInsets.only(right: 3),
                      child: Icon(Icons.play_circle_outline),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    ]));
  }
}
