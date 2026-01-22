import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/orders_filter.dart';

class OrdersPageStatusFilter extends ConsumerWidget {
  const OrdersPageStatusFilter({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final date = ['Delivered', 'Preparing', 'Cancelled', "Scheduled"];
    final selectedValue = ref.watch(ordersFilterNofifierProvider).status;
    return SizedBox(
      height: 50,
      width: 220,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          items: date
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  alignment: Alignment.center,
                  child: Text(item, textAlign: TextAlign.center),
                ),
              )
              .toList(),
          value: selectedValue,
          onChanged: (value) => ref
              .read(ordersFilterNofifierProvider.notifier)
              .updateStatusFilter(value),
          customButton: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  selectedValue ?? "filter by status",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_drop_down,
                  size: 20,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                if (selectedValue != null) Spacer(),
                if (selectedValue != null)
                  IconButton(
                    onPressed: () {
                      ref
                          .read(ordersFilterNofifierProvider.notifier)
                          .updateStatusFilter(null);
                    },

                    icon: Icon(Icons.close, size: 15),
                  ),
              ],
            ),
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: BoxBorder.all(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            elevation: 2,
            offset: const Offset(0, 0),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
