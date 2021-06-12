import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData(fontFamily: "Nunito"),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: LoginPage(),
          ),
        ));
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // variable _ menas private

  int _pageState = 0;

  var _backgroundColor = Colors.white;

  var _headingColor = Color(0xFFB40284A);

  // double _headingTop = 100;

  // double _loginWidth = 0;
  // double _loginHeight = 0;
  // double _loginOpacity = 1;

  // double _loginYOffset = 0;
  // double _loginXOffset = 0;
  // double _registerYOffset = 0;
  // double _registerHeight = 0;

  double windowWidth = 0;
  double windowHeight = 0;

  // bool _keyboardVisible = false;

  @override
  Widget build(BuildContext context) {
    switch (_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _headingColor = Color(0xFFBD34C59);
        break;

      case 1:
        _backgroundColor = Color(0xFFBD34C59);
        _headingColor = Colors.white;
        break;

      case 2:
        _backgroundColor = Color(0xFFBD34C59);
        _headingColor = Colors.white;
        break;
    }
// Animated Contaner warp with Column

    return Stack(
      children: <Widget>[
        // Container Change to AnimatedContainer
        AnimatedContainer(
          // given some curve
          curve: Curves.fastLinearToSlowEaseIn,
          // durantion given
          duration: Duration(milliseconds: 1000),
          color: _backgroundColor,
          // child: Center(
          //   child:Text("This is Login Page") ,
          //   ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: Column(
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(top: 100),
                      child: Text(
                        "Welcome",
                        // style: TextStyle(fontFamily:"Namito" ),
                        style: TextStyle(color: _headingColor, fontSize: 28),
                      )),
                  Center(
                    child: Container(
                      // this is for specific side
                      // margin: EdgeInsets.only(
                      //   top: 20,
                      // ),
                      margin: EdgeInsets.all(32),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "We make learning easy. Join KJ Studio to learn flutter fore free at my Channel.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: _headingColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              )),
              Container(
                // horizontal padding dany kay liay
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Center(
                  child: Image.asset("assets/images/splash_bg.png"),
                ),
              ),
              Container(
                // wrap with widget and then give to GestureDetetore for taping to chagne the state
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_pageState != 0) {
                        _pageState = 0;
                      } else {
                        _pageState = 1;
                      }
                    });
                  },
                  child: Center(
                      child: Container(
                    // Marging for all sides
                    margin: EdgeInsets.all(32),
                    // Padding for all sides
                    padding: EdgeInsets.all(20),
                    // width parent kay hisba sya hojeygae
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFB40284A),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
        //  adding more container in the stack this want work as a column or a row you can give the position as well
        Container (
          color: Colors.red,
       
          )
      ],
    );
  }
}
