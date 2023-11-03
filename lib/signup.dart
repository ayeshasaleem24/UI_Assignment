import 'package:flutter/material.dart';
import 'package:projectui/successful.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '𝐓𝐫𝐞𝐧𝐝𝐲 𝐓𝐫𝐞𝐚𝐬𝐮𝐫𝐞𝐬',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

  
            Align(
              alignment: Alignment.centerLeft, 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SignUp',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('𝗖𝗿𝗲𝗮𝘁𝗲 𝗮 𝗻𝗲𝘄 𝗮𝗰𝗰𝗼𝘂𝗻𝘁'),
                  SizedBox(height: 20),
                ],
              ),
            ),
            TextField(
              controller: _userNameController,
              decoration: InputDecoration(
                labelText: '𝗨𝘀𝗲𝗿 𝗡𝗮𝗺𝗲',
                suffixIcon: Icon(Icons.check_circle),
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: '𝙀𝙢𝙖𝙞𝙡'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: '𝗣𝗮𝘀𝘀𝘄𝗼𝗿𝗱',
                suffixIcon: Icon(Icons.visibility_off),
              ),
              obscureText: true,
            ),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: '𝐂𝐨𝐧𝐟𝐢𝐫𝐦 𝐏𝐚𝐬𝐬𝐰𝐨𝐫𝐝',
                suffixIcon: Icon(Icons.visibility_off),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Checkbox(value: false, onChanged: (bool? value) {}),
                Text("𝘽𝙮 𝙘𝙧𝙚𝙖𝙩𝙞𝙣𝙜 𝙖𝙣 𝙖𝙘𝙘𝙤𝙪𝙣𝙩, 𝙮𝙤𝙪 𝙖𝙜𝙧𝙚𝙚 𝙩𝙤 𝙤𝙪𝙧 𝙩𝙚𝙧𝙢𝙨 & 𝙘𝙤𝙣𝙙𝙞𝙩𝙞𝙤𝙣𝙨",
                style: TextStyle(
                    color: Color.fromARGB(176, 59, 56, 56),
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
              
              Navigator.push(
               context,
              MaterialPageRoute(builder: (context) => Successful()),
              );

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}