import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  List quotes = [
    "life is a journey form ALLAH to ALLAH",
    "make yourself more strong",
    "believe it first that you can",
    "build the imagination power",
    "feel what you dream and things start happen",
    'struggling in life is a part of your journey,nothings comes easy',
    'getting close to the almighty is a life long process'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.transparent),
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    quotes[index % quotes.length],
                    style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                ),
              ),
            ),

            Divider(
              thickness: 1.6,
            ),
            //  button to change the quotes
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: ElevatedButton.icon(
                  onPressed: _getPressed,
                  icon: Icon(Icons.wb_sunny),
                  label: const Text(
                    'Inspired me',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void _getPressed() {
    setState(() {
      index += 1;
    });
  }
}
