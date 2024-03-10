import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ratata_app/app/utils/utils.dart';
import 'package:ratata_app/app/widgets/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Ratatá',
                      style: heading5.copyWith(fontWeight: FontWeight.w500, fontSize: 28),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Column(
                    children: [
                      InputCustom(
                          controller: nomeController,
                          hint: 'Digite seu nome',
                          label: 'Nome completo'
                      ),
                      InputCustom(
                          controller: emailController,
                          hint: 'Digite seu e-mail',
                          label: 'E-mail',
                          keyboardType: TextInputType.emailAddress
                      ),
                      InputCustom(
                          controller: passwordController,
                          hint: 'Digite sua senha',
                          label: 'Senha',
                          obscureText: true
                      ),
                      InputCustom(
                          controller: phoneController,
                          hint: 'Digite seu telefone',
                          label: 'Telefone',
                          keyboardType: TextInputType.phone
                      ),
                      const SizedBox(height: 16),
                      ElevatedCustom(
                          text: 'Cadastrar',
                          onPressed: (){}
                      ),
                    ],
                  ),
                  const SizedBox(height: 64),
                  Column(
                    children: [
                      Text(
                        'ou cadastre-se com Google',
                        style: subtitle1,
                      ),
                      const ButtonGoogle(),
                    ],
                  ),
                  const SizedBox(height: 64),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Já possui uma conta? ',
                          style: body1.copyWith(color: blackColor),
                          children: [
                            TextSpan(
                                text: 'Faça o login',
                                style: body1.copyWith(
                                  color: blackColor,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()..onTap = () {
                                  Navigator.pushNamedAndRemoveUntil(context, RouteGenerator.rSignIn, (route) => false);
                                }
                            ),
                          ]
                      )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
