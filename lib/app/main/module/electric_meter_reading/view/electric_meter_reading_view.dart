import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/model/request_body.dart';
import '../bloc/electric_meter_reading_bloc.dart';
import '../bloc/electric_meter_reading_event.dart';
import '../bloc/electric_meter_reading_state.dart';
import '../models/electric_meter_for_edit.dart';
import '../models/electric_meter_form_data_model.dart';


class ElectricMeterReadingView extends StatelessWidget {
  const ElectricMeterReadingView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController=TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xFF2D3748),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            backgroundColor: Color(0xFF2D3748),
            flexibleSpace:   Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Back Button
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: 44,
                            height: 44,
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),

                        // Title - wrapped with Expanded
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Electric Meter Reading',
                              style: const TextStyle(
                                fontSize: 24, // Optional: reduce size a bit if needed
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        // Add Button
                        InkWell(
                          onTap: () {
                            // context.read<ElectricMeterBloc>().add(EditElectricMeter(
                            //                 getInitiable: (electricMeterForEdit,)async{
                            //                   ElectricMeterFromDataModel<ElectricMeterForEdit> electricMeterFromDataModel =ElectricMeterFromDataModel(
                            //                     objectModel: electricMeterForEdit,
                            //                   );
                            //                   CreateElectricMeterModel? createElectricMeterModel=await context.push("/home/settings/electric_meter/${Routes.ELECTRIC_METER_READING_FORM}",extra: electricMeterFromDataModel) as CreateElectricMeterModel?;
                            //                   if (createElectricMeterModel != null) {
                            //                     context.read<ElectricMeterBloc>().add(
                            //                       SubmitElectricMeter(
                            //                         electricMeterModel:createElectricMeterModel ,
                            //                         isForSave: true,
                            //                         onEventSuccess: (msg) => showSuccessDialog(
                            //                           msg: msg,
                            //                           context: context,
                            //                           onOk: () async {
                            //                             context.read<ElectricMeterBloc>().add(
                            //                               LoadElectricMeter(requestBody: RequestBody()),
                            //                             );
                            //                             Navigator.of(context).pop();
                            //                           },
                            //                         ),
                            //                         onEventError:
                            //                             (msg) => showErrorDialog(
                            //                           msg: msg,
                            //                           context: context,
                            //                           onOk: () {
                            //                             Navigator.pop(context);
                            //                           },
                            //                         ),
                            //                         onEventLoading:
                            //                             (isLoading) => loadingDialog(
                            //                           isLoading: isLoading,
                            //                           context: context,
                            //                         ),
                            //                       ),
                            //                     );
                            //                     debugPrint("DATA FOR SAVE: ${createElectricMeterModel.toJson()}");
                            //                   }
                            //
                            //                 }));
                          },
                          borderRadius: BorderRadius.circular(22),
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF667EEA),
                                  Color(0xFF764BA2),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xFF667EEA).withOpacity(0.4),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                          hintText: "Search Electric Meter...",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(width: 1,color: Colors.black)
                          )
                      ),
                      onChanged: (value) {
                        context.read<ElectricMeterBloc>().add(LoadElectricMeter(requestBody: RequestBody(filter: searchController.text)));
                      },
                    ),
                  ],
                ),
              ),
            ),
          )),
       body: BlocBuilder<ElectricMeterBloc, ElectricMeterState>(
    builder: (context, state) {
      if (state.electricMeterStatus == ElectricMeterStatus.initial) {
        context.read<ElectricMeterBloc>().add(
          LoadElectricMeter(requestBody: RequestBody()),
        );
        return const Center(child: CircularProgressIndicator());
      } else if (state.electricMeterStatus == ElectricMeterStatus.loading) {
        return const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: CircularProgressIndicator(),
          ),);
      } else if (state.electricMeterStatus == ElectricMeterStatus.success) {
        return Container(
          padding: EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(
            color: Color(0xFFF5F7FA),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.electricMeterList?.length ?? 0,
                  itemBuilder: (context, index) {
                    final electricMeterModel = state.electricMeterList![index];
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 3,
                            offset: const Offset(3, 3),
                          ),
                        ],
                      ),
                      child: Column(
                          children: [
                            Row(
                              children: [
                                // Avatar
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFF667EEA),
                                        Color(0xFF764BA2),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0xFF667EEA,).withOpacity(0.3),
                                        blurRadius: 12,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      electricMeterModel.meterNumber !=null ? electricMeterModel.meterNumber![0]:"O",
                                      style: const TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                // Name and ID
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        electricMeterModel.meterNumber ?? "O",
                                        style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF170D0D),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                    ],
                                  ),
                                ),
                                // Edit Button
                                InkWell(
                                  onTap: () {
                                    // context.read<ElectricMeterBloc>().add(EditElectricMeter(
                                    //                         id: electricMeterModel.id,
                                    //                           getInitiable: (electricMeterForEdit,)async{
                                    //                             ElectricMeterFromDataModel<ElectricMeterForEdit> electricMeterFromDataModel =ElectricMeterFromDataModel(
                                    //                               objectModel: electricMeterForEdit,
                                    //                             );
                                    //                             CreateElectricMeterModel? createElectricMeterModel=await context.push("/home/settings/electric_meter/${Routes.ELECTRIC_METER_READING_FORM}",extra: electricMeterFromDataModel) as CreateElectricMeterModel?;
                                    //                             if (createElectricMeterModel != null) {
                                    //                               context.read<ElectricMeterBloc>().add(
                                    //                                 SubmitElectricMeter(
                                    //                                   electricMeterModel:createElectricMeterModel ,
                                    //                                   isForSave: false,
                                    //                                   onEventSuccess: (msg) => showSuccessDialog(
                                    //                                     msg: msg,
                                    //                                     context: context,
                                    //                                     onOk: () async {
                                    //                                       context.read<ElectricMeterBloc>().add(
                                    //                                         LoadElectricMeter(requestBody: RequestBody()),
                                    //                                       );
                                    //                                       Navigator.of(context).pop();
                                    //                                     },
                                    //                                   ),
                                    //                                   onEventError:
                                    //                                       (msg) => showErrorDialog(
                                    //                                     msg: msg,
                                    //                                     context: context,
                                    //                                     onOk: () {
                                    //                                       Navigator.pop(context);
                                    //                                     },
                                    //                                   ),
                                    //                                   onEventLoading:
                                    //                                       (isLoading) => loadingDialog(
                                    //                                     isLoading: isLoading,
                                    //                                     context: context,
                                    //                                   ),
                                    //                                 ),
                                    //                               );
                                    //                               debugPrint("DATA FOR SAVE: ${createElectricMeterModel.toJson()}");
                                    //                             }
                                    //
                                    //                           }));
                                    },
                                  borderRadius: BorderRadius.circular(18),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF7FAFC),
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: const Icon(
                                      Icons.edit,
                                      color: Color(0xFF667EEA),
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            GridView.count(
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 2.6,

                              children: [
                                _buildInfoBox("Current Reading", "${electricMeterModel.currentReading}"),
                                _buildInfoBox("Previous Reading", "${electricMeterModel.previousReading}"),
                                _buildInfoBox("Rate Per Unit", "${electricMeterModel.ratePerUnit}"),
                                _buildInfoBox("Amount", "${electricMeterModel.amount}"),

                              ],
                            ),

                          ]
                      ),
                    );
                  },
                ),
              ),
              // customPagination(
              //     context: context,
              //     textColor: Theme.of(context).primaryColor,
              //     totalCount: state.totalCount??0,
              //     showCount: "${state.totalCount == 0 ? 0 : state.requestBody?.skipCount == 0 ? 1 : state.requestBody!.skipCount + 1}-${state.electricMeterList!.length < state.requestBody!.maxResultCount ? state.requestBody!.skipCount + state.electricMeterList!.length : state.requestBody!.skipCount + state.requestBody!.maxResultCount}",
              //     requestBody: state.requestBody!,
              //     dataReLoad: (RequestBody requestBody) {
              //       context.read<ElectricMeterBloc>().add(LoadElectricMeter(
              //         requestBody: requestBody,
              //       ));
              //     }),
            ],
          ),
        );
      } else if (state.electricMeterStatus == ElectricMeterStatus.error) {
        return Center(child: Text(state.error ?? "Something went wrong"));
      }
      return const SizedBox.shrink();
    },
    ),
    );
  }
  Widget _buildInfoBox(String label, String value) {
    return   Container(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFF7FAFC),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF718096),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2D3748),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

}
