import 'package:energy_report/data/data.dart';
import 'package:energy_report/util/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: _currentIndex,
        items: bottomNavBarItem,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(
              navigationBar:
                  _getCustomNavBar(context: context, index: _currentIndex),
              child: SafeArea(
                child: _getBodyWidget(context: context, index: _currentIndex),
              ),
            );
          },
        );
      },
    );
  }

  Widget _getBodyWidget({@required BuildContext context, @required int index}) {
    switch (index) {
      case 0:
        return Container(
          color: Colors.red,
        );
        break;
      case 1:
        return Container(
          color: Colors.black,
        );
        break;
      case 2:
        return Container(
          color: Colors.yellow,
        );
        break;

      case 3:
        return Container(
          color: Colors.white10,
        );
        break;

      case 4:
        return Container(
          color: Colors.green,
        );
        break;

      default:
        return Container(
          color: Colors.red,
        );
        break;
    }
  }

  CupertinoNavigationBar _getCustomNavBar(
      {@required BuildContext context, @required int index}) {
    switch (index) {
      case 0:
        return CupertinoNavigationBar(
          middle: Text('Балансе'),
          leading: Icon(balanceIcon),
          backgroundColor: Theme.of(context).primaryColor,
        );
        break;
      case 1:
        return CupertinoNavigationBar(
          middle: Text('Касса'),
          leading: Icon(cashIcon),
          backgroundColor: Theme.of(context).primaryColor,
        );
        break;
      case 2:
        return CupertinoNavigationBar(
          middle: Text('Время обмена'),
          leading: Icon(timeIcon),
          backgroundColor: Theme.of(context).primaryColor,
        );
        break;
      case 3:
        return CupertinoNavigationBar(
          middle: Text('Платежный шлюз'),
          leading: Icon(payIcon),
          backgroundColor: Theme.of(context).primaryColor,
        );
        break;

      case 4:
        return CupertinoNavigationBar(
          middle: Text('Регистрационные данные'),
          leading: Icon(personIcon),
          backgroundColor: Theme.of(context).primaryColor,
        );
        break;

      default:
        return CupertinoNavigationBar(
          middle: Text('Регистрационные данные'),
          leading: Icon(personIcon),
          backgroundColor: Theme.of(context).primaryColor,
        );
        break;
    }
  }
}
