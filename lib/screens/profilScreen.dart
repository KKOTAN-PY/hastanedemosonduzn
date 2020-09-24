import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


import 'mainScreen.dart';

class ProfilScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _profilScreen();
  }

}

class _profilScreen extends State {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
          elevation: 0.0
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              myProfilInformationImage(),
              Divider(),
              myProfilInformationText(),
              Divider(),
              bilgilerimCardWidget(),
            ],
          ),
        ),
      ),

    );
  }



  optionButton(){
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: PopupMenuButton(
        onSelected: _selecProcess,
        itemBuilder: (BuildContext context)=><PopupMenuEntry>[
          PopupMenuItem(
            value: 0,
            child: Text("Bilgilerim."),
          ),
          PopupMenuItem(
            value: 1,
            child: Text("Çift Doğrulama."),
          ),
          PopupMenuItem(
            value: 2,
            child: Text("Şifre Değiştir."),
          ),
          PopupMenuItem(
            value: 3,
            child: Text("Çıkış."),
          ),
        ],

      ),
    );
  }

  void _selecProcess(value) async{
    print(value);
  }

  profilCardWidget() {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width*9,
        height: 200,
        child: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text("Adı :"),
                ],
              ),
              Row(
                children: [
                  Text("SoyAdı :"),
                ],
              ),
              Row(
                children: [
                  Text("Tel :"),
                ],
              ),
              Row(
                children: [
                  Text("Ülke :"),
                ],

              ),
            ],
          ),
        ),
      ),
    );

  }



  blogButton() {
    return RaisedButton(
      child: Text("Blog"),
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => MainScreen()),);

      },
    );
  }

  myProfilInformationImage() {
    return  ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        height: MediaQuery.of(context).size.height*0.30,
        width: MediaQuery.of(context).size.width*2  ,
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            child: CircleAvatar(
              backgroundImage:AssetImage("assets/image/profileavatar.png"),
              backgroundColor: Colors.white,
            ),
          ),),
      ),
    );
  }
  myProfilInformationText() {

    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Text("Köksal Kotan",style: TextStyle(fontSize: 20, color: Colors.black)),
        ],
      ),
    );
  }

  bilgilerimCardWidget() {
    
  }
}