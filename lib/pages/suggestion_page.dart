import 'package:conway_web/utilities/custom_images.dart';
import 'package:conway_web/utilities/utilities.dart';
import 'package:flutter/material.dart';

class SuggestionPage extends StatelessWidget {
  const SuggestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: <Widget>[
            _showSuggestion(
              imagePath: CustomImages.waterCan,
              title: 'Water Gallon 19 Ltr',
              subtitle:
                  'Get clean, refreshing water Gallon delivered straight to your home or business.',
              context: context,
            ),
            _showSuggestion(
              imagePath: CustomImages.waterBottle,
              title: 'Water Bottle',
              subtitle:
                  'Get clean, refreshing water Bottle delivered straight to your home or business.',
              context: context,
            ),
            _showSuggestion(
              imagePath: CustomImages.waterGlass,
              title: 'Water Glass',
              subtitle: 'Get clean, refreshing glass of water for free.',
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  Container _showSuggestion({
    required String imagePath,
    required String title,
    required String subtitle,
    required BuildContext context,
  }) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(Utilities.padding),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          SelectableText(
            title,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          SelectableText(
            subtitle,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
