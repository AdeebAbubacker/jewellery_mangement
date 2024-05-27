import 'package:flutter/material.dart';
import 'package:jewellery_app/ui/screens/mobile/widgets/content_pills.dart';
import 'package:jewellery_app/ui/screens/mobile/widgets/initial_data.dart';
import 'package:jewellery_app/ui/widgets/appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewellery_app/core/constants/common.dart';
import 'package:jewellery_app/core/view_model/barcode/barcode_bloc.dart';
import 'package:jewellery_app/ui/widgets/table.dart';

class MobileScreen extends StatelessWidget {
  MobileScreen({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: outerPadding(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              const SizedBox(height: 6),
              Padding(
                padding: EdgeInsets.only(left: outerPadding(context)),
                child: Container(
                  width: 180,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: const Center(child: Text("Details")),
                ),
              ),
              const SizedBox(height: 16),
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFF22242B),
                        ),
                        width: 200,
                        child: TextField(
                          controller: _controller,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 30), // Add left padding
                            hintText: 'Search',
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          onSubmitted: (query) {
                            BlocProvider.of<BarcodeBloc>(context)
                                .add(BarcodeEvent.fetchBarcodes(query));
                          },
                        ),
                      ),

                      // SizedBox(
                      //   height: 70,
                      //   width: 200,
                      //   child: TextField(
                      //     controller: _controller,
                      //     decoration: const InputDecoration(
                      //       labelText: 'Search',
                      //       border: OutlineInputBorder(),
                      //     ),
                      //     onSubmitted: (query) {
                      //       BlocProvider.of<BarcodeBloc>(context)
                      //           .add(BarcodeEvent.fetchBarcodes(query));
                      //     },
                      //   ),
                      // ),
                    ),
                    TextButton(
                        onPressed: () async {
                          _controller.clear();
                          context
                              .read<BarcodeBloc>()
                              .add(const BarcodeEvent.cancelFetch());
                        },
                        child: const Text("Clear")),
                  ],
                ),
              ),
              BlocBuilder<BarcodeBloc, BarcodeState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is Loaded) {
                    return Stack(
                      children: [
                        InitialDataMob(),
                        Center(
                          child: Container(
                            width: 962,
                            decoration: BoxDecoration(
                                color: const Color(0xFF1D1D1D),
                                borderRadius: BorderRadius.circular(15)),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
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
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (state is DetailsLoaded) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Wrap(
                                spacing: 12.0,
                                runSpacing: 13.0,
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
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 110,
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.network(
                                  state.details.imageLink ?? '',
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Center(
                                        child: Text('Image not available'));
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Wrap(
                          spacing: 12.0,
                          runSpacing: 13.0,
                          runAlignment: WrapAlignment.start,
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          children: [
                            ContentPillsMob(
                                "Metal Grp ${state.details.metalGrp}"),
                            ContentPillsMob(
                                "STK Section ${state.details.stkSection}"),
                            ContentPillsMob("Mfgd By ${state.details.mfgdBy}"),
                            ContentPillsMob("Notes ${state.details.notes}"),
                            ContentPillsMob(
                                "In STK Since ${state.details.inStkSince}"),
                            ContentPillsMob("Cert No. ${state.details.certNo}"),
                            ContentPillsMob("HUID No. ${state.details.huidNo}"),
                            ContentPillsMob(
                                "Order No. ${state.details.orderNo}"),
                            ContentPillsMob(
                                "Cus Name ${state.details.cusName}"),
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
                        const SizedBox(height: 20),
                        MyDataTable(
                          lotDescription:
                              "${state.details.tableData?.map((e) => e.lotDescription).join(', ')}",
                          group:
                              "${state.details.tableData?.map((e) => e.group).join(', ')}",
                          units:
                              "${state.details.tableData?.map((e) => e.units).join(', ')}",
                          pcs:
                              "${state.details.tableData?.map((e) => e.pcs).join(', ')}",
                          weight:
                              "${state.details.tableData?.map((e) => e.weight).join(', ')}",
                          rate:
                              "${state.details.tableData?.map((e) => e.rate).join(', ')}",
                          value:
                              "${state.details.tableData?.map((e) => e.value).join(', ')}",
                          sRate:
                              "${state.details.tableData?.map((e) => e.sRate).join(', ')}",
                          sValue:
                              "${state.details.tableData?.map((e) => e.sValue).join(', ')}",
                        ),
                        const SizedBox(height: 30)
                      ],
                    );
                  } else if (state is Error) {
                    return Center(child: Text('Error: ${state.message}'));
                  } else {
                    return const InitialDataMob();
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
