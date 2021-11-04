import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'suggestion_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);
  static const String routeName = '/IndexPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          LandingPage(),
          SuggestionPage(),
        ],
      ),
    );
  }
}
