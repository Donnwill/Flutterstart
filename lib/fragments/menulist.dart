import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MenuListState();
  }
}

class _MenuListState extends State<MenuList> {
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop.add(new DropdownMenuItem(
      child: new Text('Item No.1'),
      value: 1,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Container(
      child: DropdownButton(
        items: listDrop,
        onChanged: null,
      ),
    );
  }
}
