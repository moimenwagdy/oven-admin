import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/range_toggle_button.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_page_filters/orders_page_range_filter.dart';

class RangeButtonSwitcher extends ConsumerWidget {
  const RangeButtonSwitcher({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final rangeButtonSrc = ref.watch(ragneToggleStateProvider);
    final widgetChild = rangeButtonSrc
        ? OrdersPageRangeFilter()
        : SizedBox(
          width: 150,
          child: FormSubmitButtom(
              textChild: context.l10n.filterByRange,
              onPressed: () {
                ref.read(ragneToggleStateProvider.notifier).openRangeButton();
              },
            ),
        );
    return widgetChild;
  }
}
