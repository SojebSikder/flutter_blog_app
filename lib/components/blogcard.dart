import 'package:flutter/material.dart';
import 'package:flutterblogapp/pages/blogdetails.dart';

class BlogCard extends StatefulWidget {
  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  var blog_list = [
    {
      "title": "Bangladesh",
      "description": "Bangladesh is our country",
    },
    {
      "title": "India",
      "description": "India is a country",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: blog_list.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Single_blog(
            title: blog_list[index]['title'],
            description: blog_list[index]['description'],
          ),
        );
      },
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
                        description,
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
