import 'package:flutter/material.dart';
import 'wrap.dart';

class WrapChangeExample extends StatefulWidget {
  @override
  _WrapChangeExampleState createState() => new _WrapChangeExampleState();
}

class _WrapChangeExampleState extends State<WrapChangeExample> {
  late List<Item> _sourceList;
  late List<Item> _targetList;

  void initState() {
    super.initState();
    _sourceList = List.generate(20, (i) => Item(id: i));
    _targetList = <Item>[];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: WrapExample(
            sourceList: _sourceList,
            targetList: _targetList,
          ),
        ),
        Row(
          children: <Widget>[
            ElevatedButton(
              onPressed: addSourceItem,
              child: Text('add source'),
            ),
            ElevatedButton(
              onPressed: addTargetItem,
              child: Text('add target'),
            ),
          ],
        ),
      ],
    );
  }

  void addSourceItem() {
    setState(() {
      _sourceList.add(Item(id: _sourceList.length));
    });
  }

  void addTargetItem() {
    setState(() {
      _targetList.add(Item(id: _targetList.length * 1000));
    });
  }
}
