import 'package:clone/models/mob.dart';
import 'package:clone/pages/detail-page.dart';
import 'package:clone/widgets/dimension.dart';
import 'package:flutter/material.dart';

class MobList extends StatelessWidget {
  final Mob mob;

  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;

  const MobList(
    this.mob, {
    super.key,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    void detailPage(Mob mob) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailPage(mob: mob, dimension: mob.dimension),
        ),
      );
    }

    return InkWell(
      onTap: () {
        detailPage(mob);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Hero(
                tag: mob.name,
                child: Image.asset(
                  mob.image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mob.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Mojangles',
                    ),
                  ),

                  SizedBox(height: 4),

                  DimensionList(mob: mob, dimension: mob.dimension),
                ],
              ),
            ),

            Icon(Icons.favorite_border_rounded),
          ],
        ),
      ),
    );
  }
}
