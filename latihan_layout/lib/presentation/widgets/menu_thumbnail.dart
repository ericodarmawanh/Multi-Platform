import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../entities/menu.dart';

class MenuThumbnail extends StatelessWidget {
  final Menu menu;

  const MenuThumbnail({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 100,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: NetworkImage(menu.imageUrl), fit: BoxFit.cover)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    menu.name,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${menu.rate}',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '(${NumberFormat.currency(locale: 'id', symbol: '', decimalDigits: 0).format(menu.reviews)} reviews)',
                        style: GoogleFonts.poppins(
                            fontSize: 12, color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    NumberFormat.currency(
                            locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                        .format(menu.price),
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.orange.shade700),
                  )
                ],
              )
            ],
          ),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.green.shade900),
            child: const Center(
              child: Icon(
                Icons.add,
                size: 14,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
