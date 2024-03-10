import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ratata_app/app/utils/utils.dart';
import 'package:ratata_app/app/widgets/widgets.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Image.asset(
                          ImagesPath.logo,
                          width: 227,
                          height: 171,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Ratatá',
                          style: heading6,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Column(
                    children: [
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
                      const SizedBox(height: 16),
                      ElevatedCustom(
                          text: 'Entrar',
                          onPressed: (){
                            ///TODO
                            Navigator.pushNamedAndRemoveUntil(context, RouteGenerator.rHome, (route) => false);
                          }
                      ),
                    ],
                  ),
                  const SizedBox(height: 64),
                  Column(
                    children: [
                      Text(
                        'ou continue com Google',
                        style: subtitle1,
                      ),
                      const ButtonGoogle(),
                    ],
                  ),
                  const SizedBox(height: 64),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Ainda não possui conta? ',
                          style: body1.copyWith(color: blackColor),
                          children: [
                            TextSpan(
                                text: 'Cadastre-se',
                                style: body1.copyWith(
                                    color: blackColor,
                                    decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()..onTap = () {
                                  Navigator.pushNamedAndRemoveUntil(context, RouteGenerator.rSignUp, (route) => false);
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
