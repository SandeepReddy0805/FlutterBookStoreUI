import 'package:flutter/material.dart';
import '../models/book.dart';
import 'bookdetail.dart';

class BookView extends StatelessWidget {
  final Book book;
  const BookView({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return BookDetails(
          book: book,
        );
      })),
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 240,
        width: 142,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridTile(
                child: Hero(
                    tag: 'bookimage-${book.title}',
                    child: Image.asset('assets/${book.img}'))),
            ListTile(
              title: Text(
                book.title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                book.author,
                style: const TextStyle(
                    color: Color.fromRGBO(193, 192, 195, 1), fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
