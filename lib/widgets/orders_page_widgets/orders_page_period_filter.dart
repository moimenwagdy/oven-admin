import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/orders_filter.dart';

class OrdersPagePeriodFilter extends ConsumerWidget {
  const OrdersPagePeriodFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final periods = getPeriods();
    final src = ref.watch(ordersFilterNofifierProvider);
    final selectedValue = src.fixedPeriod;
    return SizedBox(
      height: 50,
      width: 220,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<DatePeriod>(
          isExpanded: true,
          items: periods
              .map(
                (item) => DropdownMenuItem<DatePeriod>(
                  value: item,
                  alignment: Alignment.center,
                  child: Text(item.title, textAlign: TextAlign.center),
                ),
              )
              .toList(),
          value: selectedValue,
          onChanged: (value) => ref
              .read(ordersFilterNofifierProvider.notifier)
              .updateFixedPeriodFilter(value),
          customButton: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  selectedValue != null
                      ? selectedValue.title
                      : "filter by status",
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
                          .updateFixedPeriodFilter(null);
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

DateTime startOfDay(DateTime date) => DateTime(date.year, date.month, date.day);

DateTime startOfThisWeek() {
  final now = DateTime.now();
  return startOfDay(now.subtract(Duration(days: now.weekday - 1)));
}

DateTime lastWeeks(int weeks) =>
    startOfDay(DateTime.now().subtract(Duration(days: 7 * weeks)));

DateTime lastMonths(int months) {
  final now = DateTime.now();
  return startOfDay(DateTime(now.year, now.month - months, now.day));
}

DateTime lastYears(int years) {
  final now = DateTime.now();
  return startOfDay(DateTime(now.year - years, now.month, now.day));
}

List<DatePeriod> getPeriods() {
  final now = DateTime.now();
  return [
    DatePeriod("This week", startOfThisWeek(), now),
    DatePeriod("Last two weeks", lastWeeks(2), now),
    DatePeriod("Last three weeks", lastWeeks(3), now),
    DatePeriod("Last month", lastMonths(1), now),
    DatePeriod("Last two months", lastMonths(2), now),
    DatePeriod("Last three months", lastMonths(3), now),
    DatePeriod("Last 6 months", lastMonths(6), now),
    DatePeriod("Last 9 months", lastMonths(9), now),
    DatePeriod("Last year", lastYears(1), now),
    DatePeriod("Last two years", lastYears(2), now),
  ];
}

class DatePeriod {
  final String title;
  final DateTime from;
  final DateTime to;

  DatePeriod(this.title, this.from, this.to);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is DatePeriod && title == other.title;

  @override
  int get hashCode => title.hashCode;
}
