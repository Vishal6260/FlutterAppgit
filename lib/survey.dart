import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:login3/booking.dart';
import 'package:login3/login_page.dart';

import 'package:flutter/material.dart';

class survey extends StatelessWidget {
  const survey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(color: Colors.white),
            child: Center(child: Image.asset('assets/image/1.jpeg')),
          ),
          SizedBox(
            height: .5,
          ),
          Text(
            "Pleas select blood type",
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Tap to Select Blood type",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          LisTileExample()
        ],
      ),
    );
  }
}

class LisTileExample extends StatefulWidget {
  const LisTileExample({super.key});

  @override
  State<LisTileExample> createState() => _LisTileExampleState();
}

class _LisTileExampleState extends State<LisTileExample>
    with TickerProviderStateMixin {
  late final AnimationController _fadeController;
  late final AnimationController _sizeController;
  late final Animation<double> _fadeAnimation;
  late final Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    _sizeController = AnimationController(
      duration: const Duration(milliseconds: 850),
      vsync: this,
    )..repeat(reverse: true);

    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );

    _sizeAnimation = CurvedAnimation(
      parent: _sizeController,
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _sizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Hero(
            tag: 'A+',
            // Wrap the ListTile in a Material widget so the ListTile has someplace
            // to draw the animated colors during the hero transition.
            child: Material(
              child: ListTile(
                title: Center(
                  child: const Text(
                    'A+',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                tileColor: Colors.red,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Booking()));
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Booking()));
            },
            child: FadeTransition(
              opacity: _fadeAnimation,
              // Wrap the ListTile in a Material widget so the ListTile has someplace
              // to draw the animated colors during the fade transition.
              child: const Material(
                child: ListTile(
                  title: Center(
                      child: Text(
                    'A-',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
                  selectedTileColor: Colors.red,
                  selectedColor: Colors.white,
                  selected: true,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Hero(
            tag: 'B+',
            // Wrap the ListTile in a Material widget so the ListTile has someplace
            // to draw the animated colors during the hero transition.
            child: Material(
              child: ListTile(
                title: Center(
                  child: Center(
                    child: const Text(
                      'B+',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                // subtitle: const Text(
                //   'Tap to select',
                //   style: TextStyle(color: Colors.white),
                // ),
                tileColor: Colors.red,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Booking()));
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Booking()));
            },
            child: FadeTransition(
              opacity: _fadeAnimation,
              // Wrap the ListTile in a Material widget so the ListTile has someplace
              // to draw the animated colors during the fade transition.
              child: const Material(
                child: ListTile(
                  title: Center(
                      child: Text(
                    'B-',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
                  selectedTileColor: Colors.red,
                  selectedColor: Colors.white,
                  selected: true,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Hero(
            tag: 'AB',
            // Wrap the ListTile in a Material widget so the ListTile has someplace
            // to draw the animated colors during the hero transition.
            child: Material(
              child: ListTile(
                title: Center(
                  child: Center(
                    child: const Text(
                      'AB+',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                // subtitle: const Text(
                //   'Tap to select',
                //   style: TextStyle(color: Colors.white),
                // ),
                tileColor: Colors.red,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Booking()));
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Booking()));
            },
            child: FadeTransition(
              opacity: _fadeAnimation,
              // Wrap the ListTile in a Material widget so the ListTile has someplace
              // to draw the animated colors during the fade transition.
              child: const Material(
                child: ListTile(
                  title: Center(
                      child: Text(
                    'AB-',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
                  selectedTileColor: Colors.red,
                  selectedColor: Colors.white,
                  selected: true,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Hero(
            tag: 'O',
            // Wrap the ListTile in a Material widget so the ListTile has someplace
            // to draw the animated colors during the hero transition.
            child: Material(
              child: ListTile(
                title: Center(
                  child: const Text(
                    'O+',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                tileColor: Colors.red,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Booking()));
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Booking()));
            },
            child: FadeTransition(
              opacity: _fadeAnimation,
              // Wrap the ListTile in a Material widget so the ListTile has someplace
              // to draw the animated colors during the fade transition.
              child: const Material(
                child: ListTile(
                  title: Center(
                      child: Text(
                    'O-',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
                  selectedTileColor: Colors.red,
                  selectedColor: Colors.white,
                  selected: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
