import 'package:flutter/material.dart';
import 'package:flutterblogapp/pages/blogdetails.dart';

class BlogCard extends StatefulWidget {
  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  var blog_list = [
    {
      "title": "What is Lorem Ipsum?",
      "description":
          '''Lorem Ipsum is simply dummy text of the printing and typesetting 
          industry. Lorem Ipsum has been the industry's standard dummy 
          text ever since the 1500s, when an unknown printer took 
          a galley of type and scrambled it to make a type specimen 
          book. It has survived not only five centuries, but also 
          the leap into electronic typesetting, remaining essentially 
          unchanged. It was popularised in the 1960s with the release 
          of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus 
          PageMaker including versions of Lorem Ipsum.
          
          Lorem Ipsum is simply dummy text of the printing and typesetting 
          industry. Lorem Ipsum has been the industry's standard dummy 
          text ever since the 1500s, when an unknown printer took 
          a galley of type and scrambled it to make a type specimen 
          book. It has survived not only five centuries, but also 
          the leap into electronic typesetting, remaining essentially 
          unchanged. It was popularised in the 1960s with the release 
          of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus 
          PageMaker including versions of Lorem Ipsum.
          
          
          ''',
    },
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
