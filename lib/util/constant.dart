import 'package:flutter/cupertino.dart';

const bottomNavBarItem = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(balanceIcon),
  ),
  BottomNavigationBarItem(
    icon: Icon(cashIcon),
  ),
  BottomNavigationBarItem(
    icon: Icon(timeIcon),
  ),
  BottomNavigationBarItem(
    icon: Icon(payIcon),
  ),
  BottomNavigationBarItem(
    icon: Icon(personIcon),
  )
];

const IconData balanceIcon = CupertinoIcons.staroflife;
const IconData cashIcon = CupertinoIcons.money_dollar;
const IconData timeIcon = CupertinoIcons.timer;
const IconData payIcon = CupertinoIcons.play_arrow;
const IconData personIcon = CupertinoIcons.person_2_alt;
