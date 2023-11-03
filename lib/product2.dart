import 'package:flutter/material.dart';

class Product2View extends StatelessWidget {
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

                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                 'https://5.imimg.com/data5/SELLER/Default/2021/9/YF/YM/LN/16557313/2-500x500.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   '𝗦𝗮𝘁𝗶𝗻 𝘀𝗶𝗹𝗸 𝗵𝗮𝗶𝗿 𝘀𝗰𝗿𝘂𝗻𝗰𝗵𝗶𝗲𝘀',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                     'Soft velvet silky satin',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          for (int i = 0; i < 4; i++)
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                          Text(
                            ' (458 Reviews)',
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
                                style: TextStyle(color: Colors.white)),
                          ),
                          SizedBox(height: 9),
                          Text(
                            ' 𝐈𝐧 𝐬𝐭𝐨𝐜𝐤',
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
                    '𝘿𝙚𝙨𝙘𝙧𝙞𝙥𝙩𝙞𝙤𝙣',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '𝙃𝙞𝙜𝙝-𝙦𝙪𝙖𝙡𝙞𝙩𝙮 𝙎𝙞𝙡𝙠 𝙢𝙖𝙩𝙚𝙧𝙞𝙖𝙡: 𝙁𝙍𝙀𝙀 𝙎𝙄𝙕𝙀 𝙁𝙊𝙍 𝘼𝙇𝙇& 𝙏𝙍𝘼𝘾𝙀𝙇𝙀𝙎𝙎, 𝙎𝙊𝙁𝙏 & 𝙍𝙄𝘾𝙃.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            
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
                        '\$79.99',
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
                          '𝐀𝐝𝐝 𝐭𝐨 𝐂𝐚𝐫𝐭',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
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
