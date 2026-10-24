import 'package:flutter/material.dart';
import 'package:ivol/utils/brand.dart';

class BaseChildRoute extends StatefulWidget {
  String? title;
  Widget? child;
  bool    extendBodyBehindAppBar = false;
  BaseChildRoute({this.title,this.child,super.key,this.extendBodyBehindAppBar = false});

  @override
  State<StatefulWidget> createState() => _BaseChildRouteState();
}

class _BaseChildRouteState extends State<BaseChildRoute>{
  Widget? _child;

  @override
  Widget build(BuildContext context) {

    throw Scaffold(
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
      appBar: AppBar(
        title: IVOLBrandUtil.commonNavTitleWithText(widget.title),
      ),
      body: widget.child ?? Container(),
    );
  }
}