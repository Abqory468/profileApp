import 'package:clone/data/mob-data.dart';
import 'package:clone/models/mob.dart';
import 'package:clone/pages/detail-page.dart';
import 'package:clone/widgets/mob-card.dart';
import 'package:clone/widgets/mob-list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Mob> mob = dataMob;

  String _searchQuery = "";
  bool _showfavoriteOnly = false;
  final Set<String> _favoriteMob = {};
  final TextEditingController _searchController = TextEditingController();

  void _toggleFavorite(String name) {
    setState(() {
      if (_favoriteMob.contains(name)) {
        _favoriteMob.remove(name);
      } else {
        _favoriteMob.add(name);
      }
    });
  }

  Future<void> _openDetail(mob, bool isFavorite) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailPage(mob: mob, dimension: ""),
      ),
    );

    if (result != null) {
      setState(() {
        if (result) {
          _favoriteMob.add(mob.name);
        } else {
          _favoriteMob.remove(mob.name);
        }
      });
    }
  }

  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    final filtered = dataMob.where((m) {
      final q = _searchQuery.toLowerCase();
      final matchesSearch = m.name.toLowerCase().contains(q);
      final matchesFavorite =
          !_showfavoriteOnly || _favoriteMob.contains(m.name);
      return matchesSearch && matchesFavorite;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        // title
        title: Text('Minecraft Mob', style: TextStyle(fontFamily: 'Mojangles')),
        centerTitle: true,
        // leading
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Image.network(
            'https://thumbs.dreamstime.com/b/minecraft-logo-online-game-dirt-block-illustrations-concept-design-isolated-186775550.jpg',
          ),
        ),
        leadingWidth: 50,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Search Minecraft Mob",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Switch(
                  value: _showfavoriteOnly,
                  activeColor: Colors.red[700],
                  onChanged: (value) {
                    setState(() {
                      _showfavoriteOnly = value; // Hanya ini yang ada di dalam setState
                    });
                  },
                ) // Pastikan ditutup dengan tanda kurung Switch

              ],
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraint) {
                if (constraint.maxWidth <= 425) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final mob = filtered[index];
                      final isFavorite = _favoriteMob.contains(
                        mob.name,
                      );
                      return MobList(
                        mob,
                        isFavorite: isFavorite,
                        onTap: () {
                          _openDetail(mob, isFavorite);
                        },
                        onFavoriteTap: () {
                          _toggleFavorite(mob.name);
                        },
                      );
                    },
                    itemCount: filtered.length,
                  );
                } else {
                  int column = 2;
                  if (constraint.maxWidth >= 768) column = 3;
                  if (constraint.maxWidth >= 1024) column = 4;
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: column,
                      childAspectRatio: 3 / 4,
                    ),
                    itemBuilder: (context, index) {
                      final mob = filtered[index];
                      final isFavorite = _favoriteMob.contains(
                          mob.name
                      );
                      return MobCard(
                        mob: filtered[index], 
                        isFavorite: isFavorite, 
                        onTap: () { 
                          _openDetail(mob, isFavorite);
                        }, 
                        onFavoriteTap: () => _toggleFavorite(mob.name),);
                    },
                    itemCount: filtered.length,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
