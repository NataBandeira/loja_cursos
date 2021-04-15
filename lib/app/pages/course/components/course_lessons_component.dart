import 'package:flutter/material.dart';
import 'package:loja_flutter/app/models/lesson.dart';
import 'package:loja_flutter/app/pages/course/components/lesson_item_component.dart';


class CourseLessonComponent extends StatelessWidget {

  final List<Lesson> lessons;

  const CourseLessonComponent({Key key, @required this.lessons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: lessons.map((lesson) => LessonItemComponent(lesson: lesson)).toList(),
      ),
    );
  }
}