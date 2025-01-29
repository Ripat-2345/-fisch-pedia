import 'package:fisch_pedia/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaitsPage extends StatelessWidget {
  const BaitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: Text(
          "Baits",
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
                "🐡 Baits",
                style: GoogleFonts.syneMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "In Fisch, there are 25 different bait types. Each of them affects different stats, so the player will need to choose them wisely before fishing. Below contains all the different types of bait and the effects associated with each one. To be sure the player is using baits the proper way, make sure to read their stats and fish preferences. Press here to read about it.",
                style: GoogleFonts.syneMono(
                  color: Colors.black87,
                  fontSize: 12,
                ),
                maxLines: 8,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              Text(
                "🦑 Best Baits",
                style: GoogleFonts.syneMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: bestBaits.map((data) {
                  return SizedBox(
                    height: 140,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            data[0],
                            width: 120,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[1],
                              style: GoogleFonts.syneMono(
                                color: Colors.pinkAccent.shade700,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Preferred Luck: ${data[2]}",
                              style: GoogleFonts.syneMono(
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Universal Luck: ${data[3]}",
                              style: GoogleFonts.syneMono(
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Resilience: ${data[4]}",
                              style: GoogleFonts.syneMono(
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Lure Speed: ${data[5]}",
                              style: GoogleFonts.syneMono(
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
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
                    "See More Baits",
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
