import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateCustomer extends ConsumerWidget {
  final String title;
  
  const CreateCustomer ({
    super.key,
    required this.title
  });
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0081F5),
        foregroundColor: Colors.white,
        title: Text(title),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios_new, size: 22),
        ),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Nome",

            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "CPF",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Estado",
            ),
          ),
        ],
      ),
    );
  }
}