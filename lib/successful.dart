import 'package:flutter/material.dart';
import 'package:projectui/navigation.dart';

class Successful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.check_circle,
              size: 90,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            Text(
              '𝐒𝐮𝐜𝐜𝐞𝐬𝐬𝐟𝐮𝐥',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '𝐘𝐨𝐮 𝐡𝐚𝐯𝐞 𝐬𝐮𝐜𝐜𝐞𝐬𝐬𝐟𝐮𝐥𝐥𝐲 𝐫𝐞𝐠𝐢𝐬𝐭𝐞𝐫𝐞𝐝 𝐢𝐧 𝐨𝐮𝐫 𝐚𝐩𝐩 𝐚𝐧𝐝 𝐜𝐚𝐧 𝐬𝐭𝐚𝐫𝐭 𝐮𝐬𝐢𝐧𝐠 𝐢𝐭.',
              style: TextStyle(
                fontSize: 21, color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 150),
           Container(
             width: 400,
             height: 70, 
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(25),  
            ),
           child: ElevatedButton(
           onPressed: () {
              Navigator.push(
               context,
              MaterialPageRoute(builder: (context) => BottomNavigation()),
              );          
        },
      style: ElevatedButton.styleFrom(
      primary: Colors.black, // Black color for the button
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25), // Matches the container's border radius
      ),
    ),
        child: Text('𝐒𝐭𝐚𝐫𝐭 𝐒𝐡𝐨𝐩𝐩𝐢𝐧𝐠'),
       ),
     ),
          ],
        ),
      ),
    );
  }
}
