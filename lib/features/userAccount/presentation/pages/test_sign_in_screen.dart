import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Center(
                        child: Container(
                            constraints: const BoxConstraints(maxHeight: 340),
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: Image.asset('assets/logo/login.png')),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text('Shane Manga MM',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 30,
                                fontWeight: FontWeight.w800)))
                  ],
                ),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    hintText: "Enter Your Phone Number",
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xfffa411b).withOpacity(0.9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Next',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
