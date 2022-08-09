library profil_page;

import 'package:my_app/imports/packages.dart';
import 'package:my_app/pages/profil/components/presentation_component.dart';
import 'package:my_app/pages/profil/components/follow_component.dart';
import 'package:my_app/pages/profil/components/about_component.dart';

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
    return SingleChildScrollView(
      child: Column(children: const [
        PresentationProfil(),
        FollowProfil(),
        AboutProfil(),
      ]),
    );
  }
}
