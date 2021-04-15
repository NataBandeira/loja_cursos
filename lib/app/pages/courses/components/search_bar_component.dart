import 'package:flutter/material.dart';

class SearchBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10,15,10,15),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Icon(Icons.search),
            Text("Pesquisar cursos", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}