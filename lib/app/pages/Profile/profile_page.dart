import 'package:flutter/material.dart';
import 'package:ratata_app/app/utils/utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  String name = 'Pedro Luiz dos Santos';
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
            child: Text(
                'Perfil',
              style: title1,
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
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: blueLightColor
                            ),
                            onPressed: (){},
                            child: Text(
                              'Editar perfil',
                              style: caption.copyWith(color: blueLightColor),
                            )
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Divider(
                      //height: 1,
                      color: blackColor.withOpacity(0.1),
                    ),
                  ),
                  ListTileCustom(
                      onPress: (){
                        Navigator.pushNamed(context, RouteGenerator.rMyProfile);
                      },
                      label: 'Minhas informações'
                  ),
                  ListTileCustom(
                      onPress: (){},
                      label: 'Meu plano'
                  ),
                  ListTileCustom(
                      onPress: (){},
                      label: 'Ajuda'
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListTileCustom extends StatelessWidget {
  final void Function() onPress;
  final String label;
  const ListTileCustom({super.key, required this.onPress, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            title: Text(label),
            onTap: onPress,
            titleTextStyle: body1
        ),
        Divider(height: 1, color: greyColor),
      ],
    );
  }
}