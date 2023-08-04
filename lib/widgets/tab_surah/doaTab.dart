import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:quran_app/models/doa.dart';

import '../doa/doa_item.dart';

class DoaTab extends StatelessWidget {
  const DoaTab({super.key});

  Future<List<Doa>> _getDoaList() async {
    String data = await rootBundle.loadString('lib/data/doa-harian.json');
    return doaFromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Doa>>(
      future: _getDoaList(),
      initialData: [],
      builder: ((context, snapshot) {
        if (!snapshot.hasData) {
          return Scaffold();
        }

        return ListView.separated(
          itemBuilder: (context, index) => DoaItem(
            doa: snapshot.data!.elementAt(index),
          ),
          separatorBuilder: (context, index) => Container(),
          itemCount: snapshot.data!.length,
        );
      }),
    );
  }
}
