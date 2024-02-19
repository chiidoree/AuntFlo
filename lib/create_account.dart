import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:aunt_flo/common/route_constants.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool first=false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.1),
        body: SafeArea(
          child: Center(
            child: Container(
              width: kIsWeb
                  ? MediaQuery.of(context).size.width / 1.5
                  : MediaQuery.of(context).size.width,
              height: kIsWeb
                  ? MediaQuery.of(context).size.height / 1.5
                  : MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Wrap(children: [
                      kIsWeb
                          ? FractionallySizedBox(
                        widthFactor: 0.5,
                        child: Container(
                            height: constraints.maxHeight,
                            width: constraints.maxWidth,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent.withOpacity(0.3),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            // child: SvgPicture.network('https://svgur.com/i/yCT.svg'),
                            child: Center(
                              child: Image.asset(
                                'assets/images/pre.png',
                              ),
                            )),
                      )
                          : const SizedBox.shrink(),
                      FractionallySizedBox(
                          widthFactor: kIsWeb ? 0.5 : 1,
                          child: Container(
                              height: constraints.maxHeight,
                              width: constraints.maxWidth,
                              decoration: BoxDecoration(
                                  color: Colors.pinkAccent.withOpacity(0.2),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                              child: Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 20),
                                  child: Form(
                                      key: _formKey,
                                      child: Container(
                                        padding: kIsWeb
                                            ? EdgeInsets.zero
                                            : const EdgeInsets.only(left: 10),
                                        child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              kIsWeb
                                                  ? const SizedBox(height: 10)
                                                  : const SizedBox(
                                                height: 10,
                                              ),
                                              kIsWeb
                                                  ? const SizedBox.shrink()
                                                  : Center(
                                                child: Image.asset(
                                                  'assets/images/pre.png',
                                                  height: 300,
                                                ),
                                              ),
                                              Text(
                                                'Create your account',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 23,
                                                    color: Colors.pink.shade300
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text('First Name',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                    color: Colors.black.withOpacity(0.7)
                                                ),
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.only(right: 20, left: 0, top: 5),
                                                  child: SizedBox(
                                                    height: 35,
                                                    child: TextFormField(
                                                      keyboardType: TextInputType.name,
                                                      decoration: const InputDecoration(
                                                        border: OutlineInputBorder(),
                                                        hintText: 'Enter your Name',
                                                        hintStyle: TextStyle(fontSize: 12),
                                                      ),
                                                    ),
                                                  )),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Text('Email Address',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black.withOpacity(0.7))),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(right: 20, left: 0),
                                                child: SizedBox(
                                                  height: 35,
                                                  child: TextFormField(
                                                    keyboardType: TextInputType.emailAddress,
                                                    decoration: const InputDecoration(
                                                      border: OutlineInputBorder(),
                                                      hintText: 'you@example.com',
                                                      hintStyle: TextStyle(fontSize: 12),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Text('Password', style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black.withOpacity(0.7)
                                              ),
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.only(left: 0, right: 20),
                                                  child: SizedBox(
                                                    height: 35,
                                                    child: TextFormField(
                                                      keyboardType: TextInputType.visiblePassword,
                                                      obscureText: true,
                                                      decoration: const InputDecoration(
                                                        border: OutlineInputBorder(),
                                                        hintText: 'Enter a password',
                                                        hintStyle: TextStyle(fontSize: 12),
                                                      ),
                                                    ),
                                                  )),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Text('Confirm Password', style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black.withOpacity(0.7)
                                              ),
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.only(left: 0, right: 20),
                                                  child: SizedBox(
                                                    height: 35,
                                                    child: TextFormField(
                                                      keyboardType: TextInputType.visiblePassword,
                                                      obscureText: true,
                                                      decoration: const InputDecoration(
                                                        border: OutlineInputBorder(),
                                                        hintText: 'Re-enter your password',
                                                        hintStyle: TextStyle(fontSize: 12),
                                                      ),
                                                    ),
                                                  )),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  const SizedBox(
                                                    width: 0,
                                                  ),
                                                  Checkbox(
                                                    checkColor: Colors.white,
                                                    activeColor: Colors.pink.shade300,
                                                    value: first,
                                                    onChanged: (bool? value){
                                                      setState(() {
                                                        first=value!;
                                                      });
                                                    },
                                                  ),
                                                  Text('Remember me',
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black.withOpacity(0.7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              SizedBox(
                                                height: 40,
                                                width: constraints.maxWidth,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 20, left: 0),
                                                  child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                      elevation: 3,
                                                      backgroundColor: Colors.pink.shade300,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10)
                                                      ),
                                                    ),
                                                    onPressed: () => {
                                                      Navigator.pushNamed(context, RouteConstants.homeRoute)
                                                    },
                                                    child: const Text('Create new', style: TextStyle(
                                                      fontSize: 17,
                                                    ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                    text: "Already have an account ? ",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.blueGrey.withOpacity(0.8),
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: "Sign In",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.pink.shade400,
                                                            decoration:
                                                            TextDecoration.underline),
                                                        recognizer: TapGestureRecognizer()
                                                          ..onTap = () =>
                                                              Navigator.pushNamed(
                                                                  context, RouteConstants.dashboardRoute
                                                              ),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      )))))
                    ]);
                  }),
            ),
          ),
        ));
  }
}
