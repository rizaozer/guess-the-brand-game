import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:guess_the_brand_game/screens/settings.dart';

import 'game.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:
      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          height: height * .01,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 1.5),
              color: Colors.amber),
          width: width,
          height: height * .07,
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Riza',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/points-black.jpg.png',
                    width: 35,
                    height: 35,
                  ),
                  SizedBox(
                    width: width * .01,
                  ),
                  const Text(
                    '100',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
          ]),
        ),
        SizedBox(
          height: height * .2,
        ),
        Image.asset(
          'assets/images/Logo.png',
          width: width,
          height: height * .2,
        ),
        SizedBox(
          height: height * .1,
        ),
        Container(
          width: width * .6,
          height: height * .06,
          child: ElevatedButton(
            onPressed: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GameStart()));
            }),
            child: Text(
              'Play',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.amber,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    shape:
                    MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    )),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: const Center(
                    child: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                  )),
            )
          ],
        )
      ]),
    );
  }
}
