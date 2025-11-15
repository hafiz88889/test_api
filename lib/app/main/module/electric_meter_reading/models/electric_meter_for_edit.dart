
import 'electric_meter_reading_model.dart';

class ElectricMeterForEdit {
  ElectricMeterModel? _electricMeterModel;

  ElectricMeterForEdit({ElectricMeterModel? electricMeterModel}) {
    if (electricMeterModel != null) {
      this._electricMeterModel = electricMeterModel;
    }
  }

  ElectricMeterModel? get electricMeter => _electricMeterModel;
  set supplier(ElectricMeterModel? electricMeter) => _electricMeterModel = electricMeter;

  ElectricMeterForEdit.fromJson(Map<String, dynamic> json) {
    _electricMeterModel = json['electricMeterReading'] != null
        ?  ElectricMeterModel.fromJson(json['electricMeterReading'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    if (this._electricMeterModel != null) {
      data['electricMeterReading'] = this._electricMeterModel!.toJson();
    }
    return data;
  }
}