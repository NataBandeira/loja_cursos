import 'package:flutter/material.dart';
import 'package:loja_flutter/app/models/course.dart';
import 'package:loja_flutter/app/pages/course/components/course_header_component.dart';
import 'package:loja_flutter/app/pages/course/components/course_lessons_component.dart';

class CoursePage extends StatefulWidget {
  final Course course;

  const CoursePage({Key key, this.course}) : super(key: key);
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.40),
        child: AppBar(
          centerTitle: true,
          title: Text("Detalhes", style: TextStyle(color: Colors.black)),
          iconTheme: IconThemeData(color: Colors.black),
          flexibleSpace: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.10, left: 10),
              child: CourseHeaderComponent(
                course: widget.course,
              )),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.course.title,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Por ${widget.course.autor}",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF6C63FF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              widget.course.description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 15),
            CourseLessonComponent(lessons: widget.course.lessons,)
          ],
        ),
      ),
    );
  }
}
