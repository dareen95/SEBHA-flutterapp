import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:my_app/pages/theker.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Tasbeha(),
    ));

class Tasbeha extends StatefulWidget {
  const Tasbeha({Key? key}) : super(key: key);

  @override
  _TasbehaState createState() => _TasbehaState();
}

class _TasbehaState extends State<Tasbeha> {
  int _container = 0;

  void IncrementCointer() {
    setState(() {
      _container++;
    });
  }

  void ReseteCounter() {
    _container = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/BGG.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' $_container',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
              Text(
                'عدد التسابيح',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 27),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton.extended(
                heroTag: null,
                onPressed: () {
                  //here call the method
                  ReseteCounter();
                },
                label: Text(
                  'تصفير',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: Icon(Icons.settings_backup_restore),
                backgroundColor: Colors.red,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.1, 0.5),
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                //here call the method
                IncrementCointer();
              },
              label: Text(
                'تسبيح',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              icon: Icon(Icons.fingerprint),
              backgroundColor: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                // Get.to(theker());
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => theker()));

                //here call the method
              },
              label: Text(
                'ذكر',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              icon: Icon(Icons.book),
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class Textstyle {}
