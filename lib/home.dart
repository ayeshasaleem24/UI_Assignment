import 'package:flutter/material.dart';
import 'package:projectui/product1.dart';
import 'package:projectui/product2.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController _pageController = PageController();
  final List<String> cardImageUrls = [
'https://images01.nicepagecdn.com/page/45/94/website-template-preview-45949.jpg',
"https://media.istockphoto.com/id/1158358904/photo/spraying-perfume-on-dark-background-closeup-image.jpg?s=612x612&w=0&k=20&c=FgO1tJIxW_fVH0e7YHb-oMb_iDshELnMR6qXGILQFcU="
  ];

  final List<String> productImageUrls = [
    'https://static-01.daraz.pk/p/58f47c6b2406113ffd5cc8c90ac6adfe.jpg',
    'https://5.imimg.com/data5/SELLER/Default/2021/9/YF/YM/LN/16557313/2-500x500.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( // Make the entire page scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200, // Adjust the height as needed
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cardImageUrls.map((imageUrl) {
                  return buildImage(imageUrl);
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrival',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 200, // Adjust the height as needed
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
              GestureDetector(
              onTap: () {
             // Navigate to ProductView when the first tile is pressed
             Navigator.push(context, MaterialPageRoute(builder: (context) => Product1View()));
             },
             child: buildProductCard(productImageUrls[0],'𝙏𝙧𝙚𝙣𝙙𝙞𝙣𝙜 𝘽𝙪𝙩𝙩𝙚𝙧𝙛𝙡𝙮 𝙀𝙖𝙧𝙧𝙞𝙣𝙜', 'Trend Tribe', '\$158.99'),
            ),
             GestureDetector( 
              onTap: () {
             // Navigate to ProductView when the first tile is pressed
             Navigator.push(context, MaterialPageRoute(builder: (context) => Product2View()));
             },
             child: buildProductCard(productImageUrls[1], '𝗦𝗮𝘁𝗶𝗻 𝘀𝗶𝗹𝗸 𝗵𝗮𝗶𝗿 𝘀𝗰𝗿𝘂𝗻𝗰𝗵𝗶𝗲𝘀', 'soft silky,', '\$79.99'),
            ),      

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '𝙋𝙤𝙥𝙪𝙡𝙖𝙧',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '𝙑𝙞𝙚𝙬 𝘼𝙡𝙡',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
           SizedBox(height: 16),
// Add the ListTile with a square picture here
ListTile(
  leading: Container(
    width: 70, 
    height: 70, 
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://www.heygirl.pk/cdn/shop/products/smashboxbestlife.jpg?v=1632108999&width=1946'),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(10), // You can adjust the radius value to make it rounder
    ),
  ),
  title: Text("𝐌𝐚𝐭𝐭𝐞 𝐋𝐢𝐪𝐮𝐢𝐝 𝐋𝐢𝐩𝐬𝐭𝐢𝐜𝐤", style: TextStyle(color: const Color.fromARGB(255, 97, 93, 93), fontWeight: FontWeight.bold)), // Set fontWeight to FontWeight.bold
  subtitle: Text("Beautiful Matte pink color", style: TextStyle(color: const Color.fromARGB(255, 126, 111, 111))),
  trailing: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.yellow, size: 20),
      Text("(3.2)"),
      SizedBox(width: 5),
      Text("\$20.99", style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
),
SizedBox(height: 6),
// Add the ListTile with a square picture here
ListTile(
  leading: Container(
    width: 70, // Adjust the width as needed for a square shape
    height: 70, // Adjust the height as needed for a square shape
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://static-01.daraz.pk/p/2c1a63e56a5b6a6c8d7a48fce396cfc2.jpg_750x750.jpg_.webp'),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(10), // You can adjust the radius value to make it rounder
    ),
  ),
  title: Text("𝐁𝐥𝐮𝐞𝐭𝐨𝐨𝐭𝐡 𝐇𝐞𝐚𝐝𝐩𝐡𝐨𝐧𝐞", style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold)), // Set fontWeight to FontWeight.bold
  subtitle: Text("Cute Cat Ear Girls Headphone ", style: TextStyle(color: Color.fromARGB(255, 117, 104, 104))),
  trailing: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.yellow, size: 20),
      Text("(4.3)"),
      SizedBox(width: 5),
      Text("\$35.99", style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
),
SizedBox(height: 6),
// Add the ListTile with a square picture here
ListTile(
  leading: Container(
    width: 60, // Adjust the width as needed for a square shape
    height: 60, // Adjust the height as needed for a square shape
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKLH0ert0WkAfj_JuARg5Y_eI2Fb-69_6UCg&usqp=CAU'),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(10), // You can adjust the radius value to make it rounder
    ),
  ),
  title: Text("𝘾𝙝𝙤𝙘𝙤𝙡𝙖𝙩𝙚", style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold)), // Set fontWeight to FontWeight.bold
  subtitle: Text("𝐂𝐚𝐧𝐝𝐲 𝐁𝐚𝐫", style: TextStyle(color: Colors.grey[600])),
  trailing: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.yellow, size: 20),
      Text("(3.5"),
      SizedBox(width: 5),
      Text("\$3.99", style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String imageUrl) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
      width: 300.0, // Adjust the width as needed
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
Widget buildProductCard(String productUrl, String brand, String product, String price) {
  return Container(
    margin: EdgeInsets.only(left: 16.0, right: 16.0),
    width: 200.0, // Adjust the width as needed
    child: Card(
      child: Column(
        children: [
          Container(
            height: 100.0, // Adjust the height as needed
            width: double.infinity,
            child: ClipRRect( // Add ClipRRect to round the corners
              borderRadius: BorderRadius.circular(10), // You can adjust the radius value to control the roundness
              child: Image.network(
                productUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                brand,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 9),
              Text(
                product,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 3),
              Text(
                price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

}

