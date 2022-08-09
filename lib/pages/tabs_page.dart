library main_page;

import 'package:my_app/imports/packages.dart';
import 'package:my_app/imports/pages.dart';
import 'package:my_app/widgets/appbar_widget.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() {
    return _TabsPageState();
  }
}

class _TabsPageState extends State<TabsPage> {
  int selectedIndex = 0;

  static const List<Widget> _pageOptions = <Widget>[
    HomePage(),
    AddPage(),
    ProfilPage(),
  ];

  static const List<String> _titleOptions = <String>[
    'Accueil',
    'Add',
    'Profil'
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: _titleOptions.elementAt(selectedIndex)),
      body: _pageOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: onItemTapped,
          currentIndex: selectedIndex,
          selectedFontSize: 20.0,
          unselectedFontSize: 14.0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          items: const [

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil'),
            
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Ajouter un post'
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              label: 'Profil'
            ),
          ]),
    );
  }
}
