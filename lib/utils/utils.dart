import 'package:fisch_pedia/pages/baits_page.dart';
import 'package:fisch_pedia/pages/bestiary_page.dart';
import 'package:fisch_pedia/pages/locations_page.dart';
import 'package:fisch_pedia/pages/rods_page.dart';
import 'package:flutter/material.dart';

const listGameContents = [
  ["assets/images/Bestiaryn.jpg", "Bestiary", BestiaryPage()],
  ["assets/images/Rodsn.jpg", "Rods", RodsPage()],
  ["assets/images/Baitnyuuta.png", "Baits", BaitsPage()],
  ["assets/images/Locationsn.png", "Locations", LocationsPage()],
];

const listStatOfRod = [
  ["Lure Speed", Colors.blue, "Affects how quickly the rod attracts fish."],
  [
    "Luck",
    Colors.green,
    "Increases the chances of catching rarer fish.\nThere are 2 kinds of luck in Fisch:\n\t\t- Universal - applies to all fish, this is the type of luck that rods and certain baits have.\n\t\t- Preferred - only applies to certain fish; this type can only be found on baits."
  ],
  [
    "Control",
    Colors.amber,
    "Increases the size of the control bar when reeling in a fish."
  ],
  [
    "Resilience",
    Colors.orange,
    "Reduces the movement of the bar/fish icon while reeling in a fish."
  ],
  [
    "Max Kg",
    Colors.pink,
    "The maximum weight of catchable fish. If a rod's Max Kg is below a fish's minimum possible weight, it cannot catch said fish."
  ],
];

const bestFishInBestiary = [
  [
    "assets/images/MegalodonAnimated.gif",
    "Megalodon",
    "Ancient Isle",
    "Shark Head",
    "no preferences",
    "The Megalodon is a gigantic predatory shark known for its enormous size. It possesses a large mouth with many serrated teeth which can easily rip through anything in its way. They went extinct around 3.6 million years ago, during the early Pliocene epoch. They are one of the apex predators of the Ancient Isle, and will put up an incredible fight when hooked."
  ],
  [
    "assets/images/Animated_Ancientdepthserpent.gif",
    "Ancient Depth Serpent",
    "The Depths",
    "Truffle Worm",
    "Clear, Night",
    "A colossal, serpent-like creature with armored scales and glowing eyes, lurking in the abyss. The Ancient Depth Serpent is only active when The Depths go completely dark... No one knows where it goes in the meantime, possibly lurking in a secret cave?"
  ],
  [
    "assets/images/Ancient_Megalodon.gif",
    "Ancient Megalodon",
    "Ancient Isle",
    "Shark Head",
    "no preferences",
    "The Ancient Megalodon is a colossal predatory shark from prehistoric times, unmatched in size and ferocity. With its massive mouth and serrated teeth, it can effortlessly rip through any obstacle. A true apex predator of the Ancient Isle, it offers an incredible battle for those daring to catch it."
  ],
  [
    "assets/images/MoltenBanshee.gif",
    "Molten Banshee",
    "Roslit Volcano",
    "Truffle Worm",
    "Clear, Summer",
    "The Molten Banshee is a complex fish of unknown terrestrial origin, that has resided inside the Roslit Volcano. It possesses a torpedo-like body with many sharp mandibles and scorching hot encrustments. They are rumored to have possibly come from another planet, and may be a bio-mechanical lifeform."
  ],
  [
    "assets/images/Treble_Bass.gif",
    "Treble Bass",
    "Moosewood",
    "Magnet",
    "Clear, Summer",
    "The Treble Bass is an interesting sub-species of bass that can produce piano-like sounds with its many gills. Legend has it you can tune a fish, but not a treble bass. Or can you?"
  ],
  [
    "assets/images/The_Kraken_in_the_Bestiary.gif",
    "The Kraken",
    "Atlantis",
    "Truffle Worm",
    "Night",
    "The ruler of the abyssal depths, a being of such immense power that its mere presence warps the fabric of reality. Few have ever witnessed its true form and lived."
  ],
];

const bestBaits = [
  [
    "assets/images/Shark_Head_EBS.png",
    "Shark Head",
    "225",
    "30",
    "10",
    "-5",
  ],
  [
    "assets/images/Aurora_Bait.png",
    "Aurora Bait",
    "100",
    "30",
    "10",
    "-5",
  ],
  [
    "assets/images/Hangman's_Hook.png",
    "Hangman's Hook",
    "150",
    "35",
    "10",
    "-5",
  ],
];
