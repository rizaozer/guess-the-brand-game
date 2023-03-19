import 'package:flutter/material.dart';

class Sendfeedbackguess extends StatefulWidget {
  const Sendfeedbackguess({super.key});

  @override
  State<Sendfeedbackguess> createState() => _SendfeedbackguessState();
}

class _SendfeedbackguessState extends State<Sendfeedbackguess> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: height * .04,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black, width: 1.5),
                    color: Colors.amber),
                width: width,
                height: height * .07,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Riza',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
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
                  height: height * .5,
                  child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Full Name',
                                labelStyle: TextStyle(color: Colors.amber),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                    BorderSide(color: Colors.amber, width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                    BorderSide(color: Colors.grey, width: 1))),
                          ),
                          SizedBox(
                            height: height * .03,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.amber),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                    BorderSide(color: Colors.amber, width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                    BorderSide(color: Colors.grey, width: 1))),
                          ),
                          SizedBox(
                            height: height * .03,
                          ),
                          SizedBox(
                            height: height * .2,
                            child: TextFormField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              decoration: InputDecoration(
                                  labelText: 'Message',
                                  labelStyle: TextStyle(color: Colors.amber),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Colors.amber, width: 1)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1))),
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          SizedBox(
                            width: width * .7,
                            height: height * .05,
                            child: ElevatedButton(
                              onPressed: (() {}),
                              child: Text(
                                'Send',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                backgroundColor: Colors.amber,
                              ),
                            ),
                          ),
                        ],
                      ))),
            ]),
      ),
    );
  }
}
