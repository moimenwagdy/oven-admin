import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oven_admin/pages/accounts_page.dart';
import 'package:oven_admin/pages/authentication_page.dart';
import 'package:oven_admin/pages/categories_page.dart';
import 'package:oven_admin/pages/images_page.dart';
import 'package:oven_admin/pages/orders_page.dart';
import 'package:oven_admin/pages/products_lists_page.dart';
import 'package:oven_admin/pages/products_page.dart';
import 'package:oven_admin/pages/rules_page.dart';

import 'package:oven_admin/pages/home_page.dart';
import 'package:oven_admin/widgets/layout/layout_wrapper.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/auth",
  routes: [
    GoRoute(
      path: '/auth',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: AuthenticationPage()),
    ),
    ShellRoute(
      builder: (context, state, navigationShell) {
        return LayoutWrapper(child: navigationShell);
      },
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) =>
              NoTransitionPage(child: MyHomePage()),
        ),
        GoRoute(
          path: "/categories",
          pageBuilder: (context, state) =>
              NoTransitionPage(child: CategoriesPage()),
        ),
        GoRoute(
          path: '/products',
          pageBuilder: (context, state) =>
              NoTransitionPage(child: ProductsPage()),
        ),
        GoRoute(
          path: '/lists',
          pageBuilder: (context, state) =>
              NoTransitionPage(child: ProductsListsPage()),
        ),
        GoRoute(
          path: '/orders',
          pageBuilder: (context, state) =>
              NoTransitionPage(child: OrdersPage()),
        ),
        GoRoute(
          path: '/accounts',
          pageBuilder: (context, state) =>
              NoTransitionPage(child: AccountsPage()),
        ),
        GoRoute(
          path: '/images',
          pageBuilder: (context, state) =>
              NoTransitionPage(child: ImagesPage()),
        ),
        GoRoute(
          path: '/rules',
          pageBuilder: (context, state) => NoTransitionPage(child: RulesPage()),
        ),
      ],
    ),
  ],
);
