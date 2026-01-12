import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'categories_provider.g.dart';

@Riverpod(keepAlive: true)
class CategoriesNotifier extends _$CategoriesNotifier {
  @override
  FutureOr<List<Category>> build() async {
    return fetchCategories();
  }

  Future<List<Category>> fetchCategories() async {
    final response = await http.get(
      Uri.parse('https://dummyjson.com/products/categories'),
    );
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => Category.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(fetchCategories);
  }
}

class Category {
  final String slug;
  final String name;
  final String url;

  Category({required this.slug, required this.name, required this.url});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      slug: json['slug'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }
}
