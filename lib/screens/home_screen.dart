import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_task/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> categories = [
    'Hotel',
    'Place',
    'Flight',
    'Food',
  ];

  final List<String> hotelLink = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7cx_8GON1Hu55hkmD7O22QQ59OWNcZbb7Sg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRCcjSmas3-f9AGt-q26_njtoQEzSS6vlT2Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC5xALlkGkL_PCxUyVt7x_kDTmgzuPP1Kgag&usqp=CAU',
  ];

  final List<String> hotelName = [
    'Santorini',
    'Hotel Royal',
    'LAX',
  ];

  final List<String> hotelLocation = [
    'Greece',
    'Spain',
    'USA',
  ];

  final List<String> hotelAmount = [
    '488',
    '425',
    '412',
  ];

  final List<String> hotelRatings = [
    '4.7',
    '4.3',
    '4.9',
  ];

  final List<String> hotHotelRatings = [
    '4.9',
    '4.5',
    '4.7',
  ];

  final List<String> hotHotelLocation = [
    'Indonesia',
    'Japan',
    'Mexico',
  ];

  final List<String> hotHotelAmount = [
    '580',
    '540',
    '480',
  ];

  final List<String> hotHotelDiscount = [
    '25',
    '20',
    '35',
  ];

  final List<String> hotHotelName = [
    'BaLi Motel Vung Tau',
    'Tokyo Drift',
    'Los Polos Hermanos',
  ];

  final List<String> hotHotelLink = [
    'https://indonesia.tripcanvas.co/wp-content/uploads/2020/08/Bali-pool-villa-feature.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC5xALlkGkL_PCxUyVt7x_kDTmgzuPP1Kgag&usqp=CAU',
    'https://imgcap.capturetheatlas.com/wp-content/uploads/2019/08/best-villas-in-Bali.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Where you\nwanna go?',
                      style: TextStyle(
                        fontSize: 23.0,
                        fontFamily: "poppins_bold",
                      ),
                    ),
                    Material(
                      elevation: 10.0,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white70,
                          ),
                        ),
                        child: const Icon(
                          Icons.search_rounded,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              SizedBox(
                height: 120.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 80.0,
                      margin: const EdgeInsets.symmetric(horizontal: 15.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color:
                            index == 0 ? const Color(0xFF62A6F7) : Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: index == 0 ? Colors.white : Colors.black26,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              index == 0
                                  ? Icons.home
                                  : index == 1
                                      ? Icons.place_outlined
                                      : index == 2
                                          ? Icons.flight_outlined
                                          : Icons.fastfood_outlined,
                              color: index == 0 ? Colors.white : Colors.black54,
                              size: 32.0,
                            ),
                            Text(
                              categories[index],
                              style: TextStyle(
                                color:
                                    index == 0 ? Colors.white : Colors.black87,
                                fontSize: 16.0,
                                fontFamily: "poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 25.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Hotels',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: "poppins_bold",
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: "poppins_medium",
                        color: CupertinoColors.systemYellow,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 255.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: hotelName.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150.0,
                      margin: const EdgeInsets.symmetric(horizontal: 12.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            hotelLink[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: Colors.black26,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hotelName[index],
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontFamily: "poppins_bold",
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Row(
                            children: [
                              const Icon(
                                Icons.place_outlined,
                                color: Colors.white,
                                size: 17.0,
                              ),
                              const SizedBox(width: 5.0),
                              Text(
                                hotelLocation[index],
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: "poppins",
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 7.0),
                          Row(
                            children: [
                              Text(
                                '₹${hotelAmount[index]}',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: "poppins_bold",
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                '/night',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: "poppins",
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 9.0),
                              const Icon(
                                Icons.star,
                                color: CupertinoColors.systemYellow,
                                size: 15.0,
                              ),
                              Text(
                                hotelRatings[index],
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: "poppins",
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: const [
                    Text(
                      'Hot Deals',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: "poppins_bold",
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 180.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: hotelName.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Positioned(
                            left: 10.8,
                            right: 10.3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.network(
                                height: 180.0,
                                width: 360.0,
                                fit: BoxFit.cover,
                                hotHotelLink[index],
                              ),
                            ),
                          ),
                          Container(
                            width: 325.0,
                            margin:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Colors.transparent),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFE5670C),
                                  ),
                                  child: Text(
                                    '${hotHotelDiscount[index]}% OFF',
                                    style: const TextStyle(
                                      fontFamily: 'poppins_medium',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 45.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      hotHotelName[index],
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "poppins_bold",
                                        color: Colors.white,
                                      ),
                                    ),
                                    // const SizedBox(width: 100.0),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: CupertinoColors.systemYellow,
                                          size: 15.0,
                                        ),
                                        const SizedBox(width: 4.0),
                                        Text(
                                          hotHotelRatings[index],
                                          style: const TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: "poppins_medium",
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.place_outlined,
                                          color: Colors.white,
                                          size: 17.0,
                                        ),
                                        const SizedBox(width: 5.0),
                                        Text(
                                          hotHotelLocation[index],
                                          style: const TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: "poppins",
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '₹${hotHotelAmount[index]}',
                                          style: const TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: "poppins_bold",
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          '/night',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: "poppins",
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
