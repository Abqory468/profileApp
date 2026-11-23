
import 'package:clone/models/mob.dart';

final List<Mob> dataMob = [
  // 1. Blaze
  Mob(
    name: 'Blaze',
    image: 'assets/blaze.png',
    type: 'Hostile Mob',
    health: 20,
    damage: 6,
    drop: 'Blaze Rod',
    dimension: '🔥 The Nether',
    description:
    'Blaze adalah mob bermusuhan yang melayang di udara dan ditemukan di Nether Fortress. Tubuhnya dikelilingi batang api yang berputar.\n\nBlaze menyerang pemain dengan menembakkan tiga bola api secara berurutan. Mob ini menjatuhkan Blaze Rod yang digunakan untuk membuat Blaze Powder dan kebutuhan brewing.',
    movies: [
      'https://minecraft.wiki/images/Blaze_JE2.png',
      'https://minecraft.wiki/images/Blaze-body.png',
      'https://minecraft.wiki/images/Blaze_rods_JE1_%28facing_NWU%29.png',
    ],
  ),

  // 2. Cow
  Mob(
    name: 'Cow',
    image: 'assets/cow.png',
    type: 'Passive Mob',
    health: 10,
    damage: 0,
    drop: 'Leather / Raw Beef',
    dimension: '🌎 Overworld',
    description:
    'Cow adalah mob pasif yang sering ditemukan di area berumput. Mob ini tidak menyerang pemain dan dapat diternakkan menggunakan wheat.\n\nCow menjadi sumber makanan dan bahan crafting yang berguna. Pemain bisa mendapatkan Raw Beef dan Leather, serta memerah susu menggunakan bucket.',
    movies: [
      'https://minecraft.wiki/images/Cow_JE5_BE2.png',
      'https://minecraft.wiki/images/Cow_%28texture%29.png',
      'https://minecraft.wiki/images/Baby_Zombie_Riding_Cow.png',
    ],
  ),

  // 3. Creeper
  Mob(
    name: 'Creeper',
    image: 'assets/creeper.png',
    type: 'Hostile Mob',
    health: 20,
    damage: 49,
    drop: 'Gunpowder',
    dimension: '🌎 Overworld',
    description:
    'Creeper adalah monster hijau yang mendekati pemain secara diam-diam. Ketika berada cukup dekat, Creeper akan mendesis dan mulai menghitung waktu sebelum meledak.\n\nLedakannya dapat melukai pemain dan menghancurkan blok di sekitarnya. Creeper menjatuhkan Gunpowder, sedangkan ledakan Creeper yang dibunuh oleh Skeleton dapat menghasilkan Music Disc.',
    movies: [
      'https://minecraft.wiki/images/Creeper_JE3_BE1.png',
      'https://minecraft.wiki/images/Creeper_%28texture%29.png',
      'https://minecraft.wiki/images/Charged_Creeper.png',
    ],
  ),

  // 4. Ender Dragon
  Mob(
    name: 'Ender Dragon',
    image: 'assets/enderdragon.png',
    type: 'Boss Mob',
    health: 200,
    damage: 10,
    drop: 'Dragon Egg / XP',
    dimension: '🌕 The End',
    description:
    'Ender Dragon adalah bos utama Minecraft yang ditemukan di The End. Naga raksasa ini terbang mengelilingi pulau utama dan dapat memulihkan kesehatannya melalui End Crystal.\n\nPemain perlu menghancurkan End Crystal dan menyerang naga dengan strategi yang tepat. Mengalahkannya memberikan banyak XP dan membuka akses menuju bagian lanjutan dari petualangan.',
    movies: [
      'https://minecraft.wiki/images/Ender_Dragon.png',
      'https://minecraft.wiki/images/Ender_Dragon_%28Back%29.png',
      'https://minecraft.wiki/images/Dragon_Egg.png',
    ],
  ),

  // 5. Enderman
  Mob(
    name: 'Enderman',
    image: 'assets/enderman.png',
    type: 'Neutral Mob',
    health: 40,
    damage: 7,
    drop: 'Ender Pearl',
    dimension: 'All Dimensions',
    description:
    'Enderman adalah mob tinggi berwarna hitam yang memiliki mata ungu dan kemampuan teleportasi. Mob ini dapat ditemukan di Overworld, Nether, maupun The End.\n\nEnderman biasanya tidak menyerang jika tidak diprovokasi. Namun, menatap langsung matanya atau menyerangnya dapat membuatnya menjadi agresif. Ender Pearl yang dijatuhkan berguna untuk teleportasi dan crafting.',
    movies: [
      'https://minecraft.wiki/images/Enderman_JE3_BE1.png',
      'https://minecraft.wiki/images/Enderman_%28holding_Grass_Block%29.png',
      'https://minecraft.wiki/images/Enderman_%28texture%29.png',
    ],
  ),

  // 6. Endermite
  Mob(
    name: 'Endermite',
    image: 'assets/endermite.png',
    type: 'Hostile Mob',
    health: 8,
    damage: 2,
    drop: '3 XP',
    dimension: '🌕 The End',
    description:
    'Endermite adalah mob kecil berwarna ungu yang dapat muncul ketika pemain melempar Ender Pearl. Ukurannya kecil, tetapi mob ini tetap bisa menyerang pemain.\n\nEndermite biasanya menghilang setelah beberapa waktu jika tidak diberi nama menggunakan Name Tag. Enderman secara alami bersikap agresif terhadap Endermite.',
    movies: [
      'https://minecraft.wiki/images/Endermite.png',
      'https://minecraft.wiki/images/Endermite_%28texture%29.png',
      'https://minecraft.wiki/images/MCSM_Endermite.png',
    ],
  ),

  // 7. Ghast
  Mob(
    name: 'Ghast',
    image: 'assets/ghast.png',
    type: 'Hostile Mob',
    health: 10,
    damage: 9,
    drop: 'Gunpowder / Ghast Tear',
    dimension: '🔥 The Nether',
    description:
    'Ghast adalah mob besar yang melayang di udara dengan penampilan seperti hantu putih. Mob ini ditemukan di area terbuka Nether dan mengeluarkan suara tangisan yang khas.\n\nGhast menyerang dengan menembakkan bola api yang meledak saat mengenai permukaan. Pemain bisa membalas bola api tersebut untuk mengarahkannya kembali kepada Ghast.',
    movies: [
      'https://minecraft.wiki/images/Ghast_JE2_BE2.png',
      'https://minecraft.wiki/images/Ghast_shooting_JE2.png',
      'https://minecraft.wiki/images/Ghast_shooting_BE2.png',
    ],
  ),

  // 8. Pig
  Mob(
    name: 'Pig',
    image: 'assets/pig.png',
    type: 'Passive Mob',
    health: 10,
    damage: 0,
    drop: 'Raw Porkchop',
    dimension: '🌎 Overworld',
    description:
    'Pig adalah mob pasif berwarna merah muda yang sering berkeliaran di area berumput. Pig dapat diternakkan menggunakan carrot, potato, atau beetroot.\n\nPemain bisa mendapatkan Raw Porkchop dari Pig. Mob ini juga bisa ditunggangi menggunakan Saddle dan dikendalikan dengan Carrot on a Stick.',
    movies: [
      'https://minecraft.wiki/images/Pig_JE3_BE2.png',
      'https://minecraft.wiki/images/Pig_%28texture%29.png',
      'https://minecraft.wiki/images/Baby_Zombie_Riding_Pig.png',
    ],
  ),

  // 9. Piglin
  Mob(
    name: 'Piglin',
    image: 'assets/piglin.png',
    type: 'Neutral Mob',
    health: 16,
    damage: 8,
    drop: 'Various Items',
    dimension: '🔥 The Nether',
    description:
    'Piglin adalah mob humanoid mirip babi yang hidup di Nether. Mereka sangat menyukai emas dan biasanya membawa senjata seperti crossbow atau golden sword.\n\nPiglin dapat menjadi agresif terhadap pemain yang tidak mengenakan armor emas. Pemain bisa melakukan barter dengan memberikan Gold Ingot untuk memperoleh berbagai item.',
    movies: [
      'https://minecraft.wiki/images/Piglin_JE2.png',
      'https://minecraft.wiki/images/Piglin_%28texture%29.png',
      'https://minecraft.wiki/images/Piglin_Brute_JE2.png',
    ],
  ),

  // 10. Sheep
  Mob(
    name: 'Sheep',
    image: 'assets/sheep.png',
    type: 'Passive Mob',
    health: 8,
    damage: 0,
    drop: 'Wool / Raw Mutton',
    dimension: '🌎 Overworld',
    description:
    'Sheep adalah mob pasif berbulu yang ditemukan di berbagai area berumput. Warnanya bisa berbeda-beda, dan wool-nya dapat dipotong menggunakan Shears.\n\nSheep memakan rumput untuk menumbuhkan kembali bulunya setelah dicukur. Wool yang dikumpulkan dapat digunakan untuk membuat Carpet, dekorasi, dan Bed.',
    movies: [
      'https://minecraft.wiki/images/Sheep_JE3_BE2.png',
      'https://minecraft.wiki/images/Sheep_%28texture%29.png',
      'https://minecraft.wiki/images/Sheep_%28Sheared%29.png',
    ],
  ),

  // 11. Shulker
  Mob(
    name: 'Shulker',
    image: 'assets/shulker.png',
    type: 'Hostile Mob',
    health: 30,
    damage: 4,
    drop: 'Shulker Shell',
    dimension: '🌕 The End',
    description:
    'Shulker adalah mob berbentuk kotak yang banyak ditemukan di End City. Cangkangnya membuatnya tampak seperti bagian dari bangunan dan memberikan perlindungan saat tertutup.\n\nShulker menembakkan proyektil yang dapat menyebabkan efek Levitation pada pemain. Shulker Shell yang dijatuhkan bisa digunakan untuk membuat Shulker Box, yaitu tempat penyimpanan yang mempertahankan isinya ketika diambil.',
    movies: [
      'https://minecraft.wiki/images/Shulker_JE2.png',
      'https://minecraft.wiki/images/Shulker_%28texture%29.png',
      'https://minecraft.wiki/images/Shulker_%28closed%29.png',
    ],
  ),

  // 12. Skeleton
  Mob(
    name: 'Skeleton',
    image: 'assets/skeleton.png',
    type: 'Hostile Mob',
    health: 10,
    damage: 5,
    drop: 'Bone / Arrow / Bow',
    dimension: '🌎 Overworld',
    description:
    'Skeleton adalah monster berbentuk kerangka tulang yang menyerang pemain dari jarak jauh menggunakan busur. Mob ini sering muncul di tempat gelap dan dapat mengejar pemain dari kejauhan.\n\nSkeleton akan terbakar ketika terkena sinar matahari langsung pada kondisi tertentu. Ketika dikalahkan, Skeleton dapat menjatuhkan Bone, Arrow, dan terkadang Bow.',
    movies: [
      'https://minecraft.wiki/images/Skeleton_JE6.png',
      'https://minecraft.wiki/images/Skeleton_%28texture%29.png',
      'https://minecraft.wiki/images/Skeleton_aiming.png',
    ],
  ),

  // 13. Spider
  Mob(
    name: 'Spider',
    image: 'assets/spider.png',
    type: 'Neutral Mob',
    health: 16,
    damage: 2,
    drop: 'String / Spider Eye',
    dimension: '🌎 Overworld',
    description:
    'Spider adalah mob berkaki delapan yang dapat bergerak cepat dan memanjat dinding. Spider sering muncul di tempat gelap dan mampu melompati rintangan untuk mendekati pemain.\n\nSpider biasanya agresif pada malam hari atau ketika berada di tempat gelap. Pada kondisi terang, Spider biasa dapat menjadi netral. Drop-nya meliputi String dan terkadang Spider Eye.',
    movies: [
      'https://minecraft.wiki/images/Spider_JE4.png',
      'https://minecraft.wiki/images/Spider_%28texture%29.png',
      'https://minecraft.wiki/images/Spider_%28Story_Mode%29.png',
    ],
  ),

  // 14. Strider
  Mob(
    name: 'Strider',
    image: 'assets/strider.png',
    type: 'Passive Mob',
    health: 20,
    damage: 0,
    drop: 'String',
    dimension: '🔥 The Nether',
    description:
    'Strider adalah mob pasif yang mampu berjalan di atas danau lava tanpa menerima damage dari lava. Tubuhnya berwarna merah ketika berada di lingkungan panas.\n\nPemain dapat menunggangi Strider menggunakan Saddle dan mengarahkannya dengan Warped Fungus on a Stick. Ketika berada jauh dari lava, Strider akan tampak menggigil dan berubah warna menjadi lebih keunguan.',
    movies: [
      'https://minecraft.wiki/images/Strider_JE1_BE1.png',
      'https://minecraft.wiki/images/Strider_%28texture%29.png',
      'https://minecraft.wiki/images/Baby_Strider_riding_Strider_JE1.png',
    ],
  ),

  // 15. Wither Skeleton
  Mob(
    name: 'Wither Skeleton',
    image: 'assets/witherSkeleton.png',
    type: 'Hostile Mob',
    health: 20,
    damage: 8,
    drop: 'Bone / Coal / Wither Skeleton Skull',
    dimension: '🔥 The Nether',
    description:
    'Wither Skeleton adalah kerangka hitam tinggi yang ditemukan di Nether Fortress. Mob ini membawa pedang batu dan memiliki jangkauan serangan jarak dekat yang berbahaya.\n\nSerangannya dapat memberikan efek Wither yang mengurangi kesehatan pemain secara bertahap. Wither Skeleton juga berpeluang menjatuhkan kepalanya, yang diperlukan untuk memanggil bos Wither.',
    movies: [
      'https://minecraft.wiki/images/Wither_Skeleton_JE3_BE2.png',
      'https://minecraft.wiki/images/Wither_Skeleton_%28texture%29.png',
      'https://minecraft.wiki/images/Wither_Skeleton_Skull.png',
    ],
  ),

  // 16. Zombie
  Mob(
    name: 'Zombie',
    image: 'assets/zombie.png',
    type: 'Hostile Mob',
    health: 20,
    damage: 3,
    drop: 'Rotten Flesh',
    dimension: '🌎 Overworld',
    description:
    'Zombie adalah monster mayat hidup yang mengejar pemain dan menyerang dari jarak dekat. Zombie biasanya muncul di tempat gelap dan dapat ditemukan di berbagai area Overworld.\n\nZombie dapat terbakar ketika terkena sinar matahari langsung. Mob ini menjatuhkan Rotten Flesh dan terkadang item tambahan. Dalam kondisi tertentu, Zombie juga dapat menyerang Villager.',
    movies: [
      'https://minecraft.wiki/images/Zombie_JE3_BE2.png',
      'https://minecraft.wiki/images/Zombie_%28texture%29.png',
      'https://minecraft.wiki/images/Zombie_%28Story_Mode%29.png',
    ],
  ),
];
