import 'package:flutter/material.dart';
import 'package:loja_flutter/app/pages/courses/components/course_card_component.dart';
import 'package:loja_flutter/app/providers/course_provider.dart';
import 'package:provider/provider.dart';

class WeekCoursesComponent extends StatefulWidget {
  @override
  WeekCoursesComponentState createState() => WeekCoursesComponentState();
}

class WeekCoursesComponentState extends State<WeekCoursesComponent> {
  @override
  Widget build(BuildContext context) {
    CourseProvider _courseProvider = Provider.of<CourseProvider>(context);
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 12, 5, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cursos da semana",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "Ver todos",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _courseProvider.courses
                    .map((course) => CourseCardComponent(course: course))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
