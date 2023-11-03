import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}
class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 4, // Add a shadow to the card
              margin: EdgeInsets.all(16), // Add margin around the card
              child: ListTile(
                leading: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA2cw0AloTL-cAo9EtUKmLDktjH5V_JtfyJVrMDI9_niyeums1VnbrPAeZcHFhBIwZywM&usqp=CAU',
                  width: 70,
                  height: 70, 
                  fit: BoxFit.cover, 
                ),
                title: Text(
                  '𝗔𝗺𝗻𝗮 𝗞𝗮𝘀𝗵𝗺𝗶𝗿𝗶',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'amnakashmiri06@gmail.com',
                  style: TextStyle(color: const Color.fromARGB(255, 221, 175, 175)), 
                ),
              ),
            ),
            Card(
              elevation: 4, // Add a shadow to the card
              margin: EdgeInsets.all(16), // Add margin around the card
              child: Column(
                children: [
                  _buildIconBox(Icons.person, 'Profile Detail'),
                  _buildIconBox(Icons.shopping_bag, 'My Order'),
                  _buildIconBox(Icons.favorite, 'My Favourites'),
                  _buildIconBox(Icons.directions_bus, 'Shipping Address'),
                  _buildIconBox(Icons.card_travel_sharp, 'My Card'),
                  _buildIconBox(Icons.settings, 'Settings'),
                ],
              ),
            ),
            Card(
              elevation: 4, // Add a shadow to the card
              margin: EdgeInsets.all(16), // Add margin around the card
              child: Column(
                children: [
                  _buildIconBox(Icons.message, 'message'),
                  _buildIconBox(Icons.security, 'Privacy Policy'),
                  _buildIconBox(Icons.shopping_cart, 'My Cart'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildIconBox(IconData icon, String text) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromARGB(255, 15, 15, 15)), // Add a light border
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        Icon(icon, color: Colors.grey),
        SizedBox(width: 16),
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(), 
        Icon(Icons.arrow_forward_ios, color: Colors.grey), 
      ],
    ),
  );
}
  Widget _buildText(String text) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

