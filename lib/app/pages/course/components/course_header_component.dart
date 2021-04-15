import 'package:flutter/material.dart';
import 'package:loja_flutter/app/models/course.dart';

class CourseHeaderComponent extends StatelessWidget {
  final Course course;

  const CourseHeaderComponent({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        // decoration: BoxDecoration(
        //   color: Color(0xFFB4B0FF),
        //   borderRadius: BorderRadius.circular(15),
        // ),
        padding: EdgeInsets.all(5.0),
        width: MediaQuery.of(context).size.width * 0.65,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  color: Color(0xFFB4B0FF),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        course.coverImage,
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //   flex: 3,
                //   child: Align(
                //     alignment: Alignment.centerLeft,
                //     child: Padding(
                //       padding: EdgeInsets.only(left: 2.0),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(
                //             course.title,
                //             style: TextStyle(
                //               fontSize: 30,
                //               color: Colors.black,
                //             ),
                //           ),
                //           SizedBox(height: 5),
                //           Text(
                //             "Por ${course.autor}",
                //             style: TextStyle(
                //               fontSize: 18,
                //               color: Color(0xFF6C63FF),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
