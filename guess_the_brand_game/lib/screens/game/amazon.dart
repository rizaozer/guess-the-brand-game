import 'package:flutter/material.dart';

class GameStart extends StatefulWidget {
  const GameStart({super.key});

  @override
  State<GameStart> createState() => _GameStartState();
}

class _GameStartState extends State<GameStart> {
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
          height: height * .05,
        ),
        const Text(
          'LOGO',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        SizedBox(
          height: height * .01,
        ),
        Container(
          width: width * .8,
          height: height * .3,
          child: Image.asset(
            'assets/images/Amazon.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: width * .7,
          height: height * .1,
          child: TextFormField(
            decoration: InputDecoration(),
          ),
        ),
        Container(
            width: width * .8,
            height: height * .2,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('K'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('A'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('T'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('B'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('M'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('O'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('N'))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('Z'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('L'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('J'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('F'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('K'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('K'))),
                    SizedBox(
                        width: width * .1,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.amber)),
                            onPressed: () {},
                            child: Text('K'))),
                  ],
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: width * .4,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              )
            ],
          ),
        )
      ]),
    );
  }
}
