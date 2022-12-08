import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    BenimUyg(),
  );
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[400],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage('images/kahve.jpg'),
                ),
                Text(
                  "FLUTTER KAHVECİSİ",
                  style: TextStyle(
                    fontFamily: 'BebasNeue',
                    color: Colors.brown[800],
                    fontSize: 50,
                  ),
                ),
                Card(
                  color: Colors.brown[200],
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 40,
                      color: Colors.brown[950],
                    ),
                    title: Text(
                      "flutter@kahvecisi.com",
                      style: GoogleFonts.dosis(
//backgroundColor: Colors.brown[300],
                          color: Colors.brown[950],
                          fontSize: 28),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 40,
                      color: Colors.brown[950],
                    ),
                    title: Text(
                      "0 555 555 55 55",
                      style: GoogleFonts.dosis(
                        fontSize: 28,
                        color: Colors.brown[950],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
