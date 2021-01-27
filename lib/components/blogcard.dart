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
      child: Material(
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BlogDetails(
                title: title,
                description: description,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
            child: Column(
              children: [
                ListTile(
                  title: Container(
                    width: 300,
                    height: 50,
                    child: SelectableText(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  subtitle: Column(
                    children: [
                      Container(
                        child: SelectableText(
                          description.length > 400
                              ? description.substring(0, 400)
                              : description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      //
                      // Read more Button
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.red.shade700,
                          elevation: 0.0,
                          child: MaterialButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogDetails(
                                  title: title,
                                  description: description,
                                ),
                              ),
                            ),
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text(
                              "Read more",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
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
      ),
    );
  }
}
