import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class theker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery= MediaQuery.of(context);
    double screenwidth =mediaQuery.size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/DKR.jpg'),
                  fit: BoxFit.cover,
                ), //BoxDecorationImage
              ), //BoxDecoration
            ), //container
            Center(
              child: Container(
                width: screenwidth/1.5,
                // height: 150,
                // width: 250,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.5),
                    borderRadius: BorderRadius.circular(9.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 5.0),
                    ],
                    shape: BoxShape.rectangle),
                child: Align(
                  heightFactor: 1.0,
                  child: Text("قال رسول الله صلى الله عليه وسلم: (كَلِمَتانِ خَفِيفَتانِ علَى اللِّسانِ، ثَقِيلَتانِ في المِيزانِ، حَبِيبَتانِ إلى الرَّحْمَنِ، سُبْحانَ اللَّهِ وبِحَمْدِهِ، سُبْحانَ اللَّهِ العَظِيم",
                     textAlign: TextAlign.center,
              
                style:  const TextStyle(
                  color: Colors.white,
                  fontWeight:FontWeight.w400,
                  fontFamily: 'Almarai',

                ),

                ),
              ),
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}
