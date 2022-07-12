import 'package:flutter/material.dart';
import 'package:web_art/res/app_colors.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Align(
                alignment: const Alignment(.2, -0.5),
                child: Image.asset(
                  "assets/images/app_logo.png",
                  height: 300,
                )),
            // form
            Padding(
              padding: const EdgeInsets.all(30),
              child: Form(
                  child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // email field
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text("Email")),
                  ),
                  const SizedBox(height: 10),
                  // password field
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text("password")),
                  ),

                  Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        child: const Text(
                          "Forget Password",
                          textAlign: TextAlign.end,
                        ),
                        onPressed: () {},
                      )),
                  const SizedBox(height: 20),
                  // LoginButton
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(160, 36)),
                      backgroundColor:
                          MaterialStateProperty.all(buttonTextColor),
                    ),
                    child: const Text(
                      "SingIn",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
