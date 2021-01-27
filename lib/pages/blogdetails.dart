import 'package:flutter/material.dart';
import 'package:flutterblogapp/components/appbar.dart';

class BlogDetails extends StatefulWidget {
  final title;
  final description;

  const BlogDetails({this.title, this.description});
  @override
  _BlogDetailsState createState() => _BlogDetailsState();
}

class _BlogDetailsState extends State<BlogDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SelectableText(
                        widget.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            text: "Author: ",
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(
                                text: "SojebSikder",
                                style: TextStyle(color: Colors.redAccent),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SelectableText(
                        widget.description,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // subtitle: Padding(
              //   padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
              //   child: SelectableText(
              //     widget.description,
              //     style: TextStyle(
              //       fontSize: 20.0,
              //       fontWeight: FontWeight.w100,
              //     ),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
