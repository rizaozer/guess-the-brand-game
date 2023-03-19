import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'changeUserName.dart';
import 'feedback.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
          height: height * .1,
        ),
        Image.asset(
          'assets/images/Logo.png',
          width: width,
          height: height * .2,
        ),
        SizedBox(
          height: height * .01,
        ),
        Container(
          width: width * .7,
          height: height * .3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width * .6,
                height: height * .06,
                child: ElevatedButton(
                  onPressed: (() {}),
                  child: Text(
                    'Sound: On',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
              SizedBox(
                width: width * .6,
                height: height * .06,
                child: ElevatedButton(
                  onPressed: (() {}),
                  child: Text(
                    'Language: EN',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
              SizedBox(
                width: width * .6,
                height: height * .06,
                child: ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChaneUsername()));
                  }),
                  child: Text(
                    'Change Username',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
              SizedBox(
                width: width * .6,
                height: height * .06,
                child: ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Sendfeedbackguess()));
                  }),
                  child: Text(
                    'Feedback',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.keyboard_return,
                    size: 25,
                    color: Colors.black,
                  )),
            ),
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
                  onPressed: () {},
                  child: Icon(
                    Icons.logout,
                    size: 25,
                    color: Colors.black,
                  )),
            )
          ],
        )
      ]),
    );
  }
}
