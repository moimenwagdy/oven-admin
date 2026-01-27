import 'package:oven_admin/widgets/orders_page_widgets/orders_list/order_items.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'orders_provider.g.dart';

@Riverpod(keepAlive: true)
class OrdersNotifier extends _$OrdersNotifier {
  @override
  FutureOr<List<OrderItem>> build() async {
    return fetchOrders();
  }

  Future<List<OrderItem>> fetchOrders() async {
    await Future.delayed(const Duration(seconds: 2));
    return ordersList;
  }
}

class OrderItem {
  final String id;
  final String userId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<OrderContentItemType> orderItems;
  final double totalCost;
  final double? discount;
  final String status;

  OrderItem({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.orderItems,
    required this.totalCost,
    required this.discount,
    required this.userId,
    required this.status,
  });
  void totalCostCount() async {}
}

final List<OrderItem> ordersList = [
  OrderItem(
    id: "ORD-001",
    createdAt: DateTime.now().subtract(const Duration(days: 0)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-01", title: "Molten Cake", quantity: 2),
      OrderContentItemType(id: "IT-02", title: "Espresso", quantity: 3),
    ],
    totalCost: 550,
    discount: 0.12,
    userId: "USR-01",
    status: "Preparing",
  ),
  OrderItem(
    id: "ORD-002",
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-03", title: "Cheesecake", quantity: 5),
      OrderContentItemType(id: "IT-04", title: "Latte", quantity: 2),
    ],
    totalCost: 430,
    discount: null,
    userId: "USR-02",
    status: "Delivered",
  ),
  OrderItem(
    id: "ORD-003",
    createdAt: DateTime.now().subtract(const Duration(days: 60)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-05", title: "Brownies", quantity: 1),
      OrderContentItemType(id: "IT-06", title: "Cappuccino", quantity: 4),
    ],
    totalCost: 390,
    discount: 0.05,
    userId: "USR-01",
    status: "Cancelled",
  ),
  OrderItem(
    id: "ORD-004",
    createdAt: DateTime.now().subtract(const Duration(days: 360)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-07", title: "Croissant", quantity: 3),
      OrderContentItemType(id: "IT-08", title: "Americano", quantity: 6),
    ],
    totalCost: 270,
    discount: null,
    userId: "USR-03",
    status: "Delivered",
  ),
  OrderItem(
    id: "ORD-005",
    createdAt: DateTime.now().subtract(const Duration(days: 180)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-09", title: "Pancakes", quantity: 6),
      OrderContentItemType(id: "IT-101", title: "Hot Chocolate", quantity: 2),
      OrderContentItemType(id: "IT-103", title: "Hot ", quantity: 1),
      OrderContentItemType(id: "IT-1004", title: " Chocolate", quantity: 3),
      OrderContentItemType(id: "IT-1006", title: "Hot Chocolate", quantity: 4),
      OrderContentItemType(id: "IT-106", title: "Hot ", quantity: 1),
      OrderContentItemType(id: "IT-1007", title: "Hot Chocolate", quantity: 3),
      OrderContentItemType(id: "IT-10231", title: " Chocolate", quantity: 6),
      OrderContentItemType(id: "IT-10213", title: "Hot Chocolate", quantity: 7),
      OrderContentItemType(id: "IT-10566", title: "Hot ", quantity: 6),
      OrderContentItemType(id: "IT-106", title: " Chocolate", quantity: 9),
      OrderContentItemType(id: "IT-1031", title: "Hot Chocolate", quantity: 6),
      OrderContentItemType(id: "IT-1065561", title: "Hot ", quantity: 11),
      OrderContentItemType(id: "IT-1061653", title: " Chocolate", quantity: 6),
      OrderContentItemType(id: "IT-10123", title: "Hot Chocolate", quantity: 2),
    ],
    totalCost: 480,
    discount: 0.10,
    userId: "USR-04",
    status: "Preparing",
  ),
  OrderItem(
    id: "ORD-006",
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-11", title: "Waffles", quantity: 2),
      OrderContentItemType(id: "IT-12", title: "Mocha", quantity: 2),
    ],
    totalCost: 510,
    discount: null,
    userId: "USR-02",
    status: "Delivered",
  ),
  OrderItem(
    id: "ORD-007",
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-13", title: "Donuts", quantity: 3),
      OrderContentItemType(id: "IT-14", title: "Flat White", quantity: 3),
    ],
    totalCost: 360,
    discount: 0.08,
    userId: "USR-05",
    status: "Scheduled",
  ),
  OrderItem(
    id: "ORD-008",
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-15", title: "Apple Pie", quantity: 3),
      OrderContentItemType(id: "IT-16", title: "Tea", quantity: 3),
    ],
    totalCost: 300,
    discount: null,
    userId: "USR-06",
    status: "Delivered",
  ),
  OrderItem(
    id: "ORD-009",
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-17", title: "Tiramisu", quantity: 1),
      OrderContentItemType(id: "IT-18", title: "Iced Coffee", quantity: 1),
    ],
    totalCost: 620,
    discount: 0.15,
    userId: "USR-01",
    status: "Delivered",
  ),
  OrderItem(
    id: "ORD-010",
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-19", title: "Chocolate Muffin", quantity: 4),
      OrderContentItemType(id: "IT-20", title: "Macchiato", quantity: 4),
    ],
    totalCost: 340,
    discount: null,
    userId: "USR-07",
    status: "Cancelled",
  ),
  OrderItem(
    id: "ORD-011",
    createdAt: DateTime.now().subtract(const Duration(days: 10)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-21", title: "Banana Bread", quantity: 2),
      OrderContentItemType(id: "IT-22", title: "Cortado", quantity: 2),
    ],
    totalCost: 410,
    discount: 0.06,
    userId: "USR-08",
    status: "Scheduled",
  ),
  OrderItem(
    id: "ORD-012",
    createdAt: DateTime.now().subtract(const Duration(days: 11)),
    updatedAt: DateTime.now(),
    orderItems: [
      OrderContentItemType(id: "IT-23", title: "Red Velvet Cake", quantity: 6),
      OrderContentItemType(id: "IT-24", title: "Matcha Latte", quantity: 6),
    ],
    totalCost: 670,
    discount: 0.20,
    userId: "USR-09",
    status: "Delivered",
  ),
];
