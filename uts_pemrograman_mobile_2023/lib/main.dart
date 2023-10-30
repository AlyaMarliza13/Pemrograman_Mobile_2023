import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinkAja'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildHeader(),
            _buildBalance(),
            _buildTransactions(),
            _buildPromotions(),
            _buildBottomNavBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                '06.191',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'LinkAja',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Image.asset('assets/images/logo.png'),
          width: 50.0,
          height: 50.0,
        ),
      ],
    );
  }

  Widget _buildBalance() {
    return Row(
      children: [
        Text(
          'Saldo Anda',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        Spacer(),
        Text(
          'Rp 10.184',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildTransactions() {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text('Transaksi'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text('Pembayaran'),
          ),
        ),
      ],
    );
  }

  Widget _buildPromotions() {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset('assets/images/iklan1.jpeg'),
          Image.asset('assets/images/iklan2.jpeg'),
          Image.asset('assets/images/iklan3.jpeg'),
        ],
      ),
    );
  }
}

Widget _buildBottomNavBar() {
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/bonus_saldo.png'),
        label: 'Bonus Saldo',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/home_icon.png'),
        label: 'Beranda',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/history_icon.png'),
        label: 'Riwayat',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/pay_icon.png'),
        label: 'Bayar',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/inbox_icon.png'),
        label: 'Inbox',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/account_icon.png'),
        label: 'Akun',
      ),
    ],
    currentIndex: 0,
    onTap: (index) {},
  );
}
