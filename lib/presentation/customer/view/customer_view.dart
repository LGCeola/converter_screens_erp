import 'package:converter_screens_erp/presentation/customer/models/customer.dart';
import 'package:converter_screens_erp/presentation/customer/viewmodel/customer_providers.dart';
import 'package:converter_screens_erp/presentation/customer/widgets/cards/customer_card.dart';
import 'package:converter_screens_erp/presentation/home/viewmodel/home_providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerView extends ConsumerWidget {
  final String title;
  final List<Customer> customers;

  const CustomerView ({
    super.key,
    required this.title,
    required this.customers
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(customerIndexProvider);
    final viewModelProvider = ref.watch(customerViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0081F5),
        foregroundColor: Colors.white,
        title: Text(title),
        leading: IconButton(
          onPressed: () {
            context.go('/home');
          },
          icon: Icon(Icons.arrow_back_ios_new, size: 22)
        ),
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.notifications)
          ),
        ],
      ),
      body: CustomerCard(customers: customers),
      /*
      Padding(
        padding: EdgeInsets.all(2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 12),
              child: ElevatedButton(
                onPressed: () {
                  
                }, 
                child: Icon(Icons.filter_alt)
              )
            )
          ],
        ),
      ),
      */
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF0081F5),
        foregroundColor: Colors.white,
        onPressed: () {

        },
        child: Icon(Icons.group_add),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            selectedItemColor: Color(0xFF0081F5),
            backgroundColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            onTap: (index) {
              ref.read(homeIndexProvider.notifier).state = 2;
              switch(index) {
                case 0:
                  context.push('/product');
                  break;
                case 1:
                  context.push('/order');
                  break;
                case 2:
                  context.go('/home');
                  break;
                case 3:
                  context.push('/customer');
                  break;
                case 4:
                  context.push('/agenda');
              }
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag, size: 28),
                  label: "Product List"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle, size: 28),
                  label: "Create Order"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled, size: 28),
                  label: "Home"
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Color(0xFF0081F5),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 32,
                        ),
                      )
                    ],
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month, size: 28),
                  label: "Agenda"
              ),
            ],
          ),
        ),
      ),
    );
  }
}