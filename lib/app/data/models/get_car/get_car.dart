import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_7/app/data/models/car/car.dart';

part 'get_car.freezed.dart';
part 'get_car.g.dart';

@freezed
class GetCar with _$GetCar {

  factory GetCar({
    @Default([]) List<Car> cars,
  }) = _GetCar;

  factory GetCar.fromJson(Map<String, dynamic> json) => _$GetCarFromJson(json);
}