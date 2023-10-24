import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:kt_7/app/data/models/car/car.dart';
import 'package:kt_7/app/data/models/get_car/get_car.dart';

enum StatusData {
  init,
  loading,
  succes,
  error,
}


class HomeController extends GetxController {
  Dio client = Dio();
  String url = 'https://myfakeapi.com/api/cars/';

  RxList<Car> cars = <Car>[].obs;
  var status = StatusData.init.obs;
 
  @override
  void onInit() {
    lGetCar();
    super.onInit();
  }

  void lGetCar() async {
    status.value = StatusData.loading;
    var response = await client.get(url);
    if(response.statusCode!=200){
      status.value=StatusData.error;
      return;
    }
    status.value=StatusData.succes;
    var responseData = GetCar.fromJson(response.data);
    cars.value = responseData.cars;
    
  }
}
