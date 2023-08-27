import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_changing/screens/page4.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white,),
        centerTitle: true,
        title:  Text("page3".tr,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("body_text3".tr,style: TextStyle(fontSize: 18),),
            const SizedBox(height: 10,),
            Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: TextButton(onPressed: (){
                Get.to(const Page4());
              },child:  Text("button".tr,style: TextStyle(color: Colors.white),),),
            ),
          ],
        ),
      ),
    );
  }
}
