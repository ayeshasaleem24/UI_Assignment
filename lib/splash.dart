import 'package:flutter/material.dart';
import 'package:projectui/Login.dart';
import 'package:projectui/Signup.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool loginButtonPressed = false;
  bool signupButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://media.istockphoto.com/id/1285430236/photo/stylish-teen-model-posing-on-town-streets-after-quarantine.jpg?s=612x612&w=0&k=20&c=hjhL3SU0OPomByrEvcL8cpR2xkzvZKyhWgn-eNyKIEc=',
            
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '𝐓𝐫𝐞𝐧𝐝𝐲 𝐓𝐫𝐞𝐚𝐬𝐮𝐫𝐞𝐬',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              
              ],
            ),
          ),
          // Login button 
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: loginButtonPressed ? Colors.white : Colors.black,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: InkWell(
                      onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Login()));
                  },
                    onTapDown: (details) {
                      setState(() {
                        loginButtonPressed = true;
                      });
                    },
                    onTapUp: (details) {
                      setState(() {
                        loginButtonPressed = false;
                      });
                    },
                    child: Center(
                      child: Text(
                        '𝐋𝐨𝐠𝐢𝐧',
                        style: TextStyle(
                          fontSize: 18,
                          color: loginButtonPressed ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                // Signup
                SizedBox(height: 10),
                Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: signupButtonPressed ? Colors.white : Colors.black,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Signup ()));
                    },
                    onTapDown: (details) {
                      setState(() {
                        signupButtonPressed = true;
                      });
                    },
                    onTapUp: (details) {
                      setState(() {
                        signupButtonPressed = false;
                      });
                    },
                    child: Center(
                      child: Text(
                        '𝐒𝐢𝐠𝐧 𝐔𝐩',
                        style: TextStyle(
                          fontSize: 18,
                          color: signupButtonPressed ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
