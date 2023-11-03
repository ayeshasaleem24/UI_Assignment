import 'package:flutter/material.dart';

class Product1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.shopping_bag,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // Handle bag icon action
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                'https://static-01.daraz.pk/p/58f47c6b2406113ffd5cc8c90ac6adfe.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '𝙏𝙧𝙚𝙣𝙙𝙞𝙣𝙜 𝘽𝙪𝙩𝙩𝙚𝙧𝙛𝙡𝙮 𝙀𝙖𝙧𝙧𝙞𝙣𝙜',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Ｔｒｅｎｄ Ｔｒｉｂｅ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                          Text(
                            ' (178 Reviews)',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                              padding: EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 8.0,
                              ),
                            ),
                            onPressed: () {
                              // Handle size button click
                            },
                            child: Text('- 1 +',
                                style: TextStyle(color: Color.fromARGB(255, 192, 188, 188))),
                          ),
                          SizedBox(height: 9),
                          Text(
                            ' 𝗜𝗻 𝗦𝘁𝗼𝗰𝗸',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
        
    
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '𝑫𝒆𝒔𝒄𝒓𝒊𝒑𝒕𝒊𝒐𝒏',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '𝘼𝙧𝙩𝙞𝙛𝙞𝙘𝙞𝙖𝙡 𝙨𝙞𝙡𝙫𝙚𝙧 𝙚𝙖𝙧𝙧𝙞𝙣𝙜𝙨 𝙏𝙧𝙚𝙣𝙙𝙞𝙣𝙜 𝘽𝙪𝙩𝙩𝙚𝙧𝙛𝙡𝙮 𝙨𝙩𝙮𝙡𝙚 𝙋𝙧𝙚𝙢𝙞𝙪𝙢 𝙦𝙪𝙖𝙡𝙞𝙩𝙮 𝙜𝙪𝙖𝙧𝙖𝙣𝙩𝙚𝙚𝙙s.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            // Add Total Price and Add to Cart button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '𝐓𝐨𝐭𝐚𝐥 𝐏𝐫𝐢𝐜𝐞',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '\$158.99',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Add to Cart button click
                    },
                    style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                      primary: Colors.black,
                      minimumSize: Size(120, 60),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          '𝘼𝙙𝙙 𝙩𝙤 𝘾𝙖𝙧𝙩',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
