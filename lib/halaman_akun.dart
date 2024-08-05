import 'package:flutter/material.dart';
import 'package:tukang_com/navbar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AccountPage(),
    );
  }
}

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool isLoggedIn = false; // Status login pengguna
  String email = '';
  String password = '';

  void _login() {
    // Logika autentikasi sederhana
    if (email == 'nydn@gmail.com' && password == '12345') {
      setState(() {
        isLoggedIn = true;
      });
    } else {
      // Tampilkan pesan kesalahan jika login gagal
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Email atau kata sandi salah'),
      ));
    }
  }

  void _logout() {
    setState(() {
      isLoggedIn = false;
      email = '';
      password = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Akun',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: isLoggedIn ? _buildProfile() : _buildLoginForm(),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 3),
    );
  }

  Widget _buildLoginForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          decoration: InputDecoration(labelText: 'Email'),
          onChanged: (value) {
            setState(() {
              email = value;
            });
          },
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Kata Sandi'),
          obscureText: true,
          onChanged: (value) {
            setState(() {
              password = value;
            });
          },
        ),
        SizedBox(height: 20.0),
        Center(
          child: ElevatedButton(
            onPressed: _login,
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(46, 189, 237, 1),
              minimumSize: Size(50, 50),
            ),
            child: Text('Masuk'),
          ),
        ),
      ],
    );
  }

  Widget _buildProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AccountDetails(
          name: 'Narendra Yudan',
          email: 'nydn@gmail.com',
          phone: '0812345678',
        ),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color.fromRGBO(191, 191, 191, 1),
          ),
          child: Column(
            children: <Widget>[
              CustomRowWithIcon(
                text: 'Alamat',
                icon: Icons.location_on,
              ),
              SizedBox(height: 10.0),
              CustomRowWithIcon(
                text: 'Ketentuan Layanan',
                icon: Icons.public,
              ),
            ],
          ),
        ),
        SizedBox(height: 40.0),
        Center(
          child: ElevatedButton(
            onPressed: _logout,
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(55, 165, 255, 1),
              minimumSize: Size(50, 50),
            ),
            child: Text('Keluar'),
          ),
        ),
      ],
    );
  }
}

class AccountDetails extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  AccountDetails({
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color.fromRGBO(191, 191, 191, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AccountDetail(title: 'Name', detail: name),
          SizedBox(height: 10.0),
          AccountDetail(title: 'Email', detail: email),
          SizedBox(height: 10.0),
          AccountDetail(title: 'Phone', detail: phone),
        ],
      ),
    );
  }
}

class AccountDetail extends StatelessWidget {
  final String title;
  final String detail;

  AccountDetail({required this.title, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$title:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Text(
            detail,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomRowWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;

  CustomRowWithIcon({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 24.0,
        ),
        SizedBox(width: 10.0),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
