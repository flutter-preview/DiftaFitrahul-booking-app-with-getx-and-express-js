import 'package:booking_app/components/form_auth_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            _passwordController.clear();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.04,
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Image.asset(
                    'assets/Group.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const Text(
                  'EventHub',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sign In',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                FormAuthComp(
                    formController: _emailController,
                    hintText: 'email@365.com',
                    leadingIcon: Icon(Icons.email),
                    trailingButton: null),
                const SizedBox(height: 20),
                FormAuthComp(
                  formController: _passwordController,
                  hintText: 'Your password',
                  leadingIcon: const Icon(Icons.lock_outline_rounded),
                  trailingButton: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_outlined)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.scale(
                        scale: 0.8,
                        child: CupertinoSwitch(
                          value: true,
                          onChanged: (value) {},
                          activeColor: Colors.blue,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
