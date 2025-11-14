
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/model/request_body.dart';
import '../bloc/building_bloc.dart';
import '../bloc/building_event.dart';
import '../bloc/building_state.dart';
import '../model/building_model.dart';


class BuildingPageView extends StatelessWidget {
  const BuildingPageView({super.key,});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController =TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xFFE3D1D1),
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
                              'Building',
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

                      ],
                    ),

                    const SizedBox(height: 10,),
                    TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                          hintText: "Search Building...",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(width: 1,color: Colors.black)
                          )
                      ),
                      onChanged: (value) {
                      },
                    ),

                  ],
                ),
              ),
            ),
          )),

      body: BlocBuilder<BuildingBloc, BuildingState>(
        builder: (context, state){
          if(state.buildingStatus==BuildingStatus.initial){
            context.read<BuildingBloc>().add(LoadBuilding(requestBody: RequestBody()));
            return Center(child: CircularProgressIndicator(),);
          }
          else if(state.buildingStatus==BuildingStatus.loading){
            return const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: CircularProgressIndicator()
              ),);
          }
          else if(state.buildingStatus==BuildingStatus.success){
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.buildingList!.length,
              itemBuilder: (context, index) {
                BuildingModel buildingModel=state.buildingList![index];
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text("${buildingModel.buildingName}"),
                    ],
                  ),
                );
            },);
            // return ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: state.buildingList?.length??0,
            //   itemBuilder: (context, index) {
            //     BuildingModel buildingModel=state.buildingList![index] as BuildingModel;
            //     return Container(
            //       padding: EdgeInsets.symmetric(
            //         horizontal: 12,
            //         vertical: 10,
            //       ),
            //       margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10,
            //       ),
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         color: Colors.white,
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black,
            //             blurRadius: 5,
            //             spreadRadius: 3,
            //             offset: const Offset(3, 3),
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //           children: [
            //             Row(
            //               children: [
            //                 // Avatar
            //                 Container(
            //                   width: 55,
            //                   height: 55,
            //                   decoration: BoxDecoration(
            //                     gradient: const LinearGradient(
            //                       colors: [
            //                         Color(0xFF667EEA),
            //                         Color(0xFF764BA2),
            //                       ],
            //                       begin: Alignment.topLeft,
            //                       end: Alignment.bottomRight,
            //                     ),
            //                     borderRadius: BorderRadius.circular(15),
            //                     boxShadow: [
            //                       BoxShadow(
            //                         color: const Color(0xFF667EEA,).withOpacity(0.3),
            //                         blurRadius: 12,
            //                         offset: const Offset(0, 4),
            //                       ),
            //                     ],
            //                   ),
            //                   child: Center(
            //                     child: Text(
            //                       buildingModel.buildingName!=null? buildingModel.buildingName![0]:"",
            //                       style: const TextStyle(
            //                         fontSize: 28,
            //                         fontWeight: FontWeight.w700,
            //                         color: Colors.white,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 const SizedBox(width: 15),
            //                 // Name and ID
            //                 // Edit Button
            //                 InkWell(
            //                   onTap: () {
            //                   },
            //                   borderRadius: BorderRadius.circular(18),
            //                   child: Container(
            //                     width: 40,
            //                     height: 40,
            //                     decoration: BoxDecoration(
            //                       color: const Color(0xFFF7FAFC),
            //                       borderRadius: BorderRadius.circular(18),
            //                     ),
            //                     child: const Icon(
            //                       Icons.edit,
            //                       color: Color(0xFF667EEA),
            //                       size: 20,
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             const SizedBox(height: 20),
            //             GridView.count(
            //               crossAxisCount: 2,
            //               shrinkWrap: true,
            //               physics: const NeverScrollableScrollPhysics(),
            //               crossAxisSpacing: 12,
            //               mainAxisSpacing: 12,
            //               childAspectRatio: 2.6,
            //
            //               children: [
            //                 // _buildInfoBox("Contact Number", "${buildingModel.contactNumber}"),
            //                 // _buildInfoBox("Email", "${buildingModel.email}"),
            //                 // _buildInfoBox("Address", "${buildingModel.address}"),
            //                 // _buildInfoBox("Sequence", "${buildingModel.seq}"),
            //
            //
            //               ],
            //             ),
            //
            //           ]
            //       ),
            //     );
            //   },
            // );
          }else if (state.buildingStatus == BuildingStatus.error) {
            return Center(child: Text(state.error ?? "Something went wrong"));
          }
          return const SizedBox.shrink();
        },

      ),
    );

  }

  // Widget _buildInfoBox(String label, String value) {
  //   return   Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
  //     decoration: BoxDecoration(
  //       color: const Color(0xFFF7FAFC),
  //       borderRadius: BorderRadius.circular(12),
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Text(
  //           label,
  //           style: TextStyle(
  //             fontSize: 10,
  //             fontWeight: FontWeight.w700,
  //             color: const Color(0xFF718096),
  //             letterSpacing: 0.5,
  //           ),
  //         ),
  //         const SizedBox(height: 4),
  //         Text(
  //           value,
  //           style: const TextStyle(
  //             fontSize: 14,
  //             fontWeight: FontWeight.w600,
  //             color: Color(0xFF2D3748),
  //           ),
  //           maxLines: 1,
  //           overflow: TextOverflow.ellipsis,
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

