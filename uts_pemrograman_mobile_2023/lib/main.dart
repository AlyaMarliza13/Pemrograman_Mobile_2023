import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Link Aja',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Link Aja'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top bar
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        '5',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'SOFYAN NOOR ARIEF,S.ST, M.KOM',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        '10.184',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Bottom bar
            Container(
              height: 600,
              child: ListView(
                children: [
                  // Topup
                  ListTile(
                    leading: Icon(Icons.money_off),
                    title: Text('Topup'),
                    subtitle: Text('Isi saldo LinkAja Anda'),
                    onTap: () {
                      // Go to topup page
                    },
                  ),

                  // Send money
                  ListTile(
                    leading: Icon(Icons.send),
                    title: Text('Send Money'),
                    subtitle: Text('Kirim uang ke teman atau keluarga'),
                    onTap: () {
                      // Go to send money page
                    },
                  ),

                  // Ticket code
                  GestureDetector(
                    onTap: () {
                      // Go to ticket code page
                    },
                    child: ListTile(
                      leading: Icon(Icons.ticket),
                      title: Text('Ticket Code'),
                      subtitle:
                          Text('Beli tiket pesawat, kereta, atau hiburan'),
                    ),
                  ),

                  // See all
                  ListTile(
                    leading: Icon(Icons.more_horiz),
                    title: Text('See All'),
                    subtitle: Text('Lihat semua fitur LinkAja'),
                    onTap: () {
                      // Go to all features page
                    },
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
