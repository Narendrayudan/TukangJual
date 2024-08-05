import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tukang_com/navbar.dart';

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
        backgroundColor: Colors.white,
        leading: MyLeading(),
        title: MyTitle(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                MyHeader(),
                Padding(
                  padding: EdgeInsets.only(top: 120),
                  child: Center(
                    child: Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 2),
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 100,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(46, 189, 237, 1),
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: Icon(
                                                Icons.access_time,
                                                size: 80,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text("Kebutuhan Pokok"),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 100,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(17, 176, 234, 1),
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: Icon(
                                                Icons.discount,
                                                size: 80,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text("Discount"),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 100,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(46, 189, 237, 1),
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: Icon(
                                                Icons.phone_android,
                                                size: 80,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text("Elektronik"),
                                          ],
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
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1, 1),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Image.asset(
                'Banner.png', 
                fit: BoxFit.cover, 
              ),
            ),
            Container(
  padding: EdgeInsets.only(left: 40.0, top: 10.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Kebutuhan Rumah Tangga",
        textAlign: TextAlign.start,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Penataan teks ke kiri
        children: [
          // Jarak antara ikon dan teks
          Text(
            "Mungkin Yang Anda Butuhkan",
            textAlign: TextAlign.start,
          ),
          Expanded(child: Container()),                
                        ]
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child: Image.asset(
                                    'sabun.jpg',
                                    scale: 1,
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('Beras.jpg', scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('gula.jpg', scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child: Image.asset('MinyakGoreng.jpg',
                                      scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('sampo.jpg', scale: 1)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Otomotif",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(children: [
                          Text("Mungkin anda membutuhkan"),
                          Expanded(child: Container()),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_right))
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child: Image.asset(
                                    'Ducati.jpg',
                                    scale: 1,
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('McLaren.png', scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('honda.png', scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child: Image.asset('yamaha.jpg',
                                      scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('suzuki.jpg', scale: 1)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  
                  SizedBox(
              height: 50,
            ),

                  Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1, 1),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Image.asset(
                'Berita.png', 
                fit: BoxFit.cover, 
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(children: [
                          Text("Berita"),
                          Expanded(child: Container()),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_right))
                        ]),
                        SizedBox(
                          
                          height: 5,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child: Image.asset(
                                    'eradigital.jpg',
                                    scale: 1,
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('pembayaran.jpg', scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('Flashsale.jpg', scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child: Image.asset('Tilang.jpeg',
                                      scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('SOPKerja.jpg', scale: 1)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(children: [
                          Text("Tips"),
                          Expanded(child: Container()),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_right))
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [    
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child: Image.asset(
                                    'kesehatan.jpg',
                                    scale: 1,
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('HidupSehat.jpg', scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('TipsBahagia.jpg', scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child: Image.asset('TipsHarmoni.jpg',
                                      scale: 1)),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child:
                                      Image.asset('Puasa.jpg', scale: 1)
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 0),
    );
  }

}



class MyLeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            Icons.directions_run_sharp,
            color: Colors.black,
            size: 35,
          ),
        ),
      ],
    );
  }
}

class MyTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tukang",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          "Jual",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(46, 189, 237, 1),
          ),
        ),
        
      ],
      
    );
  }
  
}

class MyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(46, 189, 237, 1),
      height: 150,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 20.0, bottom: 16.0, left: 20.0, right: 24.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Hi, Narendra Yudan",
            style: TextStyle(
              fontSize: 24, // Ubah sesuai kebutuhanmu
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            "Pilih Barang Yang Anda Cari",
            style: TextStyle(
              fontSize: 18, // Ubah sesuai kebutuhanmu
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
        ],
      ),
    )
    );
     
  }
}
