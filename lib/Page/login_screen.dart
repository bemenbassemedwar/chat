import 'package:flutter/material.dart';

import '../chatScreen.dart';
import '../validate.dart';
import 'register_screen.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  var emailControlle = TextEditingController();

  var passwordControlle = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool ispassword = true;

  @override
  Widget build(BuildContext context) {
    var obscureText = true;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      'https://www.logoku.com/image/c/data/items/1702823541_logokucom_letter-p-chat-logo.jpg'),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Welcome Back, Login to your account',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 50),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email is required';
                    } else if (!validateEmail(value)) {
                      return 'Email is not valid';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon:
                        const Icon(Icons.email_outlined, color: Colors.indigo),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigo),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: obscureText,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password is required';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: Icon(
                            obscureText
                                ? Icons.visibility_off
                                : Icons.remove_red_eye,
                            color: Colors.indigo),
                      ),
                      prefixIcon: const Icon(Icons.lock, color: Colors.indigo),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.indigo),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.indigo),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      )),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () {
                          var formKey;
                          if (formKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ChatScreen()));
                          }
                        },
                        child: const Text('Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600)))),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterView()));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.indigo),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
