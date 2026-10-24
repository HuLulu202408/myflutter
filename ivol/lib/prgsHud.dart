import 'package:flutter/material.dart';

enum PrgsHUDState { loading, success, failed }

class PrgsHUD extends StatefulWidget {
  const PrgsHUD({
    super.key,
    this.prgsHUDState = PrgsHUDState.loading,
    this.title,
  });
  final PrgsHUDState prgsHUDState;
  final String? title;

  @override
  State<StatefulWidget> createState() => _PrgsHUDState();
}

class _PrgsHUDState extends State<PrgsHUD> {
  final PrgsHUDState _prgsHUDState = PrgsHUDState.loading;
  String? _title;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _title = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.from(alpha: 0.6, red: 0, green: 0, blue: 0),

      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color.from(alpha: 1, red: 1, green: 1, blue: 1),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            border: Border(),
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }
}
