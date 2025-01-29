import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: Text(
          "Locations",
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
                "🗺 Locations",
                style: GoogleFonts.syneMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "There are many islands and other discreet places in Fisch. New players that join spawns in Moosewood, which is located in the center of the map. To change your spawn location to a different island, you must speak with the Inn Keeper of the location you would like to spawn in, you will have to pay their requested fee to spawn there each time you join.",
                style: GoogleFonts.syneMono(
                  color: Colors.black87,
                  fontSize: 12,
                ),
                maxLines: 8,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/map.png"),
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
                    "See More Locations",
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
