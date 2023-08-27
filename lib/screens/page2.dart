import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_changing/screens/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white,),
        centerTitle: true,
        title:  Text("page2".tr,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("body_text2".tr,style: TextStyle(fontSize: 18),),
            const SizedBox(height: 10,),
            Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: TextButton(onPressed: (){
                Get.to(const Page3());
              },child:  Text("button".tr,style: TextStyle(color: Colors.white),),),
            ),
          ],
        ),
      ),
    );
  }
}
