

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewellery_app/core/service/jewellery_service.dart';
import 'package:jewellery_app/core/view_model/barcode/barcode_bloc.dart';


class HomeScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
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
        IconButton(
          icon: const Icon(Icons.cancel),
          onPressed: () async {
            context
                .read<BarcodeBloc>()
                .add(const BarcodeEvent.cancelFetch());
          },
        ),
        Expanded(
          child: 
          BlocBuilder<BarcodeBloc, BarcodeState>(
            builder: (context, state) {
              if (state is Loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is Loaded) {
                return ListView.builder(
                  itemCount: state.barcodes.length,
                  itemBuilder: (context, index) {
                    final barcode = state.barcodes[0].barcode.toString();
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          BlocProvider.of<BarcodeBloc>(context).add(
                              BarcodeEvent.fetchBarcodeDetails(barcode));
                        },
                        child: ListTile(
                          title: Text(barcode),
                        ),
                      ),
                    );
                  },
                );
              } else if (state is DetailsLoaded) {
                return Center(child: Text('Details: ${state.details}'));
              } else if (state is Error) {
                return Center(child: Text('Error: ${state.message}'));
              } else {
                return const Center(child: Text('Enter a query to search barcodes'));
              }
            },
          ),
        ),
      ],
    );
  }
}
