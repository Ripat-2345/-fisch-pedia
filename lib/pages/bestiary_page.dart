import 'package:fisch_pedia/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestiaryPage extends StatelessWidget {
  const BestiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: Text(
          "Bestiary",
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
                "📔 Bestiary",
                style: GoogleFonts.syneMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "The Bestiary is a detailed, in-game logbook that records the different types of fish and items fishers have caught throughout their adventure. It helps track the player's progress by cataloging the various species found throughout the games many islands, with some fish having multiple variations. The Bestiary encourages exploration and mastery of the fishing mechanics through ones dedication and ability to grow alongside the game. All fish have the possibility of being caught with a Mutation, which increase the sell value and can change the overall appearance of the fish.Completing a minimum of 70% of the bestiary unlocks the ability to purchase the Destiny Rod from Caleia—who can be found at The Arch—for 190,000 C\$. As of the 1.15.0 update, there are a total of 371 catchable fish, and 454 total in-game items that players can catch, receive, or purchase—excluding Admin exclusive items and items which are no longer obtainable.",
                style: GoogleFonts.syneMono(
                  color: Colors.black87,
                  fontSize: 12,
                ),
                maxLines: 18,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 30),
              Text(
                "🦈 Best Fish in Bestiary",
                style: GoogleFonts.syneMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: bestFishInBestiary.map(
                  (data) {
                    return Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                data[0],
                                width: 120,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[1],
                                  style: GoogleFonts.syneMono(
                                    color: Colors.blueAccent.shade700,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Location: ${data[2]}",
                                  style: GoogleFonts.syneMono(
                                    color: Colors.black87,
                                  ),
                                ),
                                Text(
                                  "Bait: ${data[3]}",
                                  style: GoogleFonts.syneMono(
                                    color: Colors.black87,
                                  ),
                                ),
                                Text(
                                  "Preferences: ${data[4]}",
                                  style: GoogleFonts.syneMono(
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          data[5],
                          style: GoogleFonts.syneMono(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  },
                ).toList(),
              ),
              const SizedBox(height: 10),
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
                    "See More Fish",
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
