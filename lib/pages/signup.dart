import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Initialize variable
  final _formKey = GlobalKey<FormState>();

  TextEditingController _usernameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  // Methods
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          // Background Image
          /*  Image.asset(
              "images/logo.png",
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ), */
          // Background overlay color
          Container(
            color: Colors.blueAccent, //withOpacity(0.4),
            width: double.infinity,
            height: double.infinity,
          ),
          // Logo
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/logo.png",
              width: 150.0,
              height: 150.0,
            ),
          ),
          // Form
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Center(
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    // Username text field
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white.withOpacity(0.8),
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            controller: _usernameTextController,
                            decoration: InputDecoration(
                              labelText: "Username",
                              hintText: "Username",
                              icon: Icon(Icons.person),
                              border: InputBorder.none,
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please enter username";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    // email text field
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white.withOpacity(0.8),
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            controller: _emailTextController,
                            decoration: InputDecoration(
                              labelText: "Email",
                              hintText: "Email",
                              icon: Icon(Icons.email),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please enter email";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    // password text field
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white.withOpacity(0.8),
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            controller: _passwordTextController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "Password",
                              icon: Icon(Icons.lock),
                              border: InputBorder.none,
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please enter password";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    //
                    // Sign up button
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.red.shade700,
                        elevation: 0.0,
                        child: MaterialButton(
                          onPressed: () async {
                            //validateForm();
                          },
                          minWidth: MediaQuery.of(context).size.width,
                          child: Text(
                            "Sign up",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                    // Log In page link
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          //Navigator.pop(context);
                        },
                        child: Text(
                          "Already have an account? Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
