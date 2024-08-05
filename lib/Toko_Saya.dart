import 'package:flutter/material.dart';
import 'package:tukang_com/navbar.dart';

class MyStorePage extends StatefulWidget {
  @override
  _MyStorePageState createState() => _MyStorePageState();
}

class _MyStorePageState extends State<MyStorePage> {
  // Contoh data toko dan produk
  String storeName = 'Toko Saya';
  String storeDescription = 'Menjual barang-barang kebutuhan Motor';
  List<Product> products = [
    Product(name: 'Sparepart', description: '1 Buah', price: 200000, image: 'suzuki.jpg'),
    Product(name: 'Sparepart', description: '1 Buah', price: 250000, image: 'honda.png'),
    Product(name: 'Sparepart', description: '1 Buah', price: 300000, image: 'yamaha.jpg'),
  ];

  // Fungsi untuk menambah produk baru
  void _addNewProduct(Product product) {
    setState(() {
      products.add(product);
    });
  }

  // Fungsi untuk menghapus produk
  void _removeProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Toko Saya',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: () {
              // Navigasi ke halaman tambah produk baru
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddProductPage(onAddProduct: _addNewProduct)),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  storeName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(storeDescription),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return _buildProductContainer(products[index], index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductContainer(Product product, int index) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Image.asset(
              product.image,
              width: 50,
              height: 50,
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(product.description),
                  Text('Rp ${product.price}'),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete, color: Color.fromARGB(255, 54, 168, 244)),
              onPressed: () => _removeProduct(index),
            ),
          ],
        ),
      ),
    );
  }
}

// Model produk
class Product {
  final String name;
  final String description;
  final int price;
  final String image;

  Product({required this.name, required this.description, required this.price, required this.image});
}

// Halaman untuk menambah produk baru
class AddProductPage extends StatefulWidget {
  final Function(Product) onAddProduct;

  AddProductPage({required this.onAddProduct});

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _imageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _imageController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final newProduct = Product(
        name: _nameController.text,
        description: _descriptionController.text,
        price: int.parse(_priceController.text),
        image: _imageController.text,
      );
      widget.onAddProduct(newProduct);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Produk Baru'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nama Produk'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Harap masukkan nama produk';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Deskripsi Produk'),
              ),
              TextFormField(
                controller: _priceController,
                decoration: InputDecoration(labelText: 'Harga Produk'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Harap masukkan harga produk';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Harap masukkan angka yang valid';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _imageController,
                decoration: InputDecoration(labelText: 'Path Gambar'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submit,
                child: Text('Tambah Produk'),
              ),
            ],
          ),
        ),
      ),
            bottomNavigationBar: BottomNav(selectedItem: 2),

    );
  }
}
