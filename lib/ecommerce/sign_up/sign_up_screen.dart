import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iti_23_g2/ecommerce/login/login_screen.dart';
import 'package:iti_23_g2/ecommerce/login/widgets/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    "Welcome to Our \ngrocery hop",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 40,
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        CustomTextField(
                            height: height,
                            text: "Name",
                            controller: _nameController),
                        SizedBox(
                          height: height * .03,
                        ),
                        CustomTextField(
                            height: height,
                            text: "Email",
                            controller: _emailController),
                        SizedBox(
                          height: height * .03,
                        ),
                        CustomTextField(
                          height: height,
                          text: "Password",
                          controller: _passwordController,
                          isPassword: true,
                        ),
                        SizedBox(
                          height: height * .1,
                        ),
                        Row(
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: Icon(Icons.arrow_forward_rounded,size: 35,color: Colors.white,),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * .02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Alreday Have Account?"),
                            SizedBox(width: 10,),
                            InkWell(
                              onTap: (){
                                Get.off(LoginScreen());
                              },
                              child: Text("Log in",style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
