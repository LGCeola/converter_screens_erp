import 'package:converter_screens_erp/presentation/auth/view/login_view.dart';
import 'package:converter_screens_erp/presentation/customer/models/customer.dart';
import 'package:converter_screens_erp/presentation/customer/view/customer_details.dart';
import 'package:converter_screens_erp/presentation/customer/view/customer_view.dart';
import 'package:converter_screens_erp/presentation/customer/viewmodel/customer_view_model.dart';
import 'package:converter_screens_erp/presentation/home/view/home_view.dart';
import 'package:converter_screens_erp/presentation/order/view/create_order_view.dart';
import 'package:converter_screens_erp/presentation/order/view/finish_order_view.dart';
import 'package:converter_screens_erp/presentation/order/view/invoicing_order_view.dart';
import 'package:converter_screens_erp/presentation/order/view/order_details.dart';
import 'package:converter_screens_erp/presentation/order/view/order_view.dart';
import 'package:converter_screens_erp/presentation/password/view/password_recovery_view.dart';
import 'package:converter_screens_erp/presentation/auth/view/signup_view.dart';
import 'package:converter_screens_erp/presentation/product/models/product.dart';
import 'package:converter_screens_erp/presentation/product/view/product_view.dart';
import 'package:converter_screens_erp/presentation/product/view/product_details.dart';
import 'package:converter_screens_erp/presentation/schedule/view/agenda_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return LoginView(title: "Login");
          },
        routes: [
          GoRoute(
              path: 'password',
              builder: (BuildContext context, GoRouterState state) {
                return PasswordView(title: "Recuperar Senha");
              },
          ),
          GoRoute(
            path: 'signup',
            builder: (BuildContext context, GoRouterState state) {
              return SignupView(title: "Cadastrar-se");
            },
          ),
        ]
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return HomeView(title: "Início");
        },
        routes: [
          GoRoute(
            path: 'order_details',
            builder: (BuildContext context, GoRouterState state) {
              return OrderDetailsView(title: "Detalhes de Pedidos");
            }
          )
        ]
      ),
      GoRoute(
        path: '/product',
        builder: (BuildContext context, GoRouterState state) {
          return ProductView(title: "Catálogo de Produtos");
        },
        routes: [
          GoRoute(
            path: 'product_details',
            builder: (BuildContext context, GoRouterState state) {
              final product = state.extra as Product;
              return ProductDetails(title: "", products: product);
            }
          )
        ]
      ),
      GoRoute(
        path: '/order',
        builder: (BuildContext context, GoRouterState state) {
          return OrderView(title: "Adicionar Clientes");
        },
        routes: [
          GoRoute(
            path: 'create_order',
            builder: (BuildContext context, GoRouterState state) {
              return CreateOrderView(title: "Criar Pedido");
            },
            routes: [
              GoRoute(
                path: 'invoicing_order',
                builder: (BuildContext context, GoRouterState state) {
                  return InvoicingOrderView(title: "Faturamento");
                },
                routes: [
                  GoRoute(
                    path: 'finish_order',
                    builder: (BuildContext context, GoRouterState state) {
                      return FinishOrderView(title: "");
                    },
                  ),
                ]
              ),
            ]
          ),
        ]
      ),
      GoRoute(
        path: '/customer',
        builder: (BuildContext context, GoRouterState state) {
          final customerData = CustomerViewModel();
          final customers = customerData.customers;
          return CustomerView(title: "Clientes", customers: customers);
        },
        routes: [
          GoRoute(
            path: 'customer_details',
            builder: (BuildContext context, GoRouterState state) {
              final customer = state.extra as Customer;
              return CustomerDetails(title: "", customers: customer);
            }
          )
        ]
      ),
      GoRoute(
        path: '/agenda',
        builder: (BuildContext context, GoRouterState state) {
          return AgendaView(title: "Agenda");
        },
      ),
    ]
);