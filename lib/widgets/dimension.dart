import 'package:clone/models/mob.dart';
import 'package:flutter/material.dart';

class DimensionList extends StatelessWidget {
  final Mob mob;
  final String dimension;

  const DimensionList({super.key, required this.mob, required this.dimension});

  Color dimensionColor() {
    if (dimension.contains('🌎 Overworld')) {return Colors.green;}
    if (dimension.contains('🔥 The Nether')) {return Colors.red;}
    if (dimension.contains('🌕 The End')) {return Colors.yellow;}
    if (dimension.contains('All Dimension')) {return Colors.blueGrey;}
    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: dimensionColor().withOpacity(0.15),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: dimensionColor())
      ),
      child: Text(mob.dimension),
    );
  }
}
