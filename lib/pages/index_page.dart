import 'package:conway_web/pages/landing_page.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);
  static const String routeName = '/IndexPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
           LandingPage(),
        ],
      ),
    );
  }
}
