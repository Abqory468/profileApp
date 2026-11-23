import 'package:clone/models/mob.dart';
import 'package:clone/pages/detail-page.dart';
import 'package:clone/widgets/dimension.dart';
import 'package:flutter/material.dart';

class MobCard extends StatelessWidget {
  final Mob mob;

  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;

  const MobCard({
    super.key,
    required this.mob,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: mob.name,
                  child: Image.asset(
                    mob.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    onPressed: () {},
                    child: IconButton(
                      onPressed: onFavoriteTap,
                      icon: isFavorite
                          ? Icon(Icons.favorite, color: Colors.red[600])
                          : Icon(Icons.favorite, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      mob.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DimensionList(mob: mob, dimension: mob.dimension),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
