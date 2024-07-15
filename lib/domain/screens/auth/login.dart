import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:recargas_beta2/domain/screens/dashboard.dart';

class Login extends StatefulWidget {
  const Login({
    super.key
  });

  @override
  State < Login > createState() => _LoginState();
}

class _LoginState extends State < Login > {
  final _formKey = GlobalKey < FormBuilderState > ();
  final usernameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  bool hiddenPassword = true;

  @override
  void initState() {
    super.initState();
    usernameFocusNode.addListener(() {
      if (!usernameFocusNode.hasFocus) _formKey.currentState?.fields['username']?.validate();
    });
    passwordFocusNode.addListener(() {
      if (!passwordFocusNode.hasFocus) _formKey.currentState?.fields['password']?.validate();
    });
  }

  @override
  void dispose() {
    usernameFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 30, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/logo_white.png',
                        width: 200,
                      ),
                      FormBuilder(
                        key: _formKey,
                        child: Column(
                          children: [
                            FormBuilderTextField(
                              maxLength: 6,
                              focusNode: usernameFocusNode,
                              onEditingComplete: () => _formKey.currentState?.saveAndValidate(),
                              name : 'username',
                              decoration: const InputDecoration(
                                labelText: 'Usuario'
                              ),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(errorText: 'El campo de correo electrónico es requerido'),
                              ]),
                            ),
                            const SizedBox(height: 30, ),
                              FormBuilderTextField(
                                maxLength: 6,
                                obscureText: hiddenPassword,
                                focusNode: passwordFocusNode,
                                name: 'password',
                                decoration: InputDecoration(
                                  labelText: 'Contraseña',
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        hiddenPassword = !hiddenPassword;
                                      });
                                    },
                                    icon: Icon(
                                      (hiddenPassword) ? Icons.visibility_off : Icons.visibility
                                    )
                                  )
                                ),
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.maxLength(6, errorText: 'La contraseña debe tener máximo 6 caracteres'),
                                  FormBuilderValidators.minLength(6, errorText: 'La contraseña debe tener mínimo 6 caracteres'),
                                  FormBuilderValidators.required()
                                ]),
                              ),
                              const SizedBox(height: 10, ),
                                FormBuilderCheckbox(
                                  name: 'remember',
                                  title: const Text('Recordar contraseña')
                                )
                          ],
                        )
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue),
                        ),
                        onPressed: () {
                          bool ? nose = _formKey.currentState?.saveAndValidate();
                          if (nose!) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) =>
                                const Dashboard(), )
                            );
                          } else {
                            const AlertDialog(
                              title: Text('Error'),
                              content: Text('Revisa tus datos dados'),
                            );
                          }
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(color: Colors.white),
                        )
                    ),
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}