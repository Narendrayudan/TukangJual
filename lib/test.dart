import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final int selectedItems;
  const BottomNav({super.key, required this.selectedItems});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  void changeSelectedNavBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/home_page');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/halaman_pesanan');
    } else if (index == 2) {
      //bantuan
    } else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/halaman_akun');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_work), label: 'Beranda'),
        BottomNavigationBarItem(icon: Icon(Icons.today), label: 'Pesanan'),
        BottomNavigationBarItem(icon: Icon(Icons.live_help), label: 'Bantuan'),
        BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Akun')
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: widget.selectedItems,
      showUnselectedLabels: true,
      onTap: changeSelectedNavBar,
    );
  }
}