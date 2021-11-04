import 'package:conway_web/utilities/custom_images.dart';
import 'package:conway_web/utilities/utilities.dart';
import 'package:flutter/material.dart';

class MineralPage extends StatelessWidget {
  const MineralPage({Key? key}) : super(key: key);
  static const String routeName = '/MineralPage';

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    return Container(
      child: (_width < (Utilities.mobileLimit * 2))
          ? _minerals(context)
          : Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Utilities.padding,
                  horizontal: Utilities.padding * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 420,
                    width: _width / 2,
                    child: Image.asset(CustomImages.plant, fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 420,
                    child: _minerals(context),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _minerals(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Utilities.padding),
      child: Column(
        children: <Widget>[
          Text(
            'Mineral Contents',
            style: TextStyle(
              fontSize: 32,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(height: 10),
          _mineralTile(
            title: 'Calcium (Ca)',
            qty: '<0.3',
            context: context,
          ),
          _mineralTile(
            title: 'Magnesium (Mg)',
            qty: '0.1',
            isLight: true,
            context: context,
          ),
          _mineralTile(
            title: 'Sodium (Na)',
            qty: '0.80',
            context: context,
          ),
          _mineralTile(
            title: 'Potassium (K)',
            qty: '<1.6',
            isLight: true,
            context: context,
          ),
          _mineralTile(
            title: 'Chloride (Cl)',
            qty: '<5',
            context: context,
          ),
          _mineralTile(
            title: 'Sulphate (So4)',
            qty: '<2',
            isLight: true,
            context: context,
          ),
          _mineralTile(
            title: 'Total Alkalinity',
            qty: '9.8',
            context: context,
          ),
          _mineralTile(
            title: 'Nitrate (N)',
            qty: '<0.20',
            isLight: true,
            context: context,
          ),
          _mineralTile(
            title: 'Fluoride (F)',
            qty: '<0.20',
            context: context,
          ),
          _mineralTile(
            title: 'Iron (Fe)',
            qty: '<0.03',
            isLight: true,
            context: context,
          ),
          _mineralTile(
            title: 'Aluminium (Al)',
            qty: '<0.09',
            context: context,
          ),
          _mineralTile(
            title: 'PH value (at 25C)',
            qty: '<7.30',
            isLight: true,
            context: context,
          ),
          _mineralTile(
            title: 'Total Dissolved Solids',
            qty: '<0.10',
            context: context,
          ),
        ],
      ),
    );
  }

  Container _mineralTile({
    required String title,
    required String qty,
    required BuildContext context,
    bool isLight = false,
  }) {
    return Container(
      color: Theme.of(context).primaryColor.withOpacity((isLight) ? 0.6 : 0.8),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            qty,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
