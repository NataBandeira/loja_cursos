import 'package:flutter/material.dart';

class CategoryCardComponent extends StatelessWidget {
  final String quantity;
  final String category;
  final Color color;
  final Color sublabelColor;

  const CategoryCardComponent(
      {Key key, this.quantity, this.category, @required this.color, @required this.sublabelColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 1,
      color: Color(0xFFB4B0FF),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$category",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "$quantity cursos",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF6C63FF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
