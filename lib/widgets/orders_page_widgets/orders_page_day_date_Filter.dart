import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/orders_filter.dart';
import 'package:oven_admin/utils/helpers/reformat_date.dart';
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';

class OrdersPageDayDateFilter extends ConsumerWidget {
  const OrdersPageDayDateFilter({super.key});

  Future<void> _pickDate(BuildContext context, WidgetRef ref) async {
    final selectedDate = ref.read(ordersFilterNofifierProvider).dayDate;

    final now = DateTime.now();
    final minDate = DateTime(now.year, now.month, now.day + 1);
    final maxDate = DateTime(now.year, now.month, minDate.day + 30);
    final initialDate = selectedDate ?? minDate;

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: minDate,
      lastDate: maxDate,
      helpText: "Select order date",
      cancelText: "Cancel",
      confirmText: "Confirm",
      locale: context.isArabic ? Locale("ar") : Locale("en"),
      currentDate: null,
    );

    if (pickedDate != null) {
      ref
          .read(ordersFilterNofifierProvider.notifier)
          .updateDayDateFilter(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context, ref) {
    final date = ref.watch(ordersFilterNofifierProvider).dayDate;
    ref.watch(ordersFilterNofifierProvider);
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 15, horizontal: 15),
      child: InkWell(
        onTap: () async {
          await _pickDate(context, ref);
        },
        child: Container(
          width: context.isSmallDevice ? 150 : 220,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                date != null ? reformatDate(context, date) : "filter by day",
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
              if (date != null) Spacer(),
              if (date != null)
                IconButton(
                  onPressed: () {
                    ref
                        .read(ordersFilterNofifierProvider.notifier)
                        .updateDayDateFilter(null);
                  },

                  icon: Icon(Icons.close, size: 15),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
