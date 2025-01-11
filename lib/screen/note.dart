import 'package:bloc_note/config.dart';
import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Text(
            "Note",
            style: TextStyle(
              color: TextColor,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: AppColor),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 35.0,
            right: 10.0,
            left: 10.0,
          ),
          child: Column(
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
                      labelText: "Rechercher des notes",
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
              Expanded(
                child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Card(
                        color: WidgetColor,
                        child: ListTile(
                          title: Text(
                            "Lorem Ipsum",
                            style: TextStyle(color: TextColor, fontSize: 18.0),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5.0),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                style: TextStyle(
                                  color: Colors.white60,
                                ),
                                overflow: TextOverflow.ellipsis, // Ajoute les points de suspension
                                maxLines: 1, // Limite à une seule ligne
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "20:47, janvier 8, 2025",
                                style: TextStyle(
                                  color: Colors.white30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
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
