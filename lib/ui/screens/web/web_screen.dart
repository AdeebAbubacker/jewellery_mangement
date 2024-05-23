import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewellery_app/core/constants/common.dart';
import 'package:jewellery_app/core/view_model/search_barcode/search_barcode_bloc.dart';
import 'package:jewellery_app/ui/widgets/appbar.dart';
import 'package:jewellery_app/ui/widgets/table.dart';

class WebScreen extends StatelessWidget {
  WebScreen({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenheight = screenHeight(context);
    double screenwidth = screenWidth(context);
      double padding435 = screenwidth * 435 / figmaDeviceWidth;
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
                        width: width960,
                        child: TextField(
                          controller: _controller,
                          decoration: const InputDecoration(
                            labelText: 'Search',
                            border: OutlineInputBorder(),
                          ),
                          onSubmitted: (query) {
                            BlocProvider.of<SearchBarcodeBloc>(context)
                                .add(SearchBarcodeEvent.fetchBarcodes(query));
                          },
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () async {
                        context
                            .read<SearchBarcodeBloc>()
                            .add(const SearchBarcodeEvent.cancelFetch());
                      },
                    ),
                  ],
                ),
              ),

              // Center(
              //   child:
              //   Row(
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
              //               BlocProvider.of<SearchBarcodeBloc>(context)
              //                   .add(SearchBarcodeEvent.fetchBarcodes(query));
              //             },
              //           ),
              //         ),
              //       ),
              //       IconButton(
              //         icon: const Icon(Icons.cancel),
              //         onPressed: () async {
              //           context
              //               .read<SearchBarcodeBloc>()
              //               .add(const SearchBarcodeEvent.cancelFetch());
              //         },
              //       ),
              //     ],
              //   ),
              // ),

              BlocBuilder<SearchBarcodeBloc, SearchBarcodeState>(
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
                                state.barcodes[index]['Barcode'].toString();
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  BlocProvider.of<SearchBarcodeBloc>(context)
                                      .add(SearchBarcodeEvent
                                          .fetchBarcodeDetails(barcode));
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
                                  _buildItem(
                                      "Barcode No.${state.details["Barcode"]}"),
                                  _buildItem(
                                      "Location ${state.details["Location"]}"),
                                  _buildItem(
                                      "Branch ${state.details["Branch"]}"),
                                  _buildItem(
                                      "Status ${state.details["Status"]}"),
                                  _buildItem(
                                      "Counter ${state.details["Counter"]}"),
                                  _buildItem(
                                      "Source ${state.details["Source"]}"),
                                  _buildItem(
                                      "Category ${state.details["Category"]}"),
                                  _buildItem(
                                      "Collection ${state.details["Collection"]}"),
                                  _buildItem(
                                      "Description ${state.details["Description"]}"),
                                  _buildItem(
                                      "Metal Grp ${state.details["Metal_Grp"]}"),
                                  _buildItem(
                                      "STK Section ${state.details["STK_Section"]}"),
                                  _buildItem(
                                      "Mfgd By ${state.details["Mfgd_By"]}"),
                                  _buildItem("Notes ${state.details["Notes"]}"),
                                  _buildItem(
                                      "In STK Since ${state.details["In_STK_Since"]}"),
                                  _buildItem(
                                      "Cert No.${state.details["Cert_No"]}"),
                                  _buildItem(
                                      "HUID No.${state.details["HUID_No"]}"),
                                  _buildItem(
                                      "Order No.${state.details["Order_No"]}"),
                                  _buildItem(
                                      "Cus Name ${state.details["Cus_Name"]}"),
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
                                  state.details["image_link"] ?? '',
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
                            _buildItem("Size ${state.details["Size"]}"),
                            _buildItem("Quality ${state.details["Quality"]}"),
                            _buildItem("KT ${state.details["KT"]}"),
                            _buildItem("Pcs ${state.details["Pcs"]}"),
                            _buildItem("Gross Wt ${state.details["Gross_Wt"]}"),
                            _buildItem("Net Wt ${state.details["Net_Wt"]}"),
                            _buildItem("Dia Pcs ${state.details["Dia_Pcs"]}"),
                            _buildItem("Dia Wt ${state.details["Dia_Wt"]}"),
                            _buildItem("Cls Pcs ${state.details["Cls_Pcs"]}"),
                            _buildItem("Cls Wt ${state.details["Cls_Wt"]}"),
                            _buildItem("Chain Wt ${state.details["Chain_Wt"]}"),
                            _buildItem("M Rate ${state.details["M_Rate"]}"),
                            _buildItem("M Value ${state.details["L_Rate"]}"),
                            _buildItem("L Rate ${state.details["L_Rate"]}"),
                            _buildItem(
                                "L Charges ${state.details["L_Charges"]}"),
                            _buildItem(
                                "R Charges ${state.details["R_Charges"]}"),
                            _buildItem(
                                "O Charges ${state.details["O_Charges"]}"),
                            _buildItem("MRP ${state.details["MRP"]}"),
                          ],
                        ),
                        const SizedBox(
                            height: 20), // Add spacing before the table
                        MyDataTable(
                            Lot_Description:
                                "${state.details["Lot_Description"]}",
                            Group: "${state.details["Group"]}",
                            Units: "${state.details["Units"]}",
                            Pcs: "${state.details["Pcs"]}",
                            Weight: "${state.details["Weight"]}",
                            Rate: "${state.details["Rate"]}",
                            Value: "${state.details["Value"]}",
                            S_Rate: "${state.details["S_Rate"]}",
                            S_Value: "${state.details["S_Value"]}")
                      ],
                    );
                  } else if (state is Error) {
                    return Center(child: Text('Error: ${state.message}'));
                  } else {
                    return const Center(
                        child: Text('Enter a query to search barcodes'));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build each item container
  Widget _buildItem(String text) {
    return Container(
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.white),
      )),
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Color(0xFF13151D),
        border: Border.all(
          width: 1.0,
          color: Color(0xFFD9D9D9), // Set border color to transparent
        ),
      ),
    );
  }

 
}


