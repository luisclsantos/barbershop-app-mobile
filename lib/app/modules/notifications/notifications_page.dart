import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/notifications/notifications_store.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  final String title;
  const NotificationsPage({Key? key, this.title = 'NotificationsPage'}) : super(key: key);
  @override
  NotificationsPageState createState() => NotificationsPageState();
}
class NotificationsPageState extends State<NotificationsPage> {
  final NotificationsStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}