import 'package:flutter/material.dart';
import 'package:qr_generator/QR/qr_scanner.dart';
import 'package:qr_generator/QR/qrgenerator.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Qr_Generator()));

            },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                child: Text('QR GENERATOR',style: TextStyle(color: Colors.brown),)),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
                onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>QR_Scanner()));
                },
                child: Text('QR SCANNER',style: TextStyle(
                  color: Colors.brown
                ),)),
          ],

        ),
      ),
    );
  }
}
