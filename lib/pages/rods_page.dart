import 'package:fisch_pedia/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RodsPage extends StatefulWidget {
  const RodsPage({super.key});

  @override
  State<RodsPage> createState() => _RodsPageState();
}

class _RodsPageState extends State<RodsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: Text(
          "Rods",
          style: GoogleFonts.syneMono(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        elevation: 1,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 28,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 14,
          right: 14,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                "🎣 Fishing Rods",
                style: GoogleFonts.syneMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Fishing Rods are a Fischerman's most common tool used for catching fish in Fisch. When players join the game, they receive a free Flimsy Rod to begin their fishing adventure. There are 59 different kinds of rods in total, of which 32 are purchasable (4 of which are for Robux icon), 6 are unlockable, 9 are unobtainable, and 10 are craftable.Every rod has a unique set of pros and cons. The main purpose of this balance is to ensure that no single rod in a tier outperforms the others.There are 2 categories of fishing rods that are important for their own features, which are stats, and enchant.",
                style: GoogleFonts.syneMono(
                  color: Colors.black87,
                  fontSize: 12,
                ),
                maxLines: 12,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/FischThumbnail8.png"),
              ),
              const SizedBox(height: 30),
              Text(
                "📊 Stats of Rod",
                style: GoogleFonts.syneMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: listStatOfRod.map(
                  (data) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[0].toString(),
                          style: GoogleFonts.syneMono(
                            color: data[1] as Color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          data[2].toString(),
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    );
                  },
                ).toList(),
              ),
              const SizedBox(height: 30),
              Text(
                "💯 Recommendation Rods",
                style: GoogleFonts.syneMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Newbie Fisher",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.purpleAccent.shade700,
                ),
              ),
              const Text(
                "Lucky Rod in Moosewood, Steady Rod in Roslit Bay, Nocturnal Rod in Vertigo.",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Good Fisher",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.brown.shade800,
                ),
              ),
              const Text(
                "Mythical Rod in Travelling Merchant, Summit Rod in Northern Summit, Rod Of The Depths in The Depths.",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.blueAccent.shade700,
                    ),
                  ),
                  child: Text(
                    "See More Rods",
                    style: GoogleFonts.syneMono(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
