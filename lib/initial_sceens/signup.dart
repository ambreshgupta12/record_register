import 'package:record_register/main.dart';
import 'package:flutter/material.dart';
import 'package:record_register/values/flutter_icons_data.dart';
import 'signin.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:pynet/function/firebase_auth.dart';
// import 'package:pynet/home_screen.dart';
// import 'package:pynet/log_in_screen.dart';
// import 'main.dart';
// import 'function/firebase_auth.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isNameEmpty = false;
  bool _isEmailEmpty = false;
  bool _isPasswordEmpty = false;
  bool _isConfirmPasswordEmpty = false;
  String _mainPassword;
  String _confirmPassword;
  String _email;
  String _username;

  final _formKey = GlobalKey<FormState>();
  final _fieldKey = GlobalKey<FormFieldState>();

  double _circularProgress = 1;
  double _circularProgress2 = 1;

  void errorhand(double value, e) {
    setState(() {
      _circularProgress = value;
    });
    SnackBar(content: e);
  }

  void errorhand2(double value, e) {
    setState(() {
      _circularProgress = value;
    });
    SnackBar(content: e);
  }

  //--------------------------------------------------------------------------------
  // void openHomePage(context) async{
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => MyHome())
  //   );
  //   Navigator.pop(context);
  // }
  //---------------------------------------------------------------------------------

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    changeTheme(context);
    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Skip",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Sign Up",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.w700),
                )),
            Padding(
                padding: EdgeInsets.only(
                  left: 64,
                  top: 16,
                  right: 64,
                  bottom: 16,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      //------------------------------------------------------------------
                      //Text Form Field 1
                      TextFormField(
                        key: _fieldKey,
                        decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(
                            FlutterIcons.user, // Icon
                            size: 16,
                            color: Colors.black54,
                          ),
                          labelText: "User name", // Label Text
                          hintText: "Avoid personal name",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black45),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(color: Colors.black54),
                          errorText: _isNameEmpty
                              ? "Please enter a user name"
                              : null, // Error label
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter a user name";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (String input) {
                          //
                          //
                          _username = input;
                          if (input.isEmpty) {
                            setState(() {
                              _isNameEmpty = true;
                            });
                          } else {
                            setState(() {
                              _isNameEmpty = false;
                            });
                          }
                          //
                        },
                        onFieldSubmitted: (v) {
                          setState((){FocusScope.of(context).nextFocus();});
                        },
                      ),
                      //End of text FOrm field 1
                      //End of text form field 1
                      //-------------------------------------------------------------------
                      SizedBox(
                        height: 16,
                      ),
                      //Text Form Field 2
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            FlutterIcons.envelope, // Icon
                            size: 16,
                            color: Colors.black54,
                          ),
                          labelText: "Email", // Label Text
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black45),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(color: Colors.black54),
                          errorText: _isEmailEmpty
                              ? "Please enter valid email address"
                              : null, // Error label
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter valid email address";
                          } else if (!value.contains("@")) {
                            return "Please enter valid email address";
                          } else {
                            return null;
                          }
                        },
                        onEditingComplete: () {
                          if (!_email.contains("@")) {
                            setState(() {
                              _isEmailEmpty = true;
                            });
                          } else {
                            setState(() {
                              _isEmailEmpty = false;
                            });
                          }
                        },
                        onChanged: (String input) {
                          //
                          //
                          _email = input;
                          if (input.isEmpty) {
                            setState(() {
                              _isEmailEmpty = true;
                            });
                          } else {
                            setState(() {
                              _isEmailEmpty = false;
                            });
                          }
                          //
                        },
                        //
                        onFieldSubmitted: (v) {
                          setState((){FocusScope.of(context).nextFocus();});
                        },
                      ),
                      //End of text FOrm field 2
                      //------------------------------------------------------------------
                      SizedBox(
                        height: 16,
                      ),

                      //Text Form Field 3
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(
                            FlutterIcons.lock, // Icon
                            size: 16,
                            color: Colors.black54,
                          ),

                          labelText: "Password", // Label Text
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black45),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(color: Colors.black54),
                          errorText: _isPasswordEmpty
                              ? "Please enter valid password"
                              : null, // Error label
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter a valid password";
                          } else {
                            if (value.length < 6) {
                              return "Atleast 6 character required";
                            } else {
                              return null;
                            }
                          }
                        },
                        onChanged: (String input) {
                          //
                          _mainPassword = input;
                          if (input.isEmpty) {
                            setState(() {
                              _isPasswordEmpty = true;
                            });
                          } else {
                            setState(() {
                              _isPasswordEmpty = false;
                            });
                          }
                          //
                        },
                        onFieldSubmitted: (v) {
                          FocusScope.of(context).nextFocus();
                        },
                        //
                      ),

                      //End of text FOrm field 3
                      //------------------------------------------------------------------
                      SizedBox(
                        height: 16,
                      ),

                      //Text Form Field 4
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(
                            FlutterIcons.lock, // Icon
                            size: 16,
                            color: Colors.black54,
                          ),

                          labelText: "Confirm password", // Label Text
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black45),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(color: Colors.black54),
                          errorText: _isConfirmPasswordEmpty
                              ? "Passwords do not match"
                              : null, // Error label
                        ),
                        validator: (value) {
                          if (value != _mainPassword) {
                            return "Passwords do not match";
                          } else {
                            return null;
                          }
                        },
                        onEditingComplete: () {
                          if (_confirmPassword != _mainPassword) {
                            setState(() {
                              _isConfirmPasswordEmpty = true;
                            });
                          } else {
                            _isConfirmPasswordEmpty = false;
                          }
                        },
                        onChanged: (String input) {
                          //
                          //
                          _confirmPassword = input;
                          if (input.isEmpty) {
                            setState(() {
                              _isConfirmPasswordEmpty = true;
                            });
                          } else {
                            setState(() {
                              _isConfirmPasswordEmpty = false;
                            });
                          }
                          //
                        },
                        onFieldSubmitted: (v) {
                          FocusScope.of(context).unfocus();
                        },
                        //
                      ),
                      //End of text FOrm field 4
                      //------------------------------------------------------------------

                      SizedBox(
                        height: 24,
                      ),

                      Stack(
                          alignment: AlignmentDirectional.center,
                          children: <Widget>[
                            CircularProgressIndicator(
                              value: _circularProgress,
                              valueColor: _circularProgress == null
                                  ? AlwaysStoppedAnimation(Colors.blue)
                                  : AlwaysStoppedAnimation(Colors.white),
                            ),
                            GestureDetector(
                              child: Container(
                                height: 48,
                                decoration: BoxDecoration(
                                    color: _circularProgress != null
                                        ? Colors.blue
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "SIGN UP",
                                      style: Theme.of(context)
                                          .textTheme
                                          .button
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: _circularProgress != null
                                                  ? Colors.white
                                                  : Colors.transparent),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {

                                //---------------------------------------------------------------
                                // if (_formKey.currentState.validate()) {
                                //   setState(() {
                                //     _circularProgress = null;
                                //   });
                                //   final AuthService authService =
                                //       AuthService(_email, _confirmPassword);
                                //   authService
                                //       .signInWidEmail()
                                //       .then((FirebaseUser user) => openHomePage(context))
                                //       .catchError((e) => errorhand(1, e));
                                // }
                                //-------------------------------------------------------------
                              },
                            ),
                          ]),

                      SizedBox(height: 8),

                      Row(
                        children: <Widget>[
                          Expanded(child: Divider(thickness: 1)),
                          Padding(
                              padding: EdgeInsets.all(16), child: Text("Or")),
                          Expanded(child: Divider(thickness: 1)),
                        ],
                      ),

                      SizedBox(
                        height: 8,
                      ),

//-------------------------------------------------------------------------------------------------------------
// SIGN UP WITH GOOGLE BUTTON
                      Stack(
                          alignment: AlignmentDirectional.center,
                          children: <Widget>[
                            CircularProgressIndicator(
                              value: _circularProgress2,
                              valueColor: _circularProgress2 == null
                                  ? AlwaysStoppedAnimation(Colors.blue)
                                  : AlwaysStoppedAnimation(Colors.transparent),
                            ),
                            GestureDetector(
                              child: Container(
                                height: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: _circularProgress2 != null
                                        ? Theme.of(context).backgroundColor
                                        : Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2,
                                      )
                                    ]),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 8),
                                      child: _circularProgress2 != null
                                          ? Image.asset("images/googleLogo.png")
                                          : null,
                                    ),
                                    Expanded(
                                        child: Text(
                                      "Sign in with google".toUpperCase(),
                                      textAlign: TextAlign.center,
                                      style: _circularProgress2 != null
                                          ? Theme.of(context)
                                              .textTheme
                                              .button
                                              .copyWith(color: Colors.black54)
                                          : Theme.of(context)
                                              .textTheme
                                              .button
                                              .copyWith(
                                                  color: Colors.transparent),
                                    ))
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  _circularProgress2 = null;
                                });
                                //-------------------------------------------------------------
                                // final AuthService authService =
                                //     AuthService("", "");
                                // authService
                                //     .handleSignIn()
                                //     .catchError((e) => errorhand2(1, e));
                                //-------------------------------------------------------------
                              },
                            ),
                          ]),
// SIGN UP WITH GOOGLE END
//---------------------------------------------------------------------------------------------------------
                      SizedBox(
                        height: 24,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have an account? "),
                          GestureDetector(
                            child: Text(
                              "SIGN IN",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignIn()));
                            },
                          ),
                        ],
                      ),

                      SizedBox(height: 40),

                      Wrap(
                        alignment: WrapAlignment.center,
                        children: <Widget>[
                          Text(
                            "By registering on RegR account you agree to our ",
                            style: Theme.of(context).textTheme.caption,
                          ),
                          GestureDetector(
                              child: Text("Terms and Condition",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500))),
                          Text(
                            " and ",
                            style: Theme.of(context).textTheme.caption,
                          ),
                          GestureDetector(
                              child: Text(
                            "Privacy Policy",
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500),
                          )),
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      );
  }
}