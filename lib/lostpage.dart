import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LostingPage extends StatefulWidget {
  const LostingPage({Key? key}) : super(key: key);

  @override
  State<LostingPage> createState() => _LostingPageState();
}

class _LostingPageState extends State<LostingPage> {
  int i = 0;

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
                ("😥"),
                style: TextStyle(fontSize: 70),
              ),
              (mlist == 0)
                  ? (Text(
                      "\nBetter Luck for \n    next time",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ))
                  : (Text(
                      "       oops!\n\nSorry You are \n the lose the",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Rs.$mlist",
                style: TextStyle(color: Colors.red, fontSize: 22),
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Text(
                  "Try Again",
                  style: TextStyle(color: Colors.white),
                ),
                style: OutlinedButton.styleFrom(backgroundColor: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
