import 'package:flutter/material.dart';
import 'package:uygavazifa/common/initialization/storage_initalization.dart';

import 'home_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: controller1,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: controller2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    if (controller1.text.isNotEmpty &&
                        controller2.text.isNotEmpty) {
                      $storage.setString(controller1.text, controller1.text);
                      $storage.setString(controller2.text, controller2.text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                      $storage.setBool("isLogged", true);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Iltimos, foydalanuvchi nomingiz va parolingizni kiriting"),),
                      );
                    }
                  },
                  child: const Text("Sign Up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
