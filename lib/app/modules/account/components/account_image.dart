import 'package:flutter/material.dart';

class AccountPic extends StatefulWidget {
  const AccountPic({Key? key, required this.photoURL}) : super(key: key);

  final String photoURL;

  @override
  State<AccountPic> createState() => _AccountPicState();
}

class _AccountPicState extends State<AccountPic> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            //TODO: FIRESTORE/STORAGE
            //?ALTERAR PARA NETWORK IMAGE
            CircleAvatar(backgroundImage: NetworkImage(widget.photoURL)),
          ],
        ),
      ),
    );
  }
}
