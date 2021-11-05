import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:conway_web/utilities/utilities.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);
  static const String routeName = '/ContactPage';
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  bool _mouseIn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor.withOpacity(0.9),
      padding: EdgeInsets.symmetric(vertical: Utilities.padding * 3),
      margin: EdgeInsets.only(top: Utilities.padding * 3),
      child: Column(
        children: <Widget>[
          const SelectableText(
            'CONWAY PAKISTAN',
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 10),
          const SelectableText(
            'Rana Market Near Punjab Motors\nGujranwala Road Doaba Hafizabad',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: const SelectableText(
              'Phone: 0325 00 18 000',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          (MediaQuery.of(context).size.width < Utilities.mobileLimit)
              ? Center(
                  child: Column(
                    children: <Widget>[
                      _copyright(),
                      _powerBy(),
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _copyright(),
                    const Icon(Icons.circle, size: 6, color: Colors.white70),
                    _powerBy(),
                  ],
                ),
          Container(),
        ],
      ),
    );
  }

  Row _copyright() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SelectableText(
          'Copyright ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Icon(Icons.copyright, size: 18, color: Colors.white70),
        SelectableText(
          '${DateTime.now().year} CONWAY   ',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Row _powerBy() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SelectableText(
          ' Powered By  ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: MouseRegion(
            onEnter: (PointerEnterEvent event) => setState(() {
              _mouseIn = true;
            }),
            onHover: (PointerHoverEvent event) => setState(() {
              _mouseIn = true;
            }),
            onExit: (PointerExitEvent event) => setState(() {
              _mouseIn = false;
            }),
            child: SelectableText(
              'Eyez Soft',
              style: TextStyle(
                color: (_mouseIn) ? Colors.white : Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
