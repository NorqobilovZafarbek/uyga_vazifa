import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uygavazifa/common/provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                  OutlinedButton(
                    onPressed: context.read<CounterModel>().inCerementOne,
                    child: Text("IncerementOne",),
                  ),
                  OutlinedButton(
                    onPressed: context.read<CounterModel>().inCerementTwo,
                    child: Text("IncerementTwo"),
                  ),
                ],
              ),
              Selector(
                builder: (context, value, child) {
                  return Text(value.toString());
                },
                shouldRebuild: (previous, next) => next-3==previous,
                selector: (_, CounterModel model) => model.a,
              ),
              Selector(
                builder: (context, value, child) {
                  return Text(value.toString());
                },
                selector: (_, CounterModel model) => model.b,
              ),
            ],
          ),
        );
      }),
    );
  }
}
