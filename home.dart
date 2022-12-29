import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'story.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: double.infinity,
          color: Colors.white,
          child: Column(children: const [
            SizedBox(height: 15),
            UserBar(),
            Searchbox(),
            DeliveryAddress(),
            Categories(),
            OfferCard(),
            // SizedBox(height: 13),
          ]),
        ),
      ),
    );
  }
}

class UserBar extends StatefulWidget {
  const UserBar({super.key});

  @override
  State<UserBar> createState() => _UserBarState();
}

class _UserBarState extends State<UserBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
          const IconButton(onPressed: null, icon: Icon(Icons.person)),
          const Text('User'),
          const Spacer(),
          IconButton(
              icon: const Icon(Icons.favorite_border_outlined),
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.notifications_none), onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
        ],
      ),
    );
  }
}

class Searchbox extends StatefulWidget {
  const Searchbox({super.key});

  @override
  State<Searchbox> createState() => _SearchboxState();
}

class _SearchboxState extends State<Searchbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 5, left: 20),
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      print('search');
                    },
                  ),
                  suffixIcon: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const VerticalDivider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        IconButton(
                          icon: const Icon(Icons.camera_alt_outlined),
                          onPressed: () {
                            print('Camera');
                          },
                        ),
                      ],
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "What are you looking for ?",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SavedAddress extends StatefulWidget {
  const SavedAddress({super.key});

  @override
  State<SavedAddress> createState() => _SavedAddressState();
}

class _SavedAddressState extends State<SavedAddress> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'CHANGE DELIVERY LOCATION',
                ),
              ),
              const Spacer(),
              IconButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  icon: const Icon(Icons.clear))
            ],
          ),
        ),
        const Divider(
          color: Colors.grey,
          height: 2,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Card(
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.pink),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Title(
                          color: Colors.black,
                          child: const Text('SHIVA CHARAN')),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text('10-x-xx,\nqwerty,\nKarimnagar\n505001')
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  FloatingActionButton(
                      child: const Icon(
                        Icons.add,
                      ),
                      onPressed: () {}),
                  const SizedBox(height: 5),
                  const Text('Add New Address'),
                ],
              )
            ]),
          ),
        )
      ],
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List cat = [
    'All Categories',
    'Men',
    'Kids',
    'Electronics',
    'Foot Wear',
    'Accessories',
    'Health Care',
    'Women',
    'Kurti & Suit',
    'Sarees',
    'Kitchen',
    'Home Textiles',
    'cat 12',
    'cat 13',
    'cat 14',
    'cat 15',
  ];

  final List NetImage = [
    //All Categories
    'https://img.freepik.com/free-photo/black-friday-elements-assortment_23-2149074076.jpg?w=900&t=st=1671011523~exp=1671012123~hmac=5d685229d0a3fb2550dd8eb6bfa2765a4fa67402c899a094fbc4a992bec423fc',
    //men
    'https://img.freepik.com/free-photo/young-man-wearing-dark-shirt-jeans-carried-several-bags-go-shopping-with-credit-card_1150-27747.jpg?size=626&ext=jpg&ga=GA1.2.1089137437.1667488660&semt=sph',
    //kids
    'https://cdn.pixabay.com/photo/2015/06/22/08/38/siblings-817369__340.jpg',
    //Electronics
    'https://thumbs.dreamstime.com/b/many-used-modern-electronic-gadgets-use-white-floor-reuse-recycle-concept-top-view-153892434.jpg',
    //Foot Wear
    'https://media.istockphoto.com/id/1279108197/photo/variety-of-womens-fashion-comfortable-shoes-of-all-seasons-on-a-light-background-top-view.jpg?b=1&s=170667a&w=0&k=20&c=K4XGHnA8DrYHYDKYXLHoRJTiRbNK5Gx4955ADG24hzM=',
    //Accessories
    'https://images.unsplash.com/3/www.madebyvadim.com.jpg?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YWNjZXNzb3JpZXN8ZW58MHx8MHx8&w=1000&q=80',
    //Health care
    'https://images.pexels.com/photos/2383010/pexels-photo-2383010.jpeg?auto=compress&cs=tinysrgb&w=400',
    //Women
    'https://img.freepik.com/free-photo/beautiful-smiling-young-blonde-woman-pointing-sunglasses-holding-shopping-bags-credit-card-pink-wall_496169-1506.jpg?size=626&ext=jpg&ga=GA1.2.1089137437.1667488660&semt=sph',
    //Kurti & Suit
    'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQQymtZTAwn6P9kct8NigxfXHUdAk1Fu6KmYO6SSv8NfQYf90xt9kAJJKaKkoDewn8M1PMrF8_-2qUWfoxtEBPCz6gZGHRet_x5CHmZ5a8D6a9q--uKhRo67g',
    //Sarees
    'https://t3.ftcdn.net/jpg/02/69/44/62/240_F_269446271_X60pwRWOjMOqOlhmlgnysnfVd7YjhPr5.jpg',
    //Kitchen
    'https://images.pexels.com/photos/2062426/pexels-photo-2062426.jpeg?auto=compress&cs=tinysrgb&w=400',
    //Home Textiles
    'https://media.istockphoto.com/id/117481244/photo/linen-closet.jpg?b=1&s=612x612&w=0&k=20&c=amD5KXkZKaB01w1xcO34nCUh2tdg45a3zQ2TV-a7W44=',
    //cat  12
    'https://images.pexels.com/photos/7235677/pexels-photo-7235677.jpeg?auto=compress&cs=tinysrgb&w=400',
    //cat 13
    'https://images.pexels.com/photos/6621339/pexels-photo-6621339.jpeg?auto=compress&cs=tinysrgb&w=400',
    //Cat 14
    'https://images.pexels.com/photos/6102011/pexels-photo-6102011.jpeg?auto=compress&cs=tinysrgb&w=400',
    //Cat 15
    'https://images.pexels.com/photos/5490356/pexels-photo-5490356.jpeg?auto=compress&cs=tinysrgb&w=400',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cat.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoryScreens(
                        title: cat[index],
                      ),
                    ));
              },
              child: StoryCircle(
                title: cat[index],
                NetworkImage: NetImage[index],
              ),
            );
          },
        ));
  }
}

class StoryCircle extends StatelessWidget {
  final String title;
  final String NetworkImage;

  const StoryCircle(
      {super.key, required this.title, required this.NetworkImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Container(
          height: 63,
          width: 65,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pink,
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.4),
            child: ClipOval(
              child: Image.network(
                NetworkImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Expanded(
            child: Column(
          children: [
            Text(title),
          ],
        ))
      ]),
    );
  }
}

class MenList extends StatefulWidget {
  final String title;
  final String Rate;
  final String Img;
  final String RateOffer;
  const MenList(
      {super.key,
      required this.title,
      required this.Img,
      required this.Rate,
      required this.RateOffer});

  @override
  State<MenList> createState() => _MenListState();
}

class _MenListState extends State<MenList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 1, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 200,
                  width: 150,
                  child: Image(
                    image: NetworkImage(widget.Img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(widget.title),
              Text(
                widget.Rate,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Card(
                  color: Colors.green,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.pink),
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  ),
                  child: Text(widget.RateOffer)),
              const Text('Free Delivery'),
            ],
          ),
        ],
      ),
    );
  }
}

class OfferCard extends StatefulWidget {
  const OfferCard({super.key});

  @override
  State<OfferCard> createState() => _OffferCardState();
}

class _OffferCardState extends State<OfferCard> {
  PageController? _pageController;
  @override
  void initState() {
    _pageController = PageController();
    // TODO: implement initState
    super.initState();
  }

  final List card = [
    'https://img.freepik.com/free-vector/mega-sale-offers-banner-template_1017-31299.jpg?size=626&ext=jpg&ga=GA1.2.1089137437.1667488660',
    'https://img.freepik.com/free-vector/big-sale-banner-colorful-design-illustration_1035-14928.jpg?w=2000',
    'https://img.freepik.com/free-vector/diwali-festival-sale-banner-with-rocket-cracker_1017-15516.jpg?size=338&ext=jpg&ga=GA1.2.1089137437.1667488660',
    'https://img.freepik.com/free-vector/black-friday-realistic-banner_52683-48371.jpg?size=338&ext=jpg&ga=GA1.2.1089137437.1667488660',
    'https://img.freepik.com/free-vector/horizontal-sale-banner-template_157027-640.jpg?size=626&ext=jpg&ga=GA1.2.1089137437.1667488660',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Container(
            height: 180,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: card.length,
                controller: _pageController,
                itemBuilder: (context, index) {
                  return Offers(NetImg: card[index]);
                }),
          ),
        ),
        SmoothPageIndicator(
          controller: _pageController!,
          count: card.length,
          axisDirection: Axis.horizontal,
          effect: const JumpingDotEffect(
            jumpScale: 1,
            strokeWidth: 1.5,
            activeDotColor: Colors.lightBlue,
            spacing: 2,
          ),
        )
      ],
    );
  }
}

class Offers extends StatelessWidget {
  final String NetImg;
  const Offers({super.key, required this.NetImg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PageView(children: [
        Container(
          height: 120,
          width: 250,
          color: Colors.blueGrey,
          child: InkWell(
            child: Image(
              image: NetworkImage(NetImg),
              fit: BoxFit.cover,
            ),
            onTap: () {
              print('Offers Clicked');
            },
          ),
        ),
      ]),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int Currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: Currentindex,
      onTap: (index) => setState(() => Currentindex = index),
      selectedItemColor: Colors.pink,

      backgroundColor: Colors.white,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
            icon: InkWell(child: Icon(Icons.home_filled, color: Colors.black)),
            label: 'home'),
        const BottomNavigationBarItem(
            icon: InkWell(
                child: Icon(Icons.category_outlined, color: Colors.black)),
            label: 'Categories'),
        const BottomNavigationBarItem(
            icon: InkWell(
                child: Icon(Icons.shopping_bag_outlined, color: Colors.black)),
            label: 'orders'),
        BottomNavigationBarItem(
            icon: InkWell(
              child: const Icon(Icons.person, color: Colors.black),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Account(),
                  ),
                );
              },
            ),
            label: 'Account'),
      ],
    );
  }
}

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const SizedBox(height: 15),
          Container(
            height: 70,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  height: 50,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.keyboard_arrow_left_rounded),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'E - Commerce App',
                          style: TextStyle(
                              letterSpacing: 0.5, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                //const Spacer(),
                IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {},
                ),
                IconButton(
                    icon: const Icon(Icons.shopping_cart_outlined),
                    color: Colors.black,
                    onPressed: () {}),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          Container(
            height: 80,
            width: double.infinity,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.pink,
                  ),
                ),
                const Text(
                  'user',
                  style: TextStyle(
                      letterSpacing: 0.8, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 30,
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          const ServiceUtil(
              tilt: 'Help Centre', SerIcon: Icons.headset_mic_outlined),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          const ServiceUtil(
            tilt: 'My SmartCoins',
            SerIcon: Icons.add,
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          const ServiceUtil(
            tilt: 'Bank & UPI Details',
            SerIcon: Icons.paypal_outlined,
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          const ServiceUtil(
            tilt: 'Shared Products',
            SerIcon: Icons.share,
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          const ServiceUtil(
            tilt: 'Refer & Earn',
            SerIcon: Icons.card_giftcard,
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          const ServiceUtil(
            tilt: 'legal & Policies',
            SerIcon: Icons.difference_outlined,
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          Container(
            height: 90,
            child: const Center(child: Text('gfh')),
          ),
        ],
      ),
    );
  }
}

class ServiceUtil extends StatelessWidget {
  final String tilt;
  final IconData SerIcon;

  const ServiceUtil({super.key, required this.tilt, required this.SerIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Icon(SerIcon),
            const SizedBox(width: 20),
            Text(tilt),
          ],
        ),
      ),
    );
  }
}
