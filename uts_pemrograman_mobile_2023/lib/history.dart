import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const TransactionHistory());
}

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transaction History',
      home: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                'Custom Transaction History',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    child: const Text(
                      'In Progress',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2,
                          color: Color.fromARGB(238, 175, 76, 76),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Completed',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Image.network('assets/images/logo.png'),
                ),
                Text(
                  'All transactions are successfully completed!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 50),
                  child: Text(
                    'Any pending transactions will appear on this page.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ],
            ),

            //==== Bottom Bar =====//
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.5, color: Colors.grey.shade300),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomBottomBarItem(
                    icon: FontAwesomeIcons.home,
                    title: "Home",
                    selected: true,
                  ),
                  CustomBottomBarItem(
                    icon: FontAwesomeIcons.history,
                    title: "History",
                    selected: false,
                  ),
                  CustomBottomBarItem(
                    icon: FontAwesomeIcons.creditCard,
                    title: "Pay",
                    selected: false,
                  ),
                  CustomBottomBarItem(
                    icon: FontAwesomeIcons.inbox,
                    title: "Inbox",
                    selected: false,
                  ),
                  CustomBottomBarItem(
                    icon: FontAwesomeIcons.user,
                    title: "Account",
                    selected: false,
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

class CustomBottomBarItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final bool selected;

  const CustomBottomBarItem({
    required this.iconUrl,
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Container(
            width: 25,
            margin: const EdgeInsets.only(bottom: 7),
            child: Image.network(iconUrl),
          ),
          Container(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w800,
                color: selected ? Colors.blue : Colors.grey[700],
              ),
            ),
          )
        ],
      ),
    );
  }
}
