import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unidue/screens/tabs/tabs.dart';
import 'package:unidue/widgets/inkwell_wrapper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _enteredEmail = "";
  String _enteredPassword = "";

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            key: _formKey,
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
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Campo obrigatório";
                      }
                      if (!value.contains("@")) {
                        return "Email inválido";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _enteredEmail = value!;
                    },
                  ),
                  const SizedBox(
                    height: 5,
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Campo obrigatório";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _enteredPassword = value!;
                    },
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
                      onPressed: _submit,
                      buttonColor: Theme.of(context).colorScheme.primary,
                      buttonText: "Login"),
                  const SizedBox(
                    height: 10,
                  ),
                  UnidueButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Tabs(),
                          ),
                          (route)=>false
                        );
                      },
                      buttonColor: Theme.of(context).colorScheme.primary,
                      buttonText: "Login desenvolvedor"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
