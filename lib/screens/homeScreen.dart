import 'package:facebookuiclone/config/palette.dart';
import 'package:facebookuiclone/data/data.dart';
import 'package:facebookuiclone/widgets/circlebutton.dart';
import 'package:facebookuiclone/widgets/createPostContainer.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mdi_icons/flutter_mdi_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white, 
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            title: Text(
              'Facebook',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                color:Palette.facebookBlue,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(icon: Icons.search, iconSize: 30.0, onPress: () => print('search')),
              CircleButton(icon: Mdi.facebookMessenger, iconSize: 30.0, onPress: () => print('messenger')),
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),//DONE TILL 22:20
          ),

        ],
      ),
    );
  }
}