import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Каталог машин'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text("Status: ${controller.status.value}")),
            TextButton(
                onPressed: () => controller.lGetCar(),
                child: const Text("get data")),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.cars.length,
                itemBuilder: (contex, index) {
                  var curcar = controller.cars[index];
                  return GestureDetector(
                    onTap: () => Get.toNamed('car_page', arguments: curcar),
                    child: Card(
                      elevation: 1,
                      child: ListTile(
                        leading: Text(
                          curcar.id.toString(),
                          style: const TextStyle(
                              fontSize: 20, color: Colors.purple),
                        ),
                        title: Text(curcar.brand),
                        subtitle: Text(curcar.model),
                        trailing: curcar.availability == false
                            ? Text(
                                'SOLD  ${curcar.price.toString()}',
                                style: const TextStyle(
                                  color: Colors.red,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              )
                            : Text(
                                curcar.price.toString(),
                                style: const TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
