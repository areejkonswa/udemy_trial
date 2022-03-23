import 'package:flutter/material.dart';
import 'package:revision/shared/components/components.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  // const LoginScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  // ignore: non_constant_identifier_names
  var FormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/shhk.png'),
                width: double.infinity,
                height: 300,
              ),
              SizedBox(
                height: 10,
              ),
              Image(
                image: AssetImage('assets/images/bd.png'),
                width: 70,
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  left: 50,
                  right: 50,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                          child: Text(
                        'Sign-In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Form(
                        key: FormKey,
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'email cant be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Email/Phone',
                            labelStyle:
                                TextStyle(color: Colors.white.withOpacity(0.6)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.6),
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Form(
                        key: FormKey,
                        child: Column(children: [
                          defaultFormField(
                              controller: passwordController,
                              type: TextInputType.visiblePassword,
                              label: 'Password',
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return 'password cant be empty';
                                }
                                return null;
                              },
                              preffix: Icons.lock,
                              suffix: Icons.visibility),
                        ]),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      defaultButton(
                        text: 'Login',
                        function: () {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Skip',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
