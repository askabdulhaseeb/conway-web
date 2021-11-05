import 'package:conway_web/utilities/custom_images.dart';
import 'package:conway_web/utilities/utilities.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SuggestionPage extends StatefulWidget {
  const SuggestionPage({Key? key}) : super(key: key);
  @override
  State<SuggestionPage> createState() => _SuggestionPageState();
}

class _SuggestionPageState extends State<SuggestionPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 300,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: <Widget>[
            _ShowSuggestion(
              imagePath: CustomImages.waterCan,
              title: 'Water Gallon 19 Ltr',
              subtitle:
                  'Get clean, refreshing water Gallon delivered straight to your home or business.',
            ),
            _ShowSuggestion(
              imagePath: CustomImages.waterBottle,
              title: 'Water Bottle',
              subtitle:
                  'Get clean, refreshing water Bottle delivered straight to your home or business.',
            ),
            _ShowSuggestion(
              imagePath: CustomImages.waterGlass,
              title: 'Water Glass',
              subtitle: 'Get clean, refreshing glass of water for free.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _showSuggestion({
    required String imagePath,
    required String title,
    required String subtitle,
    required BuildContext context,
  }) {
    bool _mouseIn = false;
    return MouseRegion(
      onEnter: (PointerEnterEvent event) => setState(() {
        _mouseIn = true;
      }),
      onHover: (PointerHoverEvent event) => setState(() {
        _mouseIn = true;
      }),
      onExit: (PointerExitEvent event) => setState(() {
        _mouseIn = false;
      }),
      child: Container(
        width: (_mouseIn) ? 320 : 300,
        padding: EdgeInsets.all(Utilities.padding),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: (_mouseIn) ? 120 : 100,
              width: (_mouseIn) ? 120 : 100,
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
      ),
    );
  }
}

class _ShowSuggestion extends StatefulWidget {
  const _ShowSuggestion({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String subtitle;

  @override
  __ShowSuggestionState createState() => __ShowSuggestionState();
}

class __ShowSuggestionState extends State<_ShowSuggestion> {
  bool _mouseIn = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (PointerEnterEvent event) => setState(() {
        _mouseIn = true;
      }),
      onHover: (PointerHoverEvent event) => setState(() {
        _mouseIn = true;
      }),
      onExit: (PointerExitEvent event) => setState(() {
        _mouseIn = false;
      }),
      child: Container(
        width: (_mouseIn) ? 320 : 300,
        padding: EdgeInsets.all(Utilities.padding / 2),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: (_mouseIn) ? 120 : 100,
              width: (_mouseIn) ? 120 : 100,
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            SelectableText(
              widget.title,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            SelectableText(
              widget.subtitle,
              maxLines: 3,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
