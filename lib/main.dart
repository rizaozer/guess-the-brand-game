import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:guess_the_brand/home_page.dart';
import 'package:guess_the_brand/image_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const home_page(),
        debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  List<String> logoNames = [
    'McDonalds',
    'KFC',
    'Starbucks',
    'Mercedes',
    'Suzuki',
    'Maserati',
    'Subaru',
    'Dominos',
    'Michelin',
    'Shell',
    'Pringles',
    'Yamaha',
    'Amazon',
    'Playstation',
    'Infinity',
    'Fiat',
    'Internet Explorer',
    'Ikea',
    'Lacoste',
    'Chanel',
    'Pepsi',
  ];

  String currentLogoName = '';

  double scrollPercent = 0.0;
  late Offset startDrag;
  late double startDragPercentScroll;
  late double finishScrollStart;
  late double finishScrollEnd;
  late AnimationController finishScrollController;

  @override
  initState() {
    super.initState();

    finishScrollController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    )
    ..addListener(() {
      setState(() {
        scrollPercent = lerpDouble(finishScrollStart, finishScrollEnd, finishScrollController.value)!;
      });
    });
  }

  @override
  dispose() {
    finishScrollController.dispose();
    super.dispose();
  }

  List<Widget> buildCards() {
    List<Widget> cardsList = [];
    for(int i = 0; i < logoNames.length; i++) {
      cardsList.add(buildCard(i, scrollPercent));
    }
    return cardsList;
  }

  Widget buildCard(int cardIndex, double scrollPercent) {
    final cardScrollPercent = scrollPercent / (1 / logoNames.length);

    return FractionalTranslation(
        translation: Offset(cardIndex - cardScrollPercent, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ImageCard(imageName: logoNames[cardIndex],),
        ),
    );
  }

  void onHorizontalDragStart(DragStartDetails details) {
    startDrag = details.globalPosition;
    startDragPercentScroll = scrollPercent;
  }

  void onHorizontalDragUpdate(DragUpdateDetails details) {
    final currentDrag = details.globalPosition;
    final dragDistance = currentDrag.dx - startDrag.dx;
    final singleCardDragPercent = dragDistance / MediaQuery.of(context).size.width;

    setState(() {
      scrollPercent = (startDragPercentScroll + (-singleCardDragPercent
          / logoNames.length)).clamp(0.0, 1.0 - (1 - logoNames.length));
    });
  }

  void onHorizontalDragEnd(DragEndDetails details) {
    finishScrollStart = scrollPercent;
    finishScrollEnd = (scrollPercent * logoNames.length).round() / logoNames.length;
    finishScrollController.forward(from: 0.0);

    setState(() {
      startDragPercentScroll = 0;
      currentLogoName = '';
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        title: const Text('Guess the Brand'),
      ),
      backgroundColor: Colors.orange.shade400,
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onHorizontalDragStart: onHorizontalDragStart,
              onHorizontalDragUpdate: onHorizontalDragUpdate,
              onHorizontalDragEnd: onHorizontalDragEnd,
              behavior: HitTestBehavior.translucent,
              child: Stack(
                children: buildCards(),
              ),
            ),
            SizedBox(
              height: 55,
              width: 200,

              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    currentLogoName = logoNames[(((scrollPercent / 0.047))).round()];
                  });
                },

                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(width: 2, color: Colors.white),
                ),
                child: const Text(
                  'Show Answer',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
              Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.grey
                ),
                child: Center(
                  child: Text(
                      currentLogoName,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
