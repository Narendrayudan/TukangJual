import 'package:flutter/material.dart';
import 'package:tukang_com/navbar.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  // Inisialisasi jumlah barang
  Map<String, int> quantities = {
    'Beras': 1,
    'Sabun': 1,
    'Minyak Goreng': 1,
  };

  // Inisialisasi harga barang
  Map<String, int> prices = {
    'Beras': 100000,
    'Sabun': 25000,
    'Minyak Goreng': 30000,
  };

  // Fungsi untuk menghitung total harga
  int _calculateTotalPrice() {
    int totalPrice = 0;
    quantities.forEach((key, value) {
      totalPrice += value * prices[key]!;
    });
    return totalPrice;
  }

  // Fungsi untuk menambah jumlah barang
  void _incrementQuantity(String item) {
    setState(() {
      quantities[item] = quantities[item]! + 1;
    });
  }

  // Fungsi untuk mengurangi jumlah barang
  void _decrementQuantity(String item) {
    setState(() {
      if (quantities[item]! > 1) {
        quantities[item] = quantities[item]! - 1;
      }
    });
  }

  // Fungsi untuk menghapus item dari pesanan
  void _removeItem(String item) {
    setState(() {
      quantities.remove(item);
      prices.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Pesanan Anda',
          style: TextStyle(color: Colors.black),
        ),
        
        actions: [
          IconButton(
            icon: Icon(Icons.note, color: Colors.black),
            onPressed: () {
              // Tambahkan logika notifikasi di sini
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          for (var item in quantities.keys) 
            _buildOrderContainer(
              item,
              _getDescription(item),
              prices[item]!,
              _getImagePath(item),
            ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Total: Rp ${_calculateTotalPrice()}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(selectedItem: 1),
    );
  }

  Widget _buildOrderContainer(String title, String description, int price, String image) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Image.asset(
              image,
              width: 50,
              height: 50,
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(description),
                  Text('Rp $price'),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () => _decrementQuantity(title),
                      ),
                      Text('${quantities[title]}'),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () => _incrementQuantity(title),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.delete, color: Color.fromARGB(255, 35, 192, 249)),
                        onPressed: () => _removeItem(title),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Tambahkan fungsi untuk mendapatkan deskripsi dan path gambar item jika diperlukan
  String _getDescription(String item) {
    // Kembalikan deskripsi yang sesuai berdasarkan item
    if (item == 'Beras') return '1 KG';
    if (item == 'Sabun') return '5 Buah';
    if (item == 'Minyak Goreng') return '1 Liter';
    return '';
  }

  String _getImagePath(String item) {
    // Kembalikan path gambar yang sesuai berdasarkan item
    if (item == 'Beras') return 'Beras.jpg';
    if (item == 'Sabun') return 'sabun.jpg';
    if (item == 'Minyak Goreng') return 'MinyakGoreng.jpg';
    return '';
  }
}
