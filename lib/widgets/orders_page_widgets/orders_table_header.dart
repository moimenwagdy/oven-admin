import 'package:flutter/material.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';

class OrdersTableHeader extends StatelessWidget {
  const OrdersTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: 10,
        children: [
          SizedBox(
            width: 150,
            child: Center(
              child: Text(
                context.l10n.orderDate,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
          SizedBox(
            width: 60,
            child: Center(
              child: Text(
                context.l10n.userId,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
          SizedBox(
            width: 60,
            child: Center(
              child: Text(
                context.l10n.orderId,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 60,
                child: Center(
                  child: Text(
                    context.l10n.totalCost,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ),
              SizedBox(
                width: 60,
                child: Center(
                  child: Text(
                    context.l10n.discount,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              SizedBox(
                width: 140,
                child: Text("", style: Theme.of(context).textTheme.labelSmall),
              ),
              SizedBox(
                width: 140,
                child: Text("", style: Theme.of(context).textTheme.labelSmall),
              ),
            ],
          ),
          SizedBox(
            width: 100,
            child: Center(
              child: Text(
                context.l10n.orderStatus,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
