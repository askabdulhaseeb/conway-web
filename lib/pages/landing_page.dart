import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utilities/custom_images.dart';
import '../utilities/utilities.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  static const String routeName = '/LandingPage';
  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return SizedBox(
      height: _size.height * 0.94,
      width: double.infinity,
      // padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _appBar(width: _size.width),
          Expanded(
            child: _imageSection(_size, context),
          ),
        ],
      ),
    );
  }

  Widget _imageSection(Size _size, BuildContext context) {
    return (_size.width < Utilities.mobileLimit)
        ? Column(
            children: <Widget>[
              Opacity(
                opacity: 0.15,
                child: Text(
                  'Pure Water',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              Opacity(
                opacity: 0.3,
                child: Text(
                  'Healthy Life',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              Expanded(
                child: Image.asset(
                  CustomImages.frontImage,
                  fit: BoxFit.contain,
                ),
              ),
              _contactButton(),
              const SizedBox(height: 24),
            ],
          )
        : Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Opacity(
                          opacity: 0.15,
                          child: SelectableText(
                            'Pure Water',
                            style: TextStyle(
                              fontSize: _size.width * 0.07,
                              fontWeight: FontWeight.w900,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: SelectableText(
                            'Healthy Life',
                            style: TextStyle(
                              fontSize: _size.width * 0.07,
                              fontWeight: FontWeight.w900,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _contactButton(makePadding: true),
                ],
              ),
              Expanded(
                child: Image.asset(
                  CustomImages.frontImage,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          );
  }

  Padding _contactButton({bool makePadding = false}) {
    return Padding(
      padding: EdgeInsets.only(right: (makePadding) ? 60 : 0),
      child: ElevatedButton(
        onPressed: () {
          _launchURL('tel:+92 3250018000');
        },
        child: const Text(
          'CONTACT US',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _appBar({required double width}) {
    return (width < Utilities.mobileLimit)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  _appBapTextButton(text: 'Water Delivery'),
                  _appBapTextButton(text: 'Filteration'),
                ],
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(CustomImages.logo),
              ),
              Column(
                children: <Widget>[
                  _appBapTextButton(text: 'Vending'),
                  _appBapTextButton(text: 'Bulk/Wholesale'),
                ],
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  _appBapTextButton(text: 'Water Delivery'),
                  _appBapTextButton(text: 'Filteration'),
                ],
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(CustomImages.logo),
              ),
              Row(
                children: <Widget>[
                  _appBapTextButton(text: 'Vending'),
                  _appBapTextButton(text: 'Bulk/Wholesale'),
                ],
              ),
            ],
          );
  }

  Widget _appBapTextButton({required String text}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SelectableText(
        text,
        style: const TextStyle(color: Colors.blueGrey),
      ),
    );
  }
}
