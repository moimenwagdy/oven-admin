import 'package:flutter/material.dart';

class OrderItems extends StatelessWidget {
  final List<OrderContentItemType> items;
  const OrderItems({super.key, required this.items});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.start,
      children: items.map((ele) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.all(1),
              color: Colors.amber.withValues(alpha: .1),
              height: 20,
              child: Text(ele.title),
            ),
            IconButton(
              padding: EdgeInsets.all(1),
              iconSize: 10,
              constraints: BoxConstraints(maxHeight: 14, maxWidth: 14),
              onPressed: () {},
              icon: Icon(Icons.close),
            ),
          ],
        );
      }).toList(),
    );
  }
}

class OrderContentItemType {
  final String id;
  final String title;
  const OrderContentItemType({required this.id, required this.title});
}
