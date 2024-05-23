import 'package:flutter/material.dart';
import 'package:jewellery_app/ui/screens/mobile/widgets/content_pills.dart';
import 'package:jewellery_app/ui/screens/mobile/widgets/initial_data.dart';
import 'package:jewellery_app/ui/widgets/appbar.dart';

import 'package:flutter/material.dart';
import 'package:jewellery_app/ui/widgets/appbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewellery_app/core/constants/common.dart';
import 'package:jewellery_app/core/view_model/barcode/barcode_bloc.dart';
import 'package:jewellery_app/ui/widgets/appbar.dart';
import 'package:jewellery_app/ui/widgets/table.dart';

class MobileScreen extends StatelessWidget {
  MobileScreen({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenheight = screenHeight(context);
    double screenwidth = screenWidth(context);
    double width960 = screenwidth * 960 / figmaDeviceWidth;
    return Scaffold(
      appBar: const HomeAppBar(), // Use const for performance optimization
      extendBodyBehindAppBar: true, // extends body behind app bar
      backgroundColor: Colors.transparent, // make background transparent
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: outerPadding(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.only(left: outerPadding(context)),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Center(child: Text("Details")),
                ),
              ),
              const SizedBox(height: 6),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(height: 10),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      // or Expanded
                      child: Container(
                        height: 70,
                        width: 200,
                        child: TextField(
                          controller: _controller,
                          decoration: const InputDecoration(
                            labelText: 'Search',
                            border: OutlineInputBorder(),
                          ),
                          onSubmitted: (query) {
                            BlocProvider.of<BarcodeBloc>(context)
                                .add(BarcodeEvent.fetchBarcodes(query));
                          },
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () async {
                        context
                            .read<BarcodeBloc>()
                            .add(const BarcodeEvent.cancelFetch());
                      },
                    ),
                  ],
                ),
              ),

              // Center(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(left: 8, right: 8),
              //         child: Container(
              //           width: 962,
              //           height: 70,
              //           child: TextField(
              //             controller: _controller,
              //             decoration: const InputDecoration(
              //               labelText: 'Search',
              //               border: OutlineInputBorder(),
              //             ),
              //             onSubmitted: (query) {
              //               BlocProvider.of<BarcodeBloc>(context)
              //                   .add(BarcodeEvent.fetchBarcodes(query));
              //             },
              //           ),
              //         ),
              //       ),
              //       IconButton(
              //         icon: const Icon(Icons.cancel),
              //         onPressed: () async {
              //           context
              //               .read<BarcodeBloc>()
              //               .add(const BarcodeEvent.cancelFetch());
              //         },
              //       ),
              //     ],
              //   ),
              // ),

              BlocBuilder<BarcodeBloc, BarcodeState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is Loaded) {
                    return Center(
                      child: Container(
                        width: 962,
                        color: Color(0xFF1D1D1D),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics:
                              NeverScrollableScrollPhysics(), // Disable scrolling for ListView
                          itemCount: state.barcodes.length,
                          itemBuilder: (context, index) {
                            final barcode =
                                state.barcodes[index].barcode.toString();
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  BlocProvider.of<BarcodeBloc>(context).add(
                                      BarcodeEvent.fetchBarcodeDetails(
                                          barcode));
                                },
                                child: ListTile(
                                  title: Text(
                                    barcode,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  } else if (state is DetailsLoaded) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Wrap(
                                spacing:
                                    12.0, // Horizontal spacing between items
                                runSpacing:
                                    13.0, // Vertical spacing between lines
                                runAlignment: WrapAlignment.start,
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.start,
                                children: [
                                  ContentPillsMob(
                                      "Barcode No. ${state.details.barcode}"),
                                  ContentPillsMob(
                                      "Location ${state.details.location}"),
                                  ContentPillsMob(
                                      "Branch ${state.details.branch}"),
                                  ContentPillsMob(
                                      "Status ${state.details.status}"),
                                  ContentPillsMob(
                                      "Counter ${state.details.counter}"),
                                  ContentPillsMob(
                                      "Source ${state.details.source}"),
                                  ContentPillsMob(
                                      "Category ${state.details.category}"),
                                  ContentPillsMob(
                                      "Collection ${state.details.collection}"),
                                  ContentPillsMob(
                                      "Description ${state.details.description}"),
                                  ContentPillsMob(
                                      "Metal Grp ${state.details.metalGrp}"),
                                  ContentPillsMob(
                                      "STK Section ${state.details.stkSection}"),
                                  ContentPillsMob(
                                      "Mfgd By ${state.details.mfgdBy}"),
                                  ContentPillsMob(
                                      "Notes ${state.details.notes}"),
                                  ContentPillsMob(
                                      "In STK Since ${state.details.inStkSince}"),
                                  ContentPillsMob(
                                      "Cert No. ${state.details.certNo}"),
                                  ContentPillsMob(
                                      "HUID No. ${state.details.huidNo}"),
                                  ContentPillsMob(
                                      "Order No. ${state.details.orderNo}"),
                                  ContentPillsMob(
                                      "Cus Name ${state.details.cusName}"),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white, // Set the border color
                                  width: 3, // Set the border width
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), // Shadow color
                                    spreadRadius: 2, // Spread radius
                                    blurRadius: 7, // Blur radius
                                    offset:
                                        Offset(0, 3), // Offset of the shadow
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    6), // Ensures the image respects the border radius
                                child: Image.network(
                                  state.details.imageLink ?? '',
                                  fit: BoxFit
                                      .cover, // or BoxFit.contain depending on your requirement
                                  errorBuilder: (context, error, stackTrace) {
                                    return Center(
                                        child: Text(
                                            'Image not available')); // Handle image loading errors
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20), // Add spacing between rows
                        Wrap(
                          spacing: 12.0, // Horizontal spacing between items
                          runSpacing: 13.0, // Vertical spacing between lines
                          runAlignment: WrapAlignment.start,
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          children: [
                            ContentPillsMob("Size ${state.details.size}"),
                            ContentPillsMob("Quality ${state.details.quality}"),
                            ContentPillsMob("KT ${state.details.kt}"),
                            ContentPillsMob("Pcs ${state.details.pcs}"),
                            ContentPillsMob(
                                "Gross Wt ${state.details.grossWt}"),
                            ContentPillsMob("Net Wt ${state.details.netWt}"),
                            ContentPillsMob("Dia Pcs ${state.details.diaPcs}"),
                            ContentPillsMob("Dia Wt ${state.details.diaWt}"),
                            ContentPillsMob("Cls Pcs ${state.details.clsPcs}"),
                            ContentPillsMob("Cls Wt ${state.details.clsWt}"),
                            ContentPillsMob(
                                "Chain Wt ${state.details.chainWt}"),
                            ContentPillsMob("M Rate ${state.details.mRate}"),
                            ContentPillsMob("M Value ${state.details.mValue}"),
                            ContentPillsMob("L Rate ${state.details.lRate}"),
                            ContentPillsMob(
                                "L Charges ${state.details.lCharges}"),
                            ContentPillsMob(
                                "R Charges ${state.details.rCharges}"),
                            ContentPillsMob(
                                "O Charges ${state.details.oCharges}"),
                            ContentPillsMob("MRP ${state.details.mrp}"),
                          ],
                        ),
                        const SizedBox(
                            height: 20), // Add spacing before the table
                        MyDataTable(
                          Lot_Description:
                              "${state.details.tableData?.map((e) => e.lotDescription).join(', ')}",
                          Group:
                              "${state.details.tableData?.map((e) => e.group).join(', ')}",
                          Units:
                              "${state.details.tableData?.map((e) => e.units).join(', ')}",
                          Pcs:
                              "${state.details.tableData?.map((e) => e.pcs).join(', ')}",
                          Weight:
                              "${state.details.tableData?.map((e) => e.weight).join(', ')}",
                          Rate:
                              "${state.details.tableData?.map((e) => e.rate).join(', ')}",
                          Value:
                              "${state.details.tableData?.map((e) => e.value).join(', ')}",
                          S_Rate:
                              "${state.details.tableData?.map((e) => e.sRate).join(', ')}",
                          S_Value:
                              "${state.details.tableData?.map((e) => e.sValue).join(', ')}",
                        )
                      ],
                    );
                  } else if (state is Error) {
                    return Center(child: Text('Error: ${state.message}'));
                  } else {
                    return 
                    InitialDataMob();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
