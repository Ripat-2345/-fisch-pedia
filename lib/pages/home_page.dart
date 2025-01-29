import 'package:fisch_pedia/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: Text(
          "🐟 Fisch-Pedia 🐟",
          style: GoogleFonts.syneMono(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        elevation: 1,
        centerTitle: true,
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
                "🎣 Fisch Game Updated!",
                style: GoogleFonts.syneMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              // Updated Info
              Animate(
                effects: const [
                  MoveEffect(
                    duration: Duration(milliseconds: 1000),
                    delay: Duration(milliseconds: 500),
                  ),
                ],
                child: Container(
                  width: double.infinity,
                  height: 240,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/FischThumbnail10.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "🦈🐠 New Atlantis!!!",
                              style: GoogleFonts.syneMono(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.blueAccent.shade700,
                              ),
                            ),
                            const Text(
                              "Dive into Fisch, the ultimate fishing adventure where exploration and progression are yours to control. Cast your line to catch rare and unique fish, explore a growing world, and reel in some new friends along the way!",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
                    "Play on Roblox",
                    style: GoogleFonts.syneMono(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Game Content
              Text(
                "🎮 Game Content",
                style: GoogleFonts.syneMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 20,
                  children: listGameContents.map((gameContentsValue) {
                    return Animate(
                      effects: const [
                        MoveEffect(
                          duration: Duration(milliseconds: 800),
                          delay: Duration(milliseconds: 500),
                        ),
                      ],
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return gameContentsValue[2] as Widget;
                              },
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  gameContentsValue[0].toString(),
                                  fit: BoxFit.cover,
                                  width: 160,
                                  height: 160,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                gameContentsValue[1].toString(),
                                style: GoogleFonts.syneMono(
                                  color: Colors.blueAccent,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
