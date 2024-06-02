import 'package:flutter/material.dart';
import 'package:vakyavahan/widgets/message.dart';

class MessageList extends StatefulWidget {
  final List<MessageData> data;

  const MessageList({Key? key, required this.data}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MessageList();
  }
}

class MessageData {
  final String phone;
  final String message;
  final String timestamp;

  const MessageData(
      {required this.phone, required this.message, required this.timestamp});
}

class _MessageList extends State<MessageList> {
  List<MessageData>? messageList;

  @override
  void initState() {
    super.initState();
    messageList = widget.data;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index){
      return Text("$index");
    });
  }
}
