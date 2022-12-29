import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class StoryScreens extends StatefulWidget {
  const StoryScreens({super.key, required this.title});

  final String title;

  @override
  State<StoryScreens> createState() => _StoryScreensState();
}

class _StoryScreensState extends State<StoryScreens> {
  List products = [
    MenList(
        title: 'Fancy Retro Men Shirts 1',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/91-UZUo2L+L._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '659/-',
        RateOffer: 'Special Discount avail Now'),
    MenList(
        title: ' Urbane Fabulous\n Men Shirts',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/61fSBKAiUUL._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '550/-',
        RateOffer: 'Buy 2 at 850/-'),
    MenList(
        title: 'Balenciaga Men Shirts',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/81RV8SWeZZL._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '559/-',
        RateOffer: 'Special Discount avail Now'),
    MenList(
        title: 'Fancy Retro Men Shirts 4',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/91-UZUo2L+L._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '659/-',
        RateOffer: 'Special Discount avail Now'),
    MenList(
        title: 'Fancy Retro Men Shirts 5',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/91-UZUo2L+L._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '659/-',
        RateOffer: 'Special Discount avail Now'),
    MenList(
        title: 'Fancy Retro Men Shirts 6',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/91-UZUo2L+L._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '659/-',
        RateOffer: 'Special Discount avail Now'),
    MenList(
        title: 'Fancy Retro Men Shirts 7 ',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/91-UZUo2L+L._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '659/-',
        RateOffer: 'Special Discount avail Now'),
    MenList(
        title: 'Fancy Retro Men Shirts 8',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/91-UZUo2L+L._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '659/-',
        RateOffer: 'Special Discount avail Now'),
    MenList(
        title: 'Fancy Retro Men Shirts 9',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/91-UZUo2L+L._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '659/-',
        RateOffer: 'Special Discount avail Now'),
    MenList(
        title: ' Urbane Fabulous\n Men Shirts',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/61fSBKAiUUL._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '550/-',
        RateOffer: 'Buy 2 at 850/-'),
    MenList(
        title: 'Fancy Retro Men Shirts 11',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/91-UZUo2L+L._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '659/-',
        RateOffer: 'Special Discount avail Now 13'),
    MenList(
        title: 'Fancy Retro Men Shirts 12',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/91-UZUo2L+L._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '659/-',
        RateOffer: 'Special Discount avail Now'),
    MenList(
        title: 'Fancy Retro Men Shirts 13',
        Img:
            'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/91-UZUo2L+L._AC_UL480_FMwebp_QL65_.jpg',
        Rate: '659/-',
        RateOffer: 'Special Discount avail Now'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.keyboard_arrow_left),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  Text(widget.title),
                  const SizedBox(width: 40),
                  IconButton(
                      icon: const Icon(Icons.favorite_border_outlined),
                      onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.shopping_cart_outlined),
                      onPressed: () {}),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 2,
            ),
            const DeliveryAddress(),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                  onPressed: () {},
                ),
                const Text('Category'),
                const Spacer(),
                // SizedBox(width: 80),
                IconButton(
                  icon: const Icon(Icons.filter_alt_outlined),
                  onPressed: () {},
                ),
                const Text('Filter'),
                const SizedBox(width: 20),
              ],
            ),
            const Divider(
              height: 4,
              color: Colors.grey,
            ),
            //13,12
            ...List.generate((products.length / 2).ceil(), (i) {
              //  print("${i * 2} and ${(i * 2) + 1} index $i");
              return Row(
                children: [
                  products[i * 2],
                  SizedBox(width: 0),
                  if ((i * 2) + 1 < products.length) products[(i * 2) + 1]
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}

class DeliveryAddress extends StatefulWidget {
  const DeliveryAddress({super.key});

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: const Color(0xffecdade),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          child: TextButton(
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.pink,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Delivering to - ',
                    style: (GoogleFonts.roboto(
                        color: Colors.black, fontSize: 12, letterSpacing: 0.5)),
                  ),
                  Text(
                    'Karimnagar 505001',
                    style: (GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5)),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.keyboard_arrow_right),
                ],
              ),
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: false,
                  context: context,
                  builder: (BuildContext context) {
                    return const SavedAddress();
                  },
                );
              }),
        ),
      ),
    );
  }
}
