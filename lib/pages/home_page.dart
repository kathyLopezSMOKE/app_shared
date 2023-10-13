import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://images.pexels.com/photos/688574/pexels-photo-688574.jpeg"),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amber,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg",
                      ),
                    ),
                    Text(
                      "Fiorela Rojas Padilla",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Administrador",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people_alt),
              title: Text(
                "Mi profile",
              ),
            ),
            ListTile(
              leading: Icon(Icons.file_copy),
              title: Text(
                "Portfolio",
              ),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text(
                "Changes Password",
              ),
            ),
            Divider(indent: 20,endIndent: 20,),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                "Logout",
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text("Hola"),
        ],
      ),
    );
  }
}