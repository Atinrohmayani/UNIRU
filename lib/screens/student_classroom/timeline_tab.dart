import 'package:flutter/material.dart';
import '/data/accounts.dart';
import '/data/announcements.dart';
import '/data/custom_user.dart';
import '/screens/student_classroom/announcement_page.dart';
import 'package:provider/provider.dart';

class TimelineTab extends StatefulWidget {
  @override
  _TimelineTabState createState() => _TimelineTabState();
}

class _TimelineTabState extends State<TimelineTab> {

@override
Widget build(BuildContext context) {
  final user = Provider.of<CustomUser?>(context);
  var account = getAccount(user!.uid);

 List assignmentList = announcementList.where((i) => i.type == "Assignment" && i.classroom.students.contains(account)).toList();
  List noticeList = announcementList.where((i) => i.type == "Notice" && i.classroom.students.contains(account)).toList();

  return ListView(
    children: [
      if (assignmentList.isNotEmpty)
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Assignments",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: assignmentList.length,
              itemBuilder: (context, int index) {
                return InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => AnnouncementPage(
                      announcement: assignmentList[index],
                    ),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: assignmentList[index].classroom.uiColor,
                            ),
                            child: Icon(
                              Icons.assignment,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                assignmentList[index].title,
                                style: TextStyle(letterSpacing: 1),
                              ),
                              Text(
                                assignmentList[index].classroom.className,
                                style: TextStyle(color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  "Due " + assignmentList[index].dueDate,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      if (noticeList.isNotEmpty)
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Notices",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: noticeList.length,
              itemBuilder: (context, int index) {
                return InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => AnnouncementPage(
                      announcement: noticeList[index],
                    ),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: noticeList[index].classroom.uiColor,
                            ),
                            child: Icon(
                              Icons.notification_important,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                noticeList[index].title,
                                style: TextStyle(letterSpacing: 1),
                              ),
                              Text(
                                noticeList[index].classroom.className,
                                style: TextStyle(color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  "Posted " + noticeList[index].dueDate,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      if (assignmentList.isEmpty && noticeList.isEmpty)
        Center(
          child: Text(
            "No assignments or notices available.",
            style: TextStyle(fontSize: 16),
          ),
        ),
    ],
  );
}

}