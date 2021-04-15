import 'package:flutter/material.dart';
import 'package:loja_flutter/app/models/lesson.dart';

class LessonItemComponent extends StatelessWidget {
  final Lesson lesson;

  const LessonItemComponent({Key key, this.lesson}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(lesson.title),
        subtitle: Text("${lesson.duration} minutos"),
        leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFB4B0FF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(Icons.play_arrow, color: Color(0xFF6C63FF)),
        ),
      ),
    );
  }
}
