// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'heading.dart';
import '../models/book.dart';
import 'bookview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _popular = [];
    List<Widget> _bestSellers = [];
    List<Book> popular = [
      Book(title: 'Creative Hustle', author: 'Ramen Albert', img: '01.png'),
      Book(title: 'Art Unleashed', author: 'Stefano Milk', img: '02.png'),
      Book(title: 'The Ninth Life', author: 'Taylor B Barton', img: '03.png')
    ];
    List<Book> bestSellers = [
      Book(
          title: 'The Study of Brain and Be...',
          author: 'Ramen Albert',
          img: '04.png'),
      Book(title: 'The Ninth Life', author: 'Taylor B Barton', img: '05.png'),
      Book(title: 'Work for Money', author: 'Stefano Milk', img: '06.png'),
    ];
    popular.forEach(
      (element) => _popular.add(BookView(book: element)),
    );
    bestSellers.forEach(
      (element) => _bestSellers.add(BookView(book: element)),
    );
    GlobalKey listkey = GlobalKey();
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(backgroundColor: Colors.white),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 25),
              child: AppBar(
                leading: Builder(builder: (BuildContext context) {
                  return IconButton(
                    icon: SvgPicture.asset('assets/menu.svg'),
                    onPressed: (() => Scaffold.of(context).openDrawer()),
                  );
                }),
                actions: const [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
                backgroundColor: Colors.white,
                elevation: 0,
              ),
            ),
            const Heading(text: 'Popular Now'),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                key: listkey,
                itemCount: popular.length,
                itemBuilder: (context, index) => _popular[index],
              ),
            ),
            const Heading(text: 'Best Sellers'),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bestSellers.length,
                itemBuilder: (context, index) => _bestSellers[index],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/home.svg'), label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/bookmark.svg'),
                label: 'Bookmarks'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/shopping-bag.svg'),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/sliders.svg'), label: 'Filters'),
          ]),
    );
  }
}
