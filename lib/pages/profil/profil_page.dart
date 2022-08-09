library profil_page;

import 'package:my_app/imports/packages.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() {
    return _ProfilPageState();
  }
}

class _ProfilPageState extends State<ProfilPage> {

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Hello Profil !')
    );
  }
}
