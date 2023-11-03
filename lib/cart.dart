import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => CartViewState();
}

class CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '𝗠𝘆 𝗢𝗿𝗱𝗲𝗿',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 70,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            '𝙊𝙣𝙜𝙤𝙞𝙣𝙜',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 70,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text(
                            '𝐂𝐨𝐦𝐩𝐥𝐞𝐭𝐞𝐝',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Add the Card containing a ListTile with a square picture here
            Card(
              elevation: 3, // Add elevation for the shadow effect
              child: ListTile(
                leading: Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIo9DNF1uO6_b0ZD6JtpNifFkbev4uIEKyJONWPJ3rsnrWpsBe0oaYg3FVy8rAXvONN6Y&usqp=CAU'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                title: Text(
                  " 𝙃𝙖𝙣𝙙𝙗𝙖𝙜",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "\n𝙂𝙪𝙘𝙘𝙞 𝙃𝙖𝙣𝙙𝙗𝙖g\n Size: M \n Color: white/brown/red ",
                  style: TextStyle(color: const Color.fromARGB(255, 172, 147, 147)),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 5),
                    Text("\$69.99", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
             SizedBox(height: 17),
            // Add the Card containing a ListTile with a square picture here
            Card(
              elevation: 3, // Add elevation for the shadow effect
              child: ListTile(
                leading: Container(
                  width: 65,
                  height: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.probeautyonline.com/cdn/shop/products/aqua-luminous-foundatiion_1024x1024.jpg?v=1610995096'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                title: Text(
                  " Luminous Perfecting Foundation",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "\n𝗟𝘂𝗺𝗶𝗻𝗼𝘂𝘀 𝗙𝗼𝘂𝗻𝗱𝗮𝘁𝗶𝗼𝗻\n Color: lvery6/fair/fijji ",
                  style: TextStyle(color: const Color.fromARGB(255, 172, 147, 147)),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
            
                    SizedBox(width: 5),
                    Text("\$48.99", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 22),
            // Add the Card containing a ListTile with a square picture here
            Card(
              elevation: 3, // Add elevation for the shadow effect
              child: ListTile(
                leading: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUYXS3SPiJbvnw8LdvmvDseLmM3ajSI29Tow&usqp=CAU'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                title: Text(
                  "W𝐚𝐭𝐞𝐫 B𝐨𝐭𝐭𝐥𝐞",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "\nHydro Flask \n 800ml\n Color: purple/pink/blue ",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 5),
                    Text("\$34.99", style: TextStyle(fontWeight: FontWeight.bold)),
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
