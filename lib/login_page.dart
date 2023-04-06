import 'package:flutter/material.dart';
import 'package:login3/survey.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LogingPageState();
}

class _LogingPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.red,
          Colors.red,
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _Page(),
      ),
    );
  }

  Widget _Page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 30),
            _inputField("Username", usernameController),
            const SizedBox(height: 20),
            _inputField("password", passwordContoller, ispassword: true),
            const SizedBox(height: 20),
            _loginBtn(),
            const SizedBox(height: 50),
            _extraText(),
            const SizedBox(height: 15),
            _extraText1(),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 6),
          shape: BoxShape.circle),
      child: const Icon(
        Icons.person,
        color: Colors.white,
        size: 120,
      ),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {ispassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white));

    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: ispassword,
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        if (usernameController.text == "admin" &&
            passwordContoller.text == "123") {
          debugPrint("xxxxx");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const survey()));
        } else {
          debugPrint("Wrong");
        }
        // login(usernameController.text, passwordContoller.text);
        // debugPrint("Username  : " + usernameController.text);
        // debugPrint("Password  : " + passwordContoller.text);
      },
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Sign in",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Color.fromARGB(255, 228, 226, 226),
        onPrimary: Colors.redAccent,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget _extraText() {
    return const Text(
      "Create your account?",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18, color: Colors.white),
    );
  }

  Widget _extraText1() {
    return const Text(
      "Skip for now!",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18, color: Colors.white),
    );
  }
}
