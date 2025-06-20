import 'package:converter_screens_erp/presentation/order/viewmodel/order_providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateOrderView extends ConsumerWidget {
  final String title;

  const CreateOrderView ({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(orderIndexProvider);
    final viewModelProvider = ref.watch(orderViewModelProvider);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0081F5),
          foregroundColor: Colors.white,
          title: Text(title),
          leading: IconButton(
              onPressed: () {
                context.pop();
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
        /*
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
                ref.read(orderIndexProvider.notifier).state = 1;
                switch(index) {
                  case 0:
                    context.go('/product');
                    break;
                  case 1:
                    context.go('/order');
                    break;
                  case 2:
                    context.go('/home');
                    break;
                  case 3:
                    context.go('/customer');
                    break;
                  case 4:
                    context.go('/agenda');
                }
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag, size: 28),
                    label: "Product List"
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
                            Icons.add_circle,
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
                    icon: Icon(Icons.home_filled, size: 28),
                    label: "Home"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, size: 28),
                    label: "Customers"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month, size: 28),
                    label: "Agenda"
                ),
              ],
            ),
          ),
        ),
        */
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: "btn-go",
              backgroundColor: Color(0xFF0081F5),
              foregroundColor: Colors.white,
              onPressed: () {
                context.push('/order/create_order/invoicing_order');
              },
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(top: 48, left: 28, right: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xFF0081F5),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                                Icons.person_add, color: Colors.white, size: 22),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 4,
                          color: Color(0xFF0081F5),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xFF0081F5),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                                Icons.add_business, color: Colors.white, size: 22),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 4,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade500,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                                Icons.attach_money_sharp, color: Colors.white, size: 22),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 4,
                              color: Colors.grey.shade500,
                            ),
                          )
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade500,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                                Icons.check, color: Colors.white, size: 22),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 12, right: 12),
                        child: Divider(
                          color: Colors.grey.shade400,
                          height: 64,
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 12, right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 80,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {

                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF0081F5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 3
                              ),
                              child: Icon(
                                Icons.add,
                                size: 28,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 32),
                          child: Column(
                            children: [
                              TextField(
                                onTapOutside: (event) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                keyboardType: TextInputType.numberWithOptions(decimal: true),
                                decoration: InputDecoration(
                                    hintText: "Qtd. Produtos",
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 2
                                        )
                                    )
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 18)),
                              TextField(
                                onTapOutside: (event) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                keyboardType: TextInputType.numberWithOptions(decimal: true),
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Text(
                                      "R\$",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 0,
                                    minHeight: 0,
                                  ),
                                  hintText: "0,00",
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2
                                    )
                                  )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}