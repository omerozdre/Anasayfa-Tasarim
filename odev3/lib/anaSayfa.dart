import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:odev3/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flowers",style: TextStyle(color: anaRenk, fontSize: 30, fontFamily: "bevlg"),),
        backgroundColor: yaziRenk1,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("resimler/cicek.jpg",width: 500,height: 300,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text("Fresh White Flower",style: TextStyle(fontSize: 30,color: yaziRenk1,fontWeight: FontWeight.bold),
            ),
          ),
           Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16.0,left: 16,right: 16),
                child: Text("Lorem Ipsum is simply dummy text of the thingprinting "
                    "and typesetting industry. Lorem Ipsum has been the industry's.",style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text("Color Option",style: TextStyle(fontSize: 20,color: yaziRenk1,fontWeight: FontWeight.bold),
                ),
              ),
            ],
           ),
           Padding(
             padding: const EdgeInsets.only(top: 4.0),
             child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: "white"),
                Chip(icerik: "Red"),
                Chip(icerik: "Green"),
                Chip(icerik: "Blue"),
              ],
             ),
           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                SizedBox(width: 200,height: 50,
                  child: TextButton(onPressed: (){},
                    style: TextButton.styleFrom(
                        backgroundColor: butonRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                    ),
                    child: Text("Buy \$ 20",style: TextStyle(color: anaRenk,fontSize: 18),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      style: TextButton.styleFrom(backgroundColor: butonRenk),
      child: Text(icerik,style: TextStyle(color: anaRenk),),
    );
  }
}
