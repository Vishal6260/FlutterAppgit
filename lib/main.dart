import 'package:flutter/material.dart';
import 'dart:async';
import "package:login3/login_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    startTimer();
    super.initState();
  }

  startTimer() {
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/1.jpeg"),
              SizedBox(
                height: 05,
              ),
              Text(
                "MV Blood Donation App",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(const MyApp());
// }

// Future<List<Data>> fetchData() async {
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/albums');
//   final response = await http.get(url);
//   if (response.statusCode == 200) {
//     List jsonResponse = json.decode(response.body);
//     return jsonResponse.map((data) => Data.fromJson(data)).toList();
//   } else {
//     throw Exception('Unexpected error occured!');
//   }
// }

// class Data {
//   final int userId;
//   final int id;
//   final String title;

//   Data({required this.userId, required this.id, required this.title});

//   factory Data.fromJson(Map<String, dynamic> json) {
//     return Data(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter ListView'),
//         ),
//         body: const MyStatefulWidget());
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<Data>>(
//       future: fetchData(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Container(
//                   height: 75,
//                   color: Colors.white,
//                   child: Center(
//                     child: Text(snapshot.data![index].title),
//                   ),
//                 );
//               });
//         } else if (snapshot.hasError) {
//           return Text(snapshot.error.toString());
//         }
//         // By default show a loading spinner.
//         return const CircularProgressIndicator();
//       },
//     );
//   }
// }

// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<Album> createAlbum(String title) async {
//   final http.Response response = await http.post(
//     Uri.parse('https://jsonplaceholder.typicode.com/albums'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'title': title,
//     }),
//   );

//   if (response.statusCode == 201) {
//     return Album.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to create album.');
//   }
// }

// class Album {
//   final int id;
//   final String title;

//   Album({required this.id, required this.title});

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
// // ignore: library_private_types_in_public_api
//   _MyAppState createState() {
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
//   final TextEditingController _controller = TextEditingController();
//   late Future<Album> _futureAlbum;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Creating Data',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('GeeksForGeeks'),
//           backgroundColor: Colors.green,
//         ),
//         body: Container(
//           alignment: Alignment.center,
//           padding: const EdgeInsets.all(8.0),
//           // ignore: unnecessary_null_comparison
//           child: (_futureAlbum == null)
//               ? Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     TextField(
//                       controller: _controller,
//                       decoration:
//                           const InputDecoration(hintText: 'Enter Title'),
//                     ),
//                     ElevatedButton(
//                       child: const Text('Create Data'),
//                       onPressed: () {
//                         setState(() {
//                           _futureAlbum = createAlbum(_controller.text);
//                         });
//                       },
//                     ),

//                     // RaisedButton is deprecated and shouldn't be used. Use ElevatedButton.

//                     // RaisedButton(
//                     // child: Text('Create Data'),
//                     // onPressed: () {
//                     //	 setState(() {
//                     //	 _futureAlbum = createAlbum(_controller.text);
//                     //	 });
//                     // },
//                     // ),
//                   ],
//                 )
//               : FutureBuilder<Album>(
//                   future: _futureAlbum,
//                   builder: (context, snapshot) {
//                     if (snapshot.hasData) {
//                       return Text(snapshot.data!.title);
//                     } else if (snapshot.hasError) {
//                       return Text("${snapshot.error}");
//                     }

//                     return const CircularProgressIndicator();
//                   },
//                 ),
//         ),
//       ),
//     );
//   }
// }
