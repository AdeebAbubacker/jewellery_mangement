import 'package:flutter/material.dart';
import 'package:jewellery_app/core/view_model/barcode/barcode_bloc.dart';
import 'package:jewellery_app/ui/screens/tablet/widgets/content_pills.dart';
import 'package:jewellery_app/ui/screens/tablet/widgets/initial_data.dart';
import 'package:jewellery_app/ui/widgets/appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewellery_app/core/constants/common.dart';
import 'package:jewellery_app/ui/widgets/table.dart';

class TabletScreen extends StatelessWidget {
  TabletScreen({Key? key}) : super(key: key);
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
                          padding: EdgeInsets.only(
                              right: outerPadding(context) + 20),
                          child: Container(
                            width: width960,
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
                                  ContentPillsTab(
                                      "Barcode No. ${state.details.barcode}"),
                                  ContentPillsTab(
                                      "Location ${state.details.location}"),
                                  ContentPillsTab(
                                      "Branch ${state.details.branch}"),
                                  ContentPillsTab(
                                      "Status ${state.details.status}"),
                                  ContentPillsTab(
                                      "Counter ${state.details.counter}"),
                                  ContentPillsTab(
                                      "Source ${state.details.source}"),
                                  ContentPillsTab(
                                      "Category ${state.details.category}"),
                                  ContentPillsTab(
                                      "Collection ${state.details.collection}"),
                                  ContentPillsTab(
                                      "Description ${state.details.description}"),
                                  ContentPillsTab(
                                      "Metal Grp ${state.details.metalGrp}"),
                                  ContentPillsTab(
                                      "STK Section ${state.details.stkSection}"),
                                  ContentPillsTab(
                                      "Mfgd By ${state.details.mfgdBy}"),
                                  ContentPillsTab(
                                      "Notes ${state.details.notes}"),
                                  ContentPillsTab(
                                      "In STK Since ${state.details.inStkSince}"),
                                  ContentPillsTab(
                                      "Cert No. ${state.details.certNo}"),
                                  ContentPillsTab(
                                      "HUID No. ${state.details.huidNo}"),
                                  ContentPillsTab(
                                      "Order No. ${state.details.orderNo}"),
                                  ContentPillsTab(
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
                            ContentPillsTab("Size ${state.details.size}"),
                            ContentPillsTab("Quality ${state.details.quality}"),
                            ContentPillsTab("KT ${state.details.kt}"),
                            ContentPillsTab("Pcs ${state.details.pcs}"),
                            ContentPillsTab(
                                "Gross Wt ${state.details.grossWt}"),
                            ContentPillsTab("Net Wt ${state.details.netWt}"),
                            ContentPillsTab("Dia Pcs ${state.details.diaPcs}"),
                            ContentPillsTab("Dia Wt ${state.details.diaWt}"),
                            ContentPillsTab("Cls Pcs ${state.details.clsPcs}"),
                            ContentPillsTab("Cls Wt ${state.details.clsWt}"),
                            ContentPillsTab(
                                "Chain Wt ${state.details.chainWt}"),
                            ContentPillsTab("M Rate ${state.details.mRate}"),
                            ContentPillsTab("M Value ${state.details.mValue}"),
                            ContentPillsTab("L Rate ${state.details.lRate}"),
                            ContentPillsTab(
                                "L Charges ${state.details.lCharges}"),
                            ContentPillsTab(
                                "R Charges ${state.details.rCharges}"),
                            ContentPillsTab(
                                "O Charges ${state.details.oCharges}"),
                            ContentPillsTab("MRP ${state.details.mrp}"),
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
                       
                        const SizedBox(height: 90)
                      ],
                    );
                  } else if (state is Error) {
                    return Center(child: Text('Error: ${state.message}'));
                  } else {
                    return const InitialDataTab();
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
