import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterblogapp/helpers/blog.dart';
import 'package:flutterblogapp/models/blog_model.dart';
import 'package:flutterblogapp/pages/blogdetails.dart';

class BlogCard extends StatefulWidget {
  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  // Initialize variables
  List<BlogModel> bloglist = new List<BlogModel>();
  bool _loading = true;
  // Methods
  Future<Null> getBlog() async {
    Blog blogclass = Blog();
    await blogclass.getBlog();
    setState(() {
      _loading = false;
      bloglist = blogclass.blogs;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBlog();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: getBlog,
      child: Container(
        child: _loading
            ? Center(
                child: Container(
                  child: CircularProgressIndicator(),
                ),
              )
            : ListView.builder(
                itemCount: bloglist.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Single_blog(
                      title: bloglist[index].title,
                      description: bloglist[index].description,
                    ),
                  );
                },
              ),
      ),
    );
  }
}

class Single_blog extends StatelessWidget {
  final title;
  final description;

  const Single_blog({this.title, this.description});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: title,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BlogDetails(
                          title: title,
                          description: description,
                        ))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
              child: ListTile(
                title: Container(
                  child: Column(
                    children: [
                      SelectableText(
                        title,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SelectableText(
                        description.substring(0, 10),
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
