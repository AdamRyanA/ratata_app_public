import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ratata_app/app/pages/pages.dart';
import 'package:ratata_app/app/widgets/widgets.dart';
import '../../utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _indexAtual = 0;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    List<Widget> page = [
      const InicioPage(),
      const MapPage(),
      const FavoritePage(),
      const ProfilePage(),
    ];

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: whiteColor,
        body: page[_indexAtual],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _indexAtual,
            onTap: (index) {
              setState(() {
                _indexAtual = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            fixedColor: primaryColor,
            unselectedItemColor: blackColor,
            selectedLabelStyle: body2,
            unselectedLabelStyle: body2,
            backgroundColor: whiteColor,
            elevation: 0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Inicio'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.location_on), label: 'Mapa'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favoritos'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Perfil'),

            ]),
      ),
    );
  }
}
