import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewellery_app/core/constants/common.dart';
import 'package:jewellery_app/core/view_model/barcode/barcode_bloc.dart';
import 'package:jewellery_app/ui/screens/web/widgets/content_pills.dart';
import 'package:jewellery_app/ui/screens/web/widgets/initial_data.dart';
import 'package:jewellery_app/ui/widgets/appbar.dart';
import 'package:jewellery_app/ui/widgets/table.dart';

class WebScreen extends StatelessWidget {
  WebScreen({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenwidth = screenWidth(context);
    double width960 = screenwidth * 960 / figmaDeviceWidth;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF22242B),
                      ),
                      width: width960,
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
              BlocBuilder<BarcodeBloc, BarcodeState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is Loaded) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Container(
                            width: width960,
                            decoration: BoxDecoration(
                                color: const Color(0xFF1D1D1D),
                                borderRadius: BorderRadius.circular(15)),
                            child: ListView.builder(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              shrinkWrap: true,
                              physics:
                                  const NeverScrollableScrollPhysics(), // Disable scrolling for ListView
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
                        SizedBox(
                          height: 30,
                        ),
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
                                  ContentPillsWeb(
                                      "Barcode No. ${state.details.barcode}"),
                                  ContentPillsWeb(
                                      "Location ${state.details.location}"),
                                  ContentPillsWeb(
                                      "Branch ${state.details.branch}"),
                                  ContentPillsWeb(
                                      "Status ${state.details.status}"),
                                  ContentPillsWeb(
                                      "Counter ${state.details.counter}"),
                                  ContentPillsWeb(
                                      "Source ${state.details.source}"),
                                  ContentPillsWeb(
                                      "Category ${state.details.category}"),
                                  ContentPillsWeb(
                                      "Collection ${state.details.collection}"),
                                  ContentPillsWeb(
                                      "Description ${state.details.description}"),
                                  ContentPillsWeb(
                                      "Metal Grp ${state.details.metalGrp}"),
                                  ContentPillsWeb(
                                      "STK Section ${state.details.stkSection}"),
                                  ContentPillsWeb(
                                      "Mfgd By ${state.details.mfgdBy}"),
                                  ContentPillsWeb(
                                      "Notes ${state.details.notes}"),
                                  ContentPillsWeb(
                                      "In STK Since ${state.details.inStkSince}"),
                                  ContentPillsWeb(
                                      "Cert No. ${state.details.certNo}"),
                                  ContentPillsWeb(
                                      "HUID No. ${state.details.huidNo}"),
                                  ContentPillsWeb(
                                      "Order No. ${state.details.orderNo}"),
                                  ContentPillsWeb(
                                      "Cus Name ${state.details.cusName}"),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 120,
                              height: 145,
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
                            ContentPillsWeb("Size ${state.details.size}"),
                            ContentPillsWeb("Quality ${state.details.quality}"),
                            ContentPillsWeb("KT ${state.details.kt}"),
                            ContentPillsWeb("Pcs ${state.details.pcs}"),
                            ContentPillsWeb(
                                "Gross Wt ${state.details.grossWt}"),
                            ContentPillsWeb("Net Wt ${state.details.netWt}"),
                            ContentPillsWeb("Dia Pcs ${state.details.diaPcs}"),
                            ContentPillsWeb("Dia Wt ${state.details.diaWt}"),
                            ContentPillsWeb("Cls Pcs ${state.details.clsPcs}"),
                            ContentPillsWeb("Cls Wt ${state.details.clsWt}"),
                            ContentPillsWeb(
                                "Chain Wt ${state.details.chainWt}"),
                            ContentPillsWeb("M Rate ${state.details.mRate}"),
                            ContentPillsWeb("M Value ${state.details.mValue}"),
                            ContentPillsWeb("L Rate ${state.details.lRate}"),
                            ContentPillsWeb(
                                "L Charges ${state.details.lCharges}"),
                            ContentPillsWeb(
                                "R Charges ${state.details.rCharges}"),
                            ContentPillsWeb(
                                "O Charges ${state.details.oCharges}"),
                            ContentPillsWeb("MRP ${state.details.mrp}"),
                          ],
                        ),
                        const SizedBox(height: 20),
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
                        ),
                        const SizedBox(height: 90)
                      ],
                    );
                  } else if (state is Error) {
                    return const Center(child: Text('Error: '));
                  } else {
                    return const InitialDataWeb();
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
