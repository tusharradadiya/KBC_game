import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WiningnPage extends StatefulWidget {
  const WiningnPage({Key? key}) : super(key: key);

  @override
  State<WiningnPage> createState() => _WiningnPageState();
}

class _WiningnPageState extends State<WiningnPage> {
  @override
  Widget build(BuildContext context) {
    dynamic mlist = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ("🎉"),
                style: TextStyle(fontSize: 70),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "your Answer Is Correct",
                style: TextStyle(color: Colors.red, fontSize: 22),
              ),
              Text(
                "Rs. $mlist",
                style: TextStyle(color: Colors.red, fontSize: 22),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                ),
                style: OutlinedButton.styleFrom(backgroundColor: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
