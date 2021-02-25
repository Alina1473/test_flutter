import 'package:flutter/material.dart';

class LabelSchedules extends StatelessWidget{
  final String label;

  const LabelSchedules({
    Key key,
    @required this.label
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19.0, top: 5, bottom: 5),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.black.withOpacity(0.4),
        ),
      ),
    );
  }


}