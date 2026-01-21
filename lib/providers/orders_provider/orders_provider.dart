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

  // void addProduct(Product payload) {
  //   englishProducts.add(payload);
  // }

  // void deletePRoduct(String payload) {
  //   final index = englishProducts.indexWhere((r) => r.id == payload);
  //   englishProducts.remove(englishProducts[index]);
  // }
}

class OrderItem {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<String> orderItems;
  final double totalCost;
  final double? discount;
  final String userId;
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
}

final List<OrderItem> ordersList = [
  OrderItem(
    id: "id",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    orderItems: ["sadaf", "safasdf", "sadfsdaf", "asdfdas"],
    totalCost: 550,
    discount: .2,
    userId: "a4eft5",
    status: "prepairng",
  ),
  OrderItem(
    id: "id",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    orderItems: ["dsfgh", "kiukh", "rtyrt", "nbmb"],
    totalCost: 390,
    discount: .2,
    userId: "123tyr",
    status: "Cancelled",
  ),
];
