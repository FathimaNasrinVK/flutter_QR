import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'home.dart';

class Qr_Generator extends StatefulWidget {
  const Qr_Generator({super.key});

  @override
  State<Qr_Generator> createState() => _Qr_GeneratorState();
}

class _Qr_GeneratorState extends State<Qr_Generator> {
  TextEditingController tcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(tcontroller.text.isNotEmpty)
             QrImageView(
                 data: tcontroller.text,size: 200,),
              SizedBox(height: 10,),
              Container(
                child: Container(
                  width: 300,
                  height: 100,
                  child: TextField(
                    controller: tcontroller,
                    decoration: InputDecoration(
                      hintText: 'text',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                ),
                  onPressed: (){
                setState(() {

                });
              }, child: Text('Generate QR',style: TextStyle(
                color: Colors.white
              ),))

            ],
          ),
        ),
      ),
    );
  }
}

