import 'package:flutter/material.dart';

class NotifView extends StatefulWidget {
  const NotifView({Key? key}) : super(key: key);

  @override
  State<NotifView> createState() => _NotifViewState();
}

class _NotifViewState extends State<NotifView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          // Notification Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                // Notification Icon or Image
                Icon(
                  Icons.notifications, // You can use any notification icon here
                  size: 48,
                  color: Colors.black,
                ),
                SizedBox(width: 16),
                // Notification Text
                Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // First ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyW2MAFrFnfa_bT1jSttLbmvfotJcqQyCCGg&usqp=CAU',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              "Amna",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '"The customer service was outstanding, and the product was exactly what I was looking for.',
              style: TextStyle(color: Colors.grey),
            ),
          ),

          // Light Color Line
          Divider(color: Colors.grey, thickness: 1, height: 1),

          // Second ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaB0KTQq64micjh_obvFWVF6Hjzzc-E7Zyqg&usqp=CAU',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'armeen',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'I highly recommend this business.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // Light Color Line
          Divider(color: Colors.grey, thickness: 1, height: 1),

          // Second ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'ali hassan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "I highly recommend this business.",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // Light Color Line
          Divider(color: Colors.grey, thickness: 1, height: 1),

          // Second ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLcLXIS2Ts2FzITFz2LvyGOIfKws4nY6SwXWff2mLU7oWih0a-Ppb3_kN6RcVv772J0Y&usqp=CAU',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'ayesha ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
             "The customer service was outstanding, and the product was exactly what I was looking for.",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // Light Color Line
          Divider(color: Colors.grey, thickness: 1, height: 1),

          // Second ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS4DPtutUbtcvBB2O1n-jxPCu-jGHUG0OVnvhN3BXwldECKuC_AibcOr8g5HPFKDyOyts&usqp=CAU",
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'laiba',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "The product quality is consistently outstanding, exceeding my expectations every time.",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // Light Color Line
          Divider(color: Colors.grey, thickness: 1, height: 1),

          // Second ListTile
          
          // Second ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://miro.medium.com/v2/resize:fit:1400/0*qF0r7bmypo45Yit5',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Noor ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "The customer service was outstanding, and the product was exactly what I was looking for.",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
