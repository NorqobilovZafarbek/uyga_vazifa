import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class InCerementPage extends StatelessWidget {
  const InCerementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int a = Provider.of<DateStorage>(context).value;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              a.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 35,
              ),
            ),
            GestureDetector(
              onTap: () => Provider.of<DateStorage>(context,listen: false).inCerement(),
              child: const Image(
                height: 100,
                image: AssetImage("assets/images/pilus_2.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
