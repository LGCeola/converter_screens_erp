import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PasswordView extends ConsumerWidget {
  final String title;

  const PasswordView ({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final viewModelProvider = ref.watch(passwordViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0081F5),
        foregroundColor: Colors.white,
        title: Text(title),
        leading: IconButton(
          onPressed: () {
            context.go('/');
          }, 
          icon: Icon(Icons.arrow_back_ios_new, size: 22)
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  Icons.password_outlined,
                color: Colors.blue,
                size: 48,
              ),
              Text(
                textAlign: TextAlign.center,
                  "Deseja recuperar sua senha\n e continuar?",
                style: TextStyle(
                  fontSize: 28
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 32)),
              TextField(
                keyboardType: TextInputType.emailAddress,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                decoration: InputDecoration(
                  labelText: "E-mail",
                  floatingLabelStyle: TextStyle(
                    color: Colors.indigo
                  ),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 2
                      )
                  )
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 22)),
              ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    padding: EdgeInsets.symmetric(horizontal: 120, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    backgroundColor: Color(0xFF0081F5),
                    foregroundColor: Colors.white
                  ),
                  child: Text(
                      "Enviar Código",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              TextButton.icon(
                  onPressed: () {
                    context.go('/');
                  },
                  icon: Icon(
                      Icons.arrow_back,
                    color: Colors.black54,
                  ),
                  label: Text(
                      "Voltar para login",
                    style: TextStyle(
                        color: Colors.black54
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}