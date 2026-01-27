import 'package:flutter/material.dart';

class OrderUser extends StatelessWidget {
  final String userID;
  const OrderUser({super.key, required this.userID});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 60, child: Center(child: Text(userID)));
  }
}
