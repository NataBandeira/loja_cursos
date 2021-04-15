import 'package:flutter/material.dart';
import 'package:loja_flutter/app/models/course.dart';
import 'package:loja_flutter/app/pages/course/course_page.dart';

class CourseCardComponent extends StatelessWidget {
  final Course course;

  const CourseCardComponent({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CoursePage(
                course: course,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFB4B0FF),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(5.0),
          width: MediaQuery.of(context).size.width * 0.65,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    course.coverImage,
                  ),
                ),
              ),
              Positioned.fill(
                top: MediaQuery.of(context).size.height * 0.28,
                // alignment: Alignment.bottomLeft,
                // bottom: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              course.title,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Por ${course.autor}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF6C63FF),
                              ),
                            ),
                          ],
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
    );
  }
}
