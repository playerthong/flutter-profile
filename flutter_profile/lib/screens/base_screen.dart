import 'package:flutter/material.dart';


abstract class BaseScreen extends StatefulWidget {
  BaseScreen({Key key}) : super(key: key);
}

abstract class BaseState<T extends BaseScreen> extends State<T> {
  EdgeInsetsGeometry marginLeftRight = EdgeInsets.only(
    left: 16,
    right: 16,
  );
}