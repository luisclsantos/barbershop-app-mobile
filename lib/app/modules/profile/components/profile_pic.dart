import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key, required this.photoURL}) : super(key: key);

  final String photoURL;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          //TODO: FIRESTORE/STORAGE
          //?ALTERAR PARA NETWORK IMAGE
          CircleAvatar(
            backgroundImage: NetworkImage(photoURL),
          ),
        ],
      ),
    );
  }
}
