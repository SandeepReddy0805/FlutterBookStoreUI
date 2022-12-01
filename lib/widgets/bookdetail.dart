// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/book.dart';

class BookDetails extends StatelessWidget {
  final Book book;
  const BookDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bookmark_add_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset('assets/threedots.svg')),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/back.svg'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: double.infinity,
            color: const Color.fromRGBO(243, 231, 221, 1),
            height: 492,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ]),
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Hero(
                    tag: 'bookimage-${book.title}',
                    child: Image.asset(
                      'assets/${book.img}',
                      width: 174,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    book.title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    book.author,
                    style: const TextStyle(
                        color: Color.fromRGBO(19, 18, 18, 0.35),
                        fontSize: 14,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(color: Color.fromRGBO(65, 59, 137, 1), Icons.star),
                    Icon(color: Color.fromRGBO(65, 59, 137, 1), Icons.star),
                    Icon(color: Color.fromRGBO(65, 59, 137, 1), Icons.star),
                    Icon(color: Color.fromRGBO(65, 59, 137, 1), Icons.star),
                    Icon(color: Color.fromRGBO(65, 59, 137, 1), Icons.star),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${book.rating}/5.0',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: 2),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width - 80,
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 80,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...',
                style: TextStyle(color: Color.fromRGBO(170, 170, 170, 1)),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width - 80,
                height: 56,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(65, 59, 137, 1)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Buy Now for \$49.0',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman'),
                    )))
          ])
        ]),
      ),
    );
  }
}
