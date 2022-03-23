import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // returns an object from class state
    return _CounterScreenState();
  }
}

//  constructor
// initState
// build method
class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {});
                    counter--;
                    print(counter);
                  },
                  child: Text(
                    'Minus',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '$counter',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {});
                  counter++;
                  print(counter);
                },
                child: Text(
                  'Plus',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
