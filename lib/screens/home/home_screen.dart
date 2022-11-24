// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoe_store/screens/home/components/categories_list.dart';
import 'package:shoe_store/screens/home/components/recommended.dart';
import 'package:shoe_store/screens/home/components/recommended_label.dart';
import 'package:shoe_store/screens/home/components/top_bar.dart';
import 'package:shoe_store/screens/product/display_page.dart';
import 'package:shoe_store/utils/constants.dart';
import 'package:shoe_store/utils/data.dart';
import 'package:shoe_store/utils/flutter_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 25.0,
          onPressed: () {},
          icon: const Icon(
            FlutterIcons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const TopBar(),
          const Categories(),
          const SizedBox(
            height: 16.0,
          ),
          const RecommendedLabel(),
          const SizedBox(
            height: 24.0,
          ),
          ...shoes.map((shoe) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(shoeModel: shoe),
                    ),
                  );
                },
                child: Recommended(
                  product: shoe,
                ),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30.0),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: AppColors.greenColor,
          unselectedItemColor: Colors.black26,
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  FlutterIcons.compass,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(FlutterIcons.list),
              label: 'data',
            ),
            BottomNavigationBarItem(
              icon: Icon(FlutterIcons.bag),
              label: 'data',
            ),
            BottomNavigationBarItem(
              icon: Icon(FlutterIcons.personOutline),
              label: 'data',
            ),
          ],
        ),
      ),
    );
  }
}
