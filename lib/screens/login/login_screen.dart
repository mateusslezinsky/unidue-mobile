import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unidue/widgets/inkwell_wrapper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "Olá de novo!",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w800,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Entre com sua conta",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    maxLength: 80,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      prefixIconColor: Theme.of(context).colorScheme.outline,
                      labelText: "Email",
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    obscureText: !_isPasswordVisible,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      prefixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        child: Icon(
                          _isPasswordVisible
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                      labelText: "Senha",
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Esqueceu sua senha?",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  UnidueButton(
                      onPressed: () {},
                      buttonColor: Theme.of(context).colorScheme.primary,
                      buttonText: "Login"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
