import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_changing/controller/button_controller.dart';
import 'package:theme_changing/screens/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

ButtonController controller = Get.put(ButtonController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.defaultDialog(
                title: "Select Language",
                content: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.updateLocale(const Locale("hi", "IN"));
                        },
                        child: const Text("Hindi")),
                    TextButton(
                        onPressed: () {
                          Get.updateLocale(const Locale("en", "US"));
                        },
                        child: const Text("English")),
                    TextButton(
                        onPressed: () {
                          Get.updateLocale(const Locale("Guj", "IN"));
                        },
                        child: const Text("Gujarati")),
                  ],
                ),
              );
            },
            icon: const Icon(
              Icons.translate,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Text(
          "title".tr,
          style: const TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
                );
                controller.change.value = !controller.change.value;
              },
              icon: Obx(() => Icon(
                    controller.change.value ? Icons.light_mode : Icons.dark_mode_outlined,
                    color: Colors.white,
                  )))
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset("assets/profile.png"),
            ),
            const SizedBox(
              height: 50,
            ),
            Text("${"Name".tr}:-  ${"atul".tr}"),
            const SizedBox(
              height: 10,
            ),
            Text("${"Email".tr}:-  catul1202112@gmail.com"),
            const SizedBox(
              height: 10,
            ),
            Text("${"Mobile".tr}:-  9721354112"),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Obx(() => Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                    color: controller.change.value?Colors.purple:Colors.blue,
                    borderRadius: BorderRadius.circular(50)),
                child: TextButton(
                  onPressed: () {
                    Get.to(const Page2());
                  },
                  child: Text(
                    "button".tr,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),)
            ),
          ],
        ),
      ),
    );
  }
}
