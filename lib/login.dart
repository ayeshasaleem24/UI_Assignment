import 'package:flutter/material.dart';
import 'package:projectui/successful.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isInputValid = false;

  void onLoginPressed(BuildContext context) {
    String email = emailController.text;

    setState(() {
      isInputValid = true;
    });

    // Navigate to the successful screen if login is successful
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Successful()),
    );

    print("Correct Email");
    print("Email: ${emailController.text}");
    print("Password: ${passwordController.text}");

    emailController.text = "";
    passwordController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Your UI code remains unchanged

            Center(
              child: Column(
                children: [
                  Text(
                    "𝐓𝐫𝐞𝐧𝐝𝐲 𝐓𝐫𝐞𝐚𝐬𝐮𝐫𝐞𝐬",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  SizedBox(height: 4),
                  Text(
                    '𝓦𝓮𝓵𝓬𝓸𝓶𝓮',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '𝐩𝐥𝐞𝐚𝐬𝐞 𝐥𝐨𝐠𝐢𝐧 𝐨𝐫 𝐬𝐢𝐠𝐧𝐮𝐩 𝐭𝐨 𝐜𝐨𝐧𝐭𝐢𝐧𝐮𝐞 𝐨𝐮𝐫 𝐚𝐩𝐩',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.check_circle),
                  labelText: '𝗘𝗺𝗮𝗶𝗹',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.check_circle),
                  labelText: '𝗣𝗮𝘀𝘀𝘄𝗼𝗿𝗱',
                ),
              ),
            ),
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: ElevatedButton(
                onPressed: () {
                  onLoginPressed(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text('𝗟𝗼𝗴𝗶𝗻'),
              ),
            ),
            SizedBox(height: 20),
            Text('Or'),
            SizedBox(height: 20),

            // Facebook Button
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 32, 97, 150),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text('Continue with 𝐅𝐚𝐜𝐞𝐛𝐨𝐨𝐤'),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            // Google Button
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: ElevatedButton(
                onPressed: () {
                 onLoginPressed(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.g_translate,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Continue with 𝐆𝐨𝐨𝐠𝐥𝐞',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            // Apple Button
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // onGoogleLoginPressed(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.apple,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Continue with 𝐀𝐩𝐩𝐥𝐞',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
