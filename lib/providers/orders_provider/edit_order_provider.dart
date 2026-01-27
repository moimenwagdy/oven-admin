import 'package:oven_admin/providers/orders_provider/orders_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'edit_order_provider.g.dart';

@riverpod
class EditOrderNotifier extends _$EditOrderNotifier {
  @override
  OrderItem? build() => null;

  void openOrderItemToEdit(OrderItem? value) => state = value;
  void clearOrderItemEditForm(OrderItem? value) => state = null;

  void updateOrderStatus(String value) {
    final current = state;
    if (current == null) return;
    state = OrderItem(
      createdAt: current.createdAt,
      updatedAt: current.updatedAt,
      status: value,
      discount: current.discount,
      id: current.id,
      orderItems: current.orderItems,
      totalCost: current.totalCost,
      userId: current.userId,
    );
  }

  void removeItemFromOrderItems(String id) {
    final current = state;
    if (current == null) return;
    final updatedItems = current.orderItems.where((ele) {
      return ele.id != id;
    }).toList();

    state = OrderItem(
      createdAt: current.createdAt,
      updatedAt: current.updatedAt,
      status: current.status,
      discount: current.discount,
      id: current.id,
      orderItems: updatedItems,
      totalCost: current.totalCost,
      userId: current.userId,
    );
  }
}
