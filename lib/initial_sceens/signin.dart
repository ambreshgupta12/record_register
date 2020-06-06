import 'package:flutter/material.dart';
import 'package:record_register/main.dart';
import 'package:record_register/values/flutter_icons_data.dart';
import 'signup.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:pynet/sign_up_screen.dart';
// import 'function/firebase_auth.dart';
// import 'main.dart';

class SignIn extends StatefulWidget {
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isEmailEmpty = false;
  bool _isPasswordEmpty = false;
  String _mainPassword;
  String _email;
  bool _isNotVisible = true;

  double _circularProgress = 1;

  final _formKey = GlobalKey<FormState>();

  //------------------------------------------------------------------------------------------------
  // void openHomePage(context) async{
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => MyHome())
  //   );
  //   Navigator.pop(context);
  // }
  //-----------------------------------------------------------------------------------------------

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
                  "Sign In",
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
                      //Text Form Field 1
                      TextFormField(
                        decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
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
                        onFieldSubmitted: (v) {
                          FocusScope.of(context).nextFocus();
                        },
                        //
                      ),
                      //End of text FOrm field 1
                      //------------------------------------------------------------------
                      SizedBox(
                        height: 16,
                      ),

                      //Text Form Field 2
                      TextFormField(
                          obscureText: _isNotVisible,
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
                            suffixIcon: IconButton(
                              icon: _isNotVisible
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                              color: Colors.black26,
                              onPressed: () {
                                if (_isNotVisible) {
                                  setState(() {
                                    _isNotVisible = false;
                                  });
                                } else {
                                  setState(() {
                                    _isNotVisible = true;
                                  });
                                }
                              },
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
                          onFieldSubmitted: (v) {
                            FocusScope.of(context).unfocus();
                          },
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
                          }
                          //
                          ),
                      //End of text FOrm field 2
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
                                        "SIGN IN",
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
                                  // ---------------------------------------------------------------------------
                                  // if (_formKey.currentState.validate()) {
                                  //   log("working");
                                  //   setState(() {
                                  //     _circularProgress = null;
                                  //   });
                                  //   final AuthService authService2 =
                                  //       AuthService(_email, _mainPassword);
                                  //   authService2
                                  //       .signInF()
                                  //       .then((FirebaseUser user) =>
                                  //           openHomePage(context)
                                  //         )
                                  //       .catchError((e) => print(e));
                                  // }
                                  //-------------------------------------------------------------------------------
                                }),
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

                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Theme.of(context).backgroundColor,
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
                              child: Image.asset("images/googleLogo.png"),
                            ),
                            Expanded(
                                child: Text(
                              "Sign in with google".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: Colors.black54),
                            ))
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 32,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account? "),
                          GestureDetector(
                            child: Text(
                              "SIGN UP",
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
                                      builder: (context) => SignUp()));
                              },
                          ),
                        ],
                      ),

                      SizedBox(height: 160),

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