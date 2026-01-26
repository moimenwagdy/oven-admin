import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/orders_filter.dart';
import 'package:oven_admin/providers/orders_provider/range_toggle_button.dart';
import 'package:oven_admin/utils/helpers/reformat_date.dart';
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class OrdersPageRangeFilter extends ConsumerWidget {
  const OrdersPageRangeFilter({super.key});

  Future<void> _pickFromkDate(BuildContext context, WidgetRef ref) async {
    final selectedDate = ref.read(ordersFilterNofifierProvider).range?.from;

    final now = DateTime.now();
    final minDate = DateTime(now.year - 4, now.month, now.day);
    final maxDate = now;
    final initialDate = selectedDate ?? now;

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
          .updateFromRangeFilter(pickedDate);
    }
  }

  Future<void> _pickTokDate(BuildContext context, WidgetRef ref) async {
    final range = ref.read(ordersFilterNofifierProvider).range;

    final now = DateTime.now();
    final minDate = range?.from ?? DateTime(now.year, now.month, now.day);
    final maxDate = now;
    final initialDate = range?.to ?? minDate;

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: minDate,
      lastDate: maxDate,
      helpText: "Select order date",
      cancelText: "Cancel",
      confirmText: "Confirm",
      locale: context.isArabic ? const Locale("ar") : const Locale("en"),
    );

    if (pickedDate != null) {
      ref
          .read(ordersFilterNofifierProvider.notifier)
          .updateToRangeFilter(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context, ref) {
    final rangeSrc = ref.watch(ordersFilterNofifierProvider).range;

    return Row(
      spacing: 10,
      children: [
        FormSubmitButtom(
          onPressed: () {
            _pickFromkDate(context, ref);
          },
          textChild: rangeSrc?.from != null
              ? reformatDate(context, rangeSrc!.from!)
              : "Select start date",
        ),

        FormSubmitButtom(
          onPressed: rangeSrc?.from != null
              ? () {
                  _pickTokDate(context, ref);
                }
              : null,
          textChild: rangeSrc?.to != null
              ? reformatDate(context, rangeSrc!.to!)
              : "Select end date",
        ),
        IconButton(
          onPressed: () {
            ref.read(ragneToggleStateProvider.notifier).closeRangeButton();
            ref
                .read(ordersFilterNofifierProvider.notifier)
                .updateToRangeFilter(null);
            ref
                .read(ordersFilterNofifierProvider.notifier)
                .updateFromRangeFilter(null);
          },

          icon: Icon(Icons.close, size: 15),
        ),
      ],
    );
  }
}

class DateRange {
  final DateTime? from;
  final DateTime? to;

  DateRange(this.from, this.to);
}
