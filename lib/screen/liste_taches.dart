import 'package:bloc_note/config.dart';
import 'package:flutter/material.dart';

class ListeTaches extends StatefulWidget {
  const ListeTaches({super.key});

  @override
  State<ListeTaches> createState() => _ListeTachesState();
}

class _ListeTachesState extends State<ListeTaches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor,
        title: Text(
          "Liste des tâches",
          style: TextStyle(
            color: TextColor,
            fontSize: 20.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.more_vert,
              color: const Color.fromARGB(255, 5, 153, 10),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: AppColor),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 10.0,
            left: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: WidgetColor,
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(color: WidgetColor, width: 1.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                      labelText: "Rechercher des tâches",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.transparent,
                      filled: true,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Aucune date",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 15.0
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Expanded(
                child: ListView(
                  children: [
                    Card(
                      color: WidgetColor,
                      child: ListTile(
                        leading: Icon(
                          Icons.circle_outlined,
                          color: Colors.white10,
                        ),
                        title: Text(
                          "Définir des sonneries d'alerte spécifiques pour les tâches dans les paramètres de l'application",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: TextColor, 
                            fontSize: 16.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: WidgetColor,
                      child: ListTile(
                        leading: Icon(
                          Icons.circle_outlined,
                          color: Colors.white10,
                        ),
                        title: Text(
                          "Appuyez sur le contenu de la tâche pour le mpodifier",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: TextColor, 
                            fontSize: 16.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: WidgetColor,
                      child: ListTile(
                        leading: Icon(
                          Icons.circle_outlined,
                          color: Colors.white10,
                        ),
                        title: Text(
                          "Créer vos tâches en appuyant",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: TextColor, 
                            fontSize: 16.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: WidgetColor,
                      child: ListTile(
                        leading: Icon(
                          Icons.circle_outlined,
                          color: Colors.white10,
                        ),
                        title: Text(
                          "Bienvenue sur Tâches",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: TextColor, 
                            fontSize: 16.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 5, 153, 10),
        child: Icon(
          Icons.add,
          size: 40.0,
          color: TextColor,
        ),
      ),
    );
  }
}
