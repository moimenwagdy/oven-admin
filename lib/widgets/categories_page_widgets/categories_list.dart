import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';
import 'package:oven_admin/widgets/categories_page_widgets/category_Item.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  List<Category> array = [];

  @override
  void initState() {
    super.initState();
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    try {
      final response = await http.get(
        Uri.parse('https://dummyjson.com/products/categories'),
      );

      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        final result = data.map((e) => Category.fromJson(e)).toList();

        if (mounted) {
          setState(() {
            array = result;
          });
        }
      } else {
        throw Exception('Failed to load categories');
      }
    } catch (e) {
      debugPrint('Error fetching categories: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight - 100,
      width: 300,
      child: ListView.separated(
        separatorBuilder: (context, index) => Container(
          color: Theme.of(context).colorScheme.onPrimary,
          height: 5,
        ),
        itemCount: array.isNotEmpty ? array.length : 20,
        itemBuilder: (context, index) {
          final item = array.isNotEmpty
              ? array[index]
              : Category(name: "data", slug: "data", url: "dsadas");

          return CategoryItem(title: item.name);
        },
      ),
    );
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
