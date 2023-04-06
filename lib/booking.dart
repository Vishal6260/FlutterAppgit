import 'package:flutter/material.dart';
import 'package:login3/survey.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
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
            height: 200,
            decoration: BoxDecoration(color: Colors.white),
            child: Center(child: Image.asset('assets/image/1.jpeg')),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "        Blood Bank\n   Location near you",
            style: TextStyle(fontSize: 25, color: Colors.red),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                height: 100,
                width: 150,
                child: Icon(
                  Icons.gps_fixed,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                height: 100,
                width: 150,
                child: Icon(
                  Icons.map,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            height: 100,
            width: 150,
            child: Icon(
              Icons.phone,
              size: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Can i give Blood?",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Share on social media!",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
