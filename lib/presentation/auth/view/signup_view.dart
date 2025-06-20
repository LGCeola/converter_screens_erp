import 'package:converter_screens_erp/presentation/auth/viewmodel/signup_providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignupView extends ConsumerWidget {
  final String title;

  const SignupView ({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = ref.watch(signupViewModelProvider);

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
                /*
                Container(
                  // imagem aqui
                ),
                */
                Text(
                    "Cadastre-se",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
                ),
                Padding(padding: EdgeInsets.all(16)),
                TextField(
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  decoration: InputDecoration(
                      labelText: "Nome",
                      floatingLabelStyle: TextStyle(
                          color: Colors.indigo
                      ),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 2
                          )
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.all(16)),
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
                Padding(padding: EdgeInsets.all(16)),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  obscureText: viewModelProvider.isVisible,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    floatingLabelStyle: TextStyle(
                      color: Colors.indigo
                    ),
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 2
                      )
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          viewModelProvider.toggleVisibility();
                        }, 
                        icon: Icon(
                          viewModelProvider.isVisible
                          ? Icons.visibility_off
                          : Icons.visibility
                        )
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  decoration: InputDecoration(
                    labelText: "Confirmar senha",
                    floatingLabelStyle: TextStyle(
                      color: Colors.indigo
                    ),
                    //
                    // Fazer função de confirmaçao de senha;
                    // ? confirmaçãoCorreta Icons.check_circle
                    // : confirmaçãoIncorreta Icons.close_sharp
                    //
                    prefixIcon: Icon(
                        Icons.cancel_sharp,
                        color: Colors.red,
                    ),
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
                      context.go('/');
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
                      "Registrar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
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