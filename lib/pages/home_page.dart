import 'package:app_shared/witgets/my_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});
  bool isDarkMode= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      drawer: MyDrawerWitget(),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Container(
              child: Text(
                "Configuracion General",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 12,),
            TextField(
              decoration: InputDecoration(
                hintText: "Nombre Completo",
              ),
            ),
            SizedBox(height: 12,),
            TextField(
              decoration: InputDecoration(
                hintText: "Direccion Actual",
              ),
            ),  
            SizedBox(height: 12,),
            SwitchListTile(
              title: Text("Modo oscuro"),
              value: isDarkMode, 
              onChanged: (bool value){}
            ),
          ],
        ),
      ),
    );
  }
}