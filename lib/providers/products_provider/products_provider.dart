import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'products_provider.g.dart';

@Riverpod(keepAlive: true)
class ProductsNotifier extends _$ProductsNotifier {
  @override
  FutureOr<List<Product>> build() async {
    return fetchCategories();
  }

  Future<List<Product>> fetchCategories() async {
    await Future.delayed(const Duration(seconds: 2));
    return englishProducts;
  }
}

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final List<String> images;
  final Uint8List? thumbnail;
  final String categoryId;
  final String? video;
  final String cover;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.thumbnail,
    required this.price,
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
    images: ["lib/assets/productsImages/Bluberry Cheese Cake Jar.png"],
    price: 12.99,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "2",
    title: "Caramel Tartelette",
    description: "Brightening serum for glowing skin.",
    images: ["lib/assets/productsImages/Caramel Tartelette.png"],
    price: 18.50,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "3",
    title: "Chocolate Hazelnut Cake",
    description: "Premium-quality 12-piece makeup brush set.",
    images: ["lib/assets/productsImages/Chocolate Hazelnut Cake.png"],
    price: 22.00,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "4",
    title: "Dark Fudge Cake",
    description: "Premium-quality 12-piece makeup brush set.",
    images: ["lib/assets/productsImages/Dark Fudge Cake.png"],
    price: 22.00,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "5",
    title: "Hazelnut Ganache Tartelette",
    description: "Premium-quality 12-piece makeup brush set.",
    images: ["lib/assets/productsImages/Hazelnut Ganache Tartelette.png"],
    price: 22.00,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "6",
    title: "Hazelnut Oven Molten Cake",
    description: "Premium-quality 12-piece makeup brush set.",
    images: ["lib/assets/productsImages/Hazelnut Oven Molten Cake.png"],
    price: 22.00,
    categoryId: "Beauty",
    video: "",
    thumbnail: null,
    cover: "",
  ),

  // Fragrances (4–6)
  Product(
    id: "7",
    title: "Honey Cake Honey Cake Honey Cake",
    description: "Fresh aquatic fragrance for daily wear.",
    images: ["lib/assets/productsImages/Honey Cake.png"],
    price: 35.00,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "8",
    title: "Kinder Tartelette",
    description: "Warm woody scent with amber undertones.",
    images: ["lib/assets/productsImages/Kinder Tartelette.png"],
    price: 49.99,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "9",
    title: "Lotus Jar",
    description: "Light floral body mist with long-lasting freshness.",
    images: ["lib/assets/productsImages/Lotus Jar.png"],
    price: 14.99,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "10",
    title: "Maltesers Cake",
    description: "Light floral body mist with long-lasting freshness.",
    images: ["lib/assets/productsImages/Maltesers Cake.png"],
    price: 14.99,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "11",
    title: "Marble English Cake",
    description: "Light floral body mist with long-lasting freshness.",
    images: ["lib/assets/productsImages/Marble English Cake.png"],
    price: 14.99,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "12",
    title: "Mars Tartelette",
    description: "Light floral body mist with long-lasting freshness.",
    images: ["lib/assets/productsImages/Mars Tartelette.png"],
    price: 14.99,
    categoryId: "Fragrances",
    video: "",
    thumbnail: null,
    cover: "",
  ),

  // Furniture (7–9)
  Product(
    id: "13",
    title: "Mini Bluberry Cheese Cake",
    description: "Three-seater fabric sofa with wooden legs.",
    images: ["lib/assets/productsImages/Mini Bluberry Cheese Cake.png"],
    price: 450.00,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "1400",
    title: "Mini Caramel Cheese Cake",
    description: "Minimalist coffee table made of oak wood.",
    images: ["lib/assets/productsImages/Mini Caramel Cheese Cake.png"],
    price: 120.00,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "14",
    title: "Mini Caramel Fudge",
    description: "Ergonomic chair with adjustable height and back support.",
    images: ["lib/assets/productsImages/Mini Caramel Fudge.png"],
    price: 99.99,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "15",
    title: "Mini Chocolate Lovers",
    description: "Ergonomic chair with adjustable height and back support.",
    images: ["lib/assets/productsImages/Mini Chocolate Lovers.png"],
    price: 99.99,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "16",
    title: "Mini Coffee Mousse",
    description: "Ergonomic chair with adjustable height and back support.",
    images: ["lib/assets/productsImages/Mini Coffee Mousse.png"],
    price: 99.99,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "17",
    title: "Mini Flutes",
    description: "Ergonomic chair with adjustable height and back support.",
    images: ["lib/assets/productsImages/Mini Flutes.png"],
    price: 99.99,
    categoryId: "Furniture",
    video: "",
    thumbnail: null,
    cover: "",
  ),

  // Groceries (10–12)
  Product(
    id: "18",
    title: "Mini KitKat",
    description: "1kg pack of healthy organic brown rice.",
    images: ["lib/assets/productsImages/Mini KitKat.png"],
    price: 5.99,
    categoryId: "Groceries",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "19",
    title: "Mini Lotus Molten Cake",
    description: "Cold-pressed olive oil, 500ml bottle.",
    images: ["lib/assets/productsImages/Mini Lotus Molten Cake.png"],
    price: 8.99,
    categoryId: "Groceries",
    video: "",
    thumbnail: null,
    cover: "",
  ),
  Product(
    id: "20",
    title: "Mini Nutella Cheese Cake",
    description: "Premium roasted coffee beans, 1kg.",
    images: ["lib/assets/productsImages/Mini Nutella Cheese Cake.png"],
    price: 15.50,
    categoryId: "Groceries",
    video: "",
    thumbnail: null,
    cover: "",
  ),
];
