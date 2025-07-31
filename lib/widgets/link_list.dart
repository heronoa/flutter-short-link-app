import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/link.dart';

class LinkList extends StatefulWidget {
  final List<Link> links;
  final void Function(Object) onLinkTap;
  const LinkList({super.key, required this.links, required this.onLinkTap});
  @override
  State<LinkList> createState() => _LinkListState();
}

class _LinkListState extends State<LinkList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.links.length,
      itemBuilder: (context, index) {
        final link = widget.links[index];
        return ListTile(
          title: Text(link.displayTitle),
          onTap: () => widget.onLinkTap(link),
        );
      },
    );
  }
}
