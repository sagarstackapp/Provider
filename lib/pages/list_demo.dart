import 'package:flutter/material.dart';

class ListDemo extends StatefulWidget {
  @override
  ListDemoState createState() => ListDemoState();
}

class ListDemoState extends State<ListDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.red, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF303030).withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 80,
                                  // color: Colors.red,
                                  child: Text(
                                    'Category',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 10,
                                  // color: Colors.green,
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text(
                                    ' : ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Expanded(child: Text('Butterfly')),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 80,
                                  // color: Colors.red,
                                  child: Text(
                                    'Location',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 10,
                                  // color: Colors.green,
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text(
                                    ' : ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      'Delhi, Delhi, Delhi, Delhi, Delhi, Delhi, Delhi, Delhi, Delhi, Delhi, Delhi, ',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.only(bottom: 1),
                                  margin: EdgeInsets.only(top: 16, right: 12),
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.only(bottom: 1),
                                  margin: EdgeInsets.only(top: 16, right: 12),
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Container(
                      //   padding:
                      //       EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      //   // margin: EdgeInsets.only(right: 10),
                      //   decoration: BoxDecoration(
                      //     color: Colors.blue,
                      //     borderRadius: BorderRadius.circular(4),
                      //   ),
                      //   child: Text(
                      //     'Edit',
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.w400,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
