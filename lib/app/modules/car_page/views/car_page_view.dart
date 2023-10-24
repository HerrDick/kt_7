import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/car_page_controller.dart';

class CarPageView extends GetView<CarPageController> {
  const CarPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(controller.car.brand),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Бренд машины: ${controller.car.brand}',
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            'Модель машины: ${controller.car.model}',
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            'Цвет машины: ${controller.car.color}',
            style: const TextStyle(fontSize: 20),
          ),
          controller.car.availability == false
              ? const Text(
                  'SOLD',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                )
              : Text(
                  'Цена машины: ${controller.car.price.toString()}',
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
        ],
      )),
    );
  }
}
