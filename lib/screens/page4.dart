import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white,),
        centerTitle: true,
        title:  Text("page4".tr,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
      ),
      body:  Center(
        child: Text("body_text4".tr,style: TextStyle(fontSize: 18),),
      ),

    );
  }
}
