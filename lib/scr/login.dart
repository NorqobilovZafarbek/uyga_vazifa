import 'package:flutter/material.dart';
import 'package:uygavazifa/common/initialization/storage_initalization.dart';
import 'package:uygavazifa/scr/home_page.dart';
import 'package:uygavazifa/scr/sign_up.dart';

class LoginUp extends StatefulWidget {
  const LoginUp({Key? key}) : super(key: key);

  @override
  State<LoginUp> createState() => _LoginUp();
}

class _LoginUp extends State<LoginUp> {
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
                  onPressed: () async {
                    String name = $storage.getString(controller1.text) ?? "";
                    String surName = $storage.getString(controller2.text) ?? "";
                    if (name.isEmpty && surName.isEmpty) {
                      // $storage.setString(controller1.text, controller1.text);
                      // $storage.setString(controller2.text, controller2.text);
                      // $storage.setBool("isLogged", true);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    } else if (name == controller1.text && surName == controller2.text) {
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const HomePage(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Iltimos, foydalanuvchi nomingiz va parolingizni kiriting"),
                        ),
                      );
                    }
                  },
                  child: const Text("Login "),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
