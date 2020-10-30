import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/images/pp.png')),
              Container(height: 50),
              Text(
                'Location Changer',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                'Plugin app for tinder',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Container(height: 20),
              Container(
                width: 250,
                child: RaisedButton(
                  
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: Colors.white,
                  textColor: Color(0xfff05454),
                  onPressed: () {},
                  child: Container(
                      width: double.infinity,
                      child: Text(
                        'Login with Facebook',
                        textAlign: TextAlign.center,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
        ),
        Container(color: Color(0xfff05454)),
        Container(color: Colors.white.withOpacity(0.2)),
        _body(),
      ],
    ));
  }
}
