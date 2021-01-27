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
      ),
      body: Container(
        child: ListTile(
          title: SelectableText(widget.title),
          subtitle: SelectableText(widget.description),
        ),
      ),
    );
  }
}
