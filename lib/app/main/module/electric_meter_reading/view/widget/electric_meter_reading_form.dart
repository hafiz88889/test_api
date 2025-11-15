// import 'package:b_management/app/main/modules/settings/electric_meter_reading/models/create_electric_meter_model.dart';
// import 'package:b_management/app/main/modules/settings/electric_meter_reading/models/electric_meter_for_edit.dart';
// import 'package:b_management/app/main/modules/settings/electric_meter_reading/models/electric_meter_form_data_model.dart';
// import 'package:b_management/app/main/modules/settings/electric_meter_reading/models/electric_meter_reading_model.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
//
// import '../../../../../shared/widgets/custom_text_form_field.dart';
//
// class ElectricMeterReadingForm extends StatefulWidget {
//   final ElectricMeterFromDataModel<ElectricMeterForEdit> electricMeterFromDataModel;
//   const ElectricMeterReadingForm({super.key,required this.electricMeterFromDataModel});
//
//   @override
//   State<ElectricMeterReadingForm> createState() => _ElectricMeterReadingFormState();
// }
//
// class _ElectricMeterReadingFormState extends State<ElectricMeterReadingForm> {
//
//   @override
//   void initState() {
//     _setInitialValues();
//     super.initState();
//   }
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController readingDateController = TextEditingController();
//   TextEditingController meterNumberController = TextEditingController();
//   TextEditingController currentReadingController = TextEditingController();
//   TextEditingController previousReadingController = TextEditingController();
//   TextEditingController consumptionController = TextEditingController();
//   TextEditingController ratePerUnitController = TextEditingController();
//   TextEditingController amountController = TextEditingController();
//   TextEditingController sequenceController = TextEditingController();
//   bool isActive	 = false;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(
//           widget.electricMeterFromDataModel.objectModel?.electricMeter?.id==0? "Create Electric Meter":"Edit Electric Meter"
//       )),
//       body: SingleChildScrollView(
//         child: SafeArea(
//             child: Form(
//                 key: _formKey,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
//                   child: Column(children: [
//                     customTextField(
//                       controller: readingDateController,
//                       context: context,
//                       label: "Reading Date",
//                       textStyle: const TextStyle(fontSize: 14),
//                       hintTextStyle: const TextStyle(fontSize: 14),
//                       validator: (value) {
//                         if(value == null || value == ""){
//                           return "This Field is Required";
//                         }
//                         else{
//                           return null;
//                         }
//                       },
//                     ),
//                     customTextField(
//                       controller: meterNumberController,
//                       context: context,
//                       label: "Meter Number",
//                       keyboardType: TextInputType.number,
//                       textStyle: const TextStyle(fontSize: 14),
//                       hintTextStyle: const TextStyle(fontSize: 14),
//                       validator: (value) {
//                         if(value == null || value == ""){
//                           return "This Field is Required";
//                         }
//                         else{
//                           return null;
//                         }
//                       },
//                     ),
//                     customTextField(
//                       controller: currentReadingController,
//                       context: context,
//                       label: "Current Reading",
//                       keyboardType: TextInputType.number,
//                       textStyle: const TextStyle(fontSize: 14),
//                       hintTextStyle: const TextStyle(fontSize: 14),
//                       validator: (value) {
//                         if(value == null || value == ""){
//                           return "This Field is Required";
//                         }
//                         else{
//                           return null;
//                         }
//                       },
//                     ),
//                     customTextField(
//                       controller: previousReadingController,
//                       context: context,
//                       label: "Previous Reading",
//                       keyboardType: TextInputType.number,
//                       textStyle: const TextStyle(fontSize: 14),
//                       hintTextStyle: const TextStyle(fontSize: 14),
//                       validator: (value) {
//                         if(value == null || value == ""){
//                           return "This Field is Required";
//                         }
//                         else{
//                           return null;
//                         }
//                       },
//                     ),
//                     customTextField(
//                       controller: consumptionController,
//                       context: context,
//                       label: "Consumption",
//                       keyboardType: TextInputType.number,
//                       textStyle: const TextStyle(fontSize: 14),
//                       hintTextStyle: const TextStyle(fontSize: 14),
//                       validator: (value) {
//                         if(value == null || value == ""){
//                           return "This Field is Required";
//                         }
//                         else{
//                           return null;
//                         }
//                       },
//                     ),
//                     customTextField(
//                       controller: ratePerUnitController,
//                       context: context,
//                       label: "Rate Per Unit",
//                       keyboardType: TextInputType.number,
//                       textStyle: const TextStyle(fontSize: 14),
//                       hintTextStyle: const TextStyle(fontSize: 14),
//                       validator: (value) {
//                         if(value == null || value == ""){
//                           return "This Field is Required";
//                         }
//                         else{
//                           return null;
//                         }
//                       },
//                     ),
//                     customTextField(
//                       controller: amountController,
//                       context: context,
//                       label: "Amount",
//                       keyboardType: TextInputType.number,
//                       textStyle: const TextStyle(fontSize: 14),
//                       hintTextStyle: const TextStyle(fontSize: 14),
//                       validator: (value) {
//                         if(value == null || value == ""){
//                           return "This Field is Required";
//                         }
//                         else{
//                           return null;
//                         }
//                       },
//                     ),
//                     customTextField(
//                       controller: sequenceController,
//                       context: context,
//                       label: "Sequence",
//                       keyboardType: TextInputType.number,
//                       textStyle: const TextStyle(fontSize: 14),
//                       hintTextStyle: const TextStyle(fontSize: 14),
//                       validator: (value) {
//                         if(value == null || value == ""){
//                           return "This Field is Required";
//                         }
//                         else{
//                           return null;
//                         }
//                       },
//                     ),      Row(
//                       children: [
//                         Checkbox(
//                           value: isActive,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               isActive = value ?? false;
//                             });
//                           },
//                         ),
//                         const Text('Is Active'),
//                       ],
//                     ),
//                     const SizedBox(height: 20,),
//                     Row(
//                       children: [
//                         Expanded(child:  ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               //backgroundColor: Colors.blue
//                             ),
//                             onPressed:(){} , child: Text("Save & Close"))),
//                         const SizedBox(width: 15,),
//                         Expanded(child:  ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.blue
//                           ),
//                           onPressed:(){
//                             if(_formKey.currentState!.validate()){
//                               CreateElectricMeterModel? createWaterMeterModel = CreateElectricMeterModel(
//                                 id: widget.electricMeterFromDataModel.objectModel?.electricMeter?.id??0,
//                                 meterNumber: meterNumberController.text,
//                                 isActive:widget.electricMeterFromDataModel.objectModel?.electricMeter?.isActive??false,
//                                 creationTime: widget.electricMeterFromDataModel.objectModel?.electricMeter?.creationTime?? DateTime.now().toIso8601String(),
//                                 seq: sequenceController.text!=""?int.parse(sequenceController.text):0,
//                                 currentReading: currentReadingController.text!=""? double.parse(currentReadingController.text):0.0,
//                                 previousReading: previousReadingController.text!=""?double.parse(previousReadingController.text):0.0,
//                                 consumption: consumptionController.text!=""?double.parse(consumptionController.text):0.0,
//                                 ratePerUnit: ratePerUnitController.text!=""?double.parse(ratePerUnitController.text):0.0,
//                                 amount: amountController.text!=""? double.parse(amountController.text):0.0,
//                                 readingDate: DateTime.now().toIso8601String(),
//                                 tenantId: widget.electricMeterFromDataModel.objectModel?.electricMeter?.tenantId??0,
//                               );
//                               context.pop(createWaterMeterModel);
//                             }
//                           },child: Text(
//                           "save",
//                           //widget.personModel == null ? "Save" : "Update",
//                           style: const TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold),
//                         ),)),
//                       ],
//                     ),
//                     const SizedBox(height: 12,),
//                     OutlinedButton(
//                         style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             minimumSize:Size(double.infinity, 50)
//                         ),
//                         onPressed: (){
//                           context.pop();
//                         }, child: Text("Cancel")),
//                   ]),
//                 ))),
//       ),
//     );
//   }
//   void _setInitialValues() {
//     readingDateController.text = widget.electricMeterFromDataModel.objectModel?.electricMeter?.readingDate?? "";
//     meterNumberController.text = widget.electricMeterFromDataModel.objectModel?.electricMeter?.meterNumber?? "";
//     currentReadingController.text = widget.electricMeterFromDataModel.objectModel?.electricMeter?.currentReading?.toString() ?? "";
//     previousReadingController.text = widget.electricMeterFromDataModel.objectModel?.electricMeter?.previousReading?.toString() ?? "";
//     consumptionController.text = widget.electricMeterFromDataModel.objectModel?.electricMeter?.consumption?.toString() ?? "";
//     ratePerUnitController.text = widget.electricMeterFromDataModel.objectModel?.electricMeter?.ratePerUnit?.toString() ?? "";
//     amountController.text = widget.electricMeterFromDataModel.objectModel?.electricMeter?.amount?.toString() ?? "";
//     sequenceController.text = widget.electricMeterFromDataModel.objectModel?.electricMeter?.seq?.toString() ?? "";
//     isActive = widget.electricMeterFromDataModel.objectModel?.electricMeter?.isActive??false;
//
//   }
// }