import 'package:flutter/material.dart';
import 'package:ratata_app/app/utils/utils.dart';
import 'package:ratata_app/app/widgets/widgets.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {

  String name = 'Pedro Luiz dos Santos';
  String email = 'PedroLuiz@gmail.com';
  String telefone = '(11) 9999-3396';
  String senha = '************';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 52,
                    child: IconButton(
                      iconSize: 32,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)
                    ),
                  ),
                  Text(
                    'Meu Perfil',
                    style: title1,
                  ),
                  const SizedBox(
                    width: 52,
                    height: 52,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: primaryLightColor,
                      ),
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                      width: double.infinity,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.orange[200],
                            child: SizedBox(
                              height: 198,
                              width: 198,
                              child: Icon(
                                Icons.person_outline,
                                color: blackColor,
                                size: 60,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            name,
                            style: subtitle1,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                      child: Divider(
                        //height: 1,
                        color: blackColor.withOpacity(0.1),
                      ),
                    ),
                    ///Todo
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: primaryLightColor,
                      ),
                      padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                      width: double.infinity,
                      child: Text(
                          'Informações do perfil',
                        style: button,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ListItem(
                        title: 'Nome Completo',
                        subtitle: name
                    ),
                    Divider(
                      height: 1,
                      color: blackColor.withOpacity(0.1),
                    ),
                    ListItem(
                        title: 'Email',
                        subtitle: email
                    ),
                    Divider(
                      height: 1,
                      color: blackColor.withOpacity(0.1),
                    ),
                    ListItem(
                        title: 'Telefone',
                        subtitle: telefone
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Divider(
                        height: 1,
                        color: blackColor.withOpacity(0.1),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: primaryLightColor,
                      ),
                      padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                      width: double.infinity,
                      child: Text(
                        'Segurança',
                        style: button,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ListItem(
                        title: 'Senha',
                        subtitle: senha
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Divider(
                        height: 1,
                        color: blackColor.withOpacity(0.1),
                      ),
                    ),
                    OutlineCustom(
                      label: 'Sair',
                      onPressed: (){},

                    )


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  const ListItem({Key? key, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: body1.copyWith(color: blackColor87),
          ),
          Text(
            subtitle,
            style: body2.copyWith(color: blackColor60),
          )
        ],
      ),
    );
  }
}

