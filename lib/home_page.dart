import 'package:flutter/material.dart';
import 'package:guess_the_brand/main.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Guess Brand Game",
          style: TextStyle(fontSize: 18, color: Colors.black),
          textAlign: TextAlign.center,
        )),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.orange.shade400,
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow.shade800,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox(
              width: 200,
              height: 75,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.yellow.shade700)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                },
                child: const Text(
                  "Start Game",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                ),
              ),
            )),
      ),
    );
  }
}
