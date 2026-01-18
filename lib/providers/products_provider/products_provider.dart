import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'products_provider.g.dart';

@Riverpod(keepAlive: true)
class ProductsNotifier extends _$ProductsNotifier {
  @override
  FutureOr<List<Product>> build() async {
    return fetchProducts();
  }

  Future<List<Product>> fetchProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    return englishProducts;
  }

  void addProduct(Product payload) {
    englishProducts.add(payload);
  }

  void deletePRoduct(String payload) {
    final index = englishProducts.indexWhere((r) => r.id == payload);
    englishProducts.remove(englishProducts[index]);
  }
}

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final double? discount;
  final List<Uint8List>? images;
  final Uint8List? thumbnail;
  final String categoryId;
  final String? video;
  final Uint8List? cover;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.thumbnail,
    required this.price,
    required this.discount,
    required this.categoryId,
    required this.cover,
    this.video,
  });
}

final List<Product> englishProducts = [
  Product(
    id: "1",
    title: "Bluberry Cheese Cake Jar ",
    description: "A lightweight moisturizer for daily hydration.",
    images: null,
    price: 12.99,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .10,
  ),
  Product(
    id: "2",
    title: "Caramel Tartelette",
    description: "Brightening serum for glowing skin.",
    images: null,
    price: 18.50,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .12,
  ),
  Product(
    id: "3",
    title: "Chocolate Hazelnut Cake",
    description: "Premium-quality 12-piece makeup brush set.",
    images: null,
    price: 22.00,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .15,
  ),
  Product(
    id: "4",
    title: "Dark Fudge Cake",
    description: "Premium-quality 12-piece makeup brush set.",
    images: null,
    price: 22.00,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .20,
  ),
  Product(
    id: "5",
    title: "Hazelnut Ganache Tartelette",
    description: "Premium-quality 12-piece makeup brush set.",
    images: null,
    price: 22.00,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .10,
  ),
  Product(
    id: "6",
    title: "Hazelnut Oven Molten Cake",
    description: "Premium-quality 12-piece makeup brush set.",
    images: null,
    price: 22.00,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .08,
  ),

  // Fragrances (4–6)
  Product(
    id: "7",
    title: "Honey Cake Honey Cake Honey Cake",
    description: "Fresh aquatic fragrance for daily wear.",
    images: null,
    price: 35.00,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .05,
  ),
  Product(
    id: "8",
    title: "Kinder Tartelette",
    description: "Warm woody scent with amber undertones.",
    images: null,
    price: 49.99,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .05,
  ),
  Product(
    id: "9",
    title: "Lotus Jar",
    description: "Light floral body mist with long-lasting freshness.",
    images: null,
    price: 14.99,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: null,
    discount: 0.7,
  ),
  Product(
    id: "10",
    title: "Maltesers Cake",
    description: "Light floral body mist with long-lasting freshness.",
    images: null,
    price: 14.99,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: null,
    discount: null,
  ),
  Product(
    id: "11",
    title: "Marble English Cake",
    description: "Light floral body mist with long-lasting freshness.",
    images: null,
    price: 14.99,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .05,
  ),
  Product(
    id: "12",
    title: "Mars Tartelette",
    description: "Light floral body mist with long-lasting freshness.",
    images: null,
    price: 14.99,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .15,
  ),

  // Furniture (7–9)
  Product(
    id: "13",
    title: "Mini Bluberry Cheese Cake",
    description: "Three-seater fabric sofa with wooden legs.",
    images: null,
    price: 450.00,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: null,
    discount: null,
  ),
  Product(
    id: "1400",
    title: "Mini Caramel Cheese Cake",
    description: "Minimalist coffee table made of oak wood.",
    images: null,
    price: 120.00,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: null,
    discount: null,
  ),
  Product(
    id: "14",
    title: "Mini Caramel Fudge",
    description: "Ergonomic chair with adjustable height and back support.",
    images: null,
    price: 99.99,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .03,
  ),
  Product(
    id: "15",
    title: "Mini Chocolate Lovers",
    description: "Ergonomic chair with adjustable height and back support.",
    images: null,
    price: 99.99,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: null,
    discount: null,
  ),
  Product(
    id: "16",
    title: "Mini Coffee Mousse",
    description: "Ergonomic chair with adjustable height and back support.",
    images: null,
    price: 99.99,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .15,
  ),
  Product(
    id: "17",
    title: "Mini Flutes",
    description: "Ergonomic chair with adjustable height and back support.",
    images: null,
    price: 99.99,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .08,
  ),

  // Groceries (10–12)
  Product(
    id: "18",
    title: "Mini KitKat",
    description: "1kg pack of healthy organic brown rice.",
    images: null,
    price: 5.99,
    categoryId: "Groceries",
    video: "",
    thumbnail: null,
    cover: null,
    discount: null,
  ),
  Product(
    id: "19",
    title: "Mini Lotus Molten Cake",
    description: "Cold-pressed olive oil, 500ml bottle.",
    images: null,
    price: 8.99,
    categoryId: "Groceries",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .12,
  ),
  Product(
    id: "20",
    title: "Mini Nutella Cheese Cake",
    description: "Premium roasted coffee beans, 1kg.",
    images: null,
    price: 15.50,
    categoryId: "Groceries",
    video: "",
    thumbnail: null,
    cover: null,
    discount: .15,
  ),
];
