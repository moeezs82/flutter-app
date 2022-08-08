import 'package:flutter/material.dart';
import 'package:untitled3/models/catalog.dart';
import 'package:untitled3/widget/drawer.dart';

import '../widget/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            // itemCount: CatalogModel.items.length,
            itemCount: dummyList.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemWidget(
                item: dummyList[index],
              );
            },
          ),
      ),
      drawer: MyDrawer(),
    );
  }
}
