import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/orders_filter.dart';

class OrdersPagePeriodFilter extends ConsumerWidget {
  const OrdersPagePeriodFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final periods = getPeriods();
    final selectedValue = ref.watch(ordersFilterNofifierProvider).fixedPeriod;

    return SizedBox(
      height: 50,
      width: 450,
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: DropdownMenu(
              inputDecorationTheme: InputDecorationTheme(
                border: InputBorder.none,
              ),
              key: ValueKey(selectedValue?.title ?? "null"),
              hintText: selectedValue?.title ?? "Filter by period",
              textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
              dropdownMenuEntries: periods.map((ele) {
                return DropdownMenuEntry(value: ele, label: ele.title);
              }).toList(),
              enableSearch: false,
              onSelected: (period) {
                ref
                    .read(ordersFilterNofifierProvider.notifier)
                    .updateFixedPeriodFilter(period);
              },
            ),
          ),
          if (selectedValue != null)
            IconButton(
              onPressed: () {
                ref
                    .read(ordersFilterNofifierProvider.notifier)
                    .updateFixedPeriodFilter(null);
              },

              icon: Icon(Icons.close, size: 14),
            ),
        ],
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
}
