import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common/widget.dart';
import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int value = Provider.of<DateStorage>(context).value;
    return Scaffold(
      body: Column(
        children: [
          Text(
            "${value}",
            style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 35),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouterPath.inCerement);
                },
                child: const Image(
                  height: 100,
                  image: AssetImage("assets/images/pilus_2.jpg"),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouterPath.decrement);
                },
                child: const Image(
                  height: 100,
                  image: AssetImage("assets/images/minus.png"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
