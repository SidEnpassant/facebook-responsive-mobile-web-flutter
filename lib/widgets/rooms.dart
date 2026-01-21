import 'package:facebookuiclone/config/palette.dart';
import 'package:facebookuiclone/models/user_model.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({super.key , required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 4.0,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index){
          if(index == 0){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),              
              child: _CreateRoomButton(),
             );
          }
          final User user = onlineUsers[index - 1];
          return Container(
            margin: const EdgeInsets.all(2.0),
            width: 20.0,
            height: 20.0,
            color: Colors.red,
          );
        },
      
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print('Create Room'),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        side: BorderSide(
          width: 3.0,
          color: Colors.blueAccent.shade100,
        ),
        backgroundColor: Colors.white,
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) => Palette.createRoomGradient.createShader(rect),
            child: Icon(
              Icons.video_call,
              color: Colors.white,
              size: 35.0,
            ),
          ),
          const SizedBox(width: 4.0),
          Text(
            'Create\nRoom',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.blueAccent.shade100,
            ),
          ),
        ],
      )
      );
  }
}