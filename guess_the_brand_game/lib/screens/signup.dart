import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/images/Logo.png',
                    width: width,
                    height: height * .2,
                  ),
                  SizedBox(height: height * .03),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            width: width * .9,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'E-mail',
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.green),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                    BorderSide(color: Colors.amber)),
                              ),
                            ),
                          ),
                          SizedBox(height: height * .03),
                          Container(
                            width: width * .9,
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.green),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                    BorderSide(color: Colors.amber)),
                              ),
                            ),
                          ),
                          SizedBox(height: height * .03),
                          Container(
                            width: width * .9,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Full name',
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.green),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                    BorderSide(color: Colors.amber)),
                              ),
                            ),
                          ),
                          SizedBox(height: height * .03),
                          Container(
                            width: width * .6,
                            height: height * .06,
                            child: ElevatedButton(
                              onPressed: (() {}),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                backgroundColor: Colors.amber,
                              ),
                            ),
                          )
                        ],
                      )),
                  SizedBox(height: height * .03),
                  Container(
                    width: width * .9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(child: Divider(thickness: 1.3,)),
                        Text(
                          "  Or Sign-Up With  ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Expanded(child: Divider(thickness: 1.3,))
                      ],
                    ),
                  ),
                  SizedBox(height: height * .03),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/google-logo.svg',
                          width: 35,
                          height: 35,
                        ),
                        SizedBox(
                          width: width * .01,
                        ),
                        const Text(
                          'Google',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
