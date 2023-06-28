import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);

  final List<String> offerDetails = [
    '2 Bed',
    'Dinner',
    'Hot Tub',
    '1 Ac',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 255.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://indonesia.tripcanvas.co/wp-content/uploads/2020/08/Bali-pool-villa-feature.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 12.0,
                top: 15.0,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white70,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_sharp),
                      ),
                    ),
                    const SizedBox(width: 230.0),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white70,
                            ),
                          ),
                          child: const Icon(Icons.share),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white70,
                            ),
                          ),
                          child: const Icon(Icons.favorite_border_rounded),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 235.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 600.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 10.0),
                        child: Text(
                          'BaLi Motel\nVung Tau',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: "poppins_bold",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.place_outlined,
                              color: Colors.black,
                              size: 17.0,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              'Indonesia',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: "poppins",
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.deepOrange,
                                  size: 18.0,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  '4.9(6.8K review)',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: "poppins",
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Row(
                                children: const [
                                  Text(
                                    '₹580',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: "poppins_bold",
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '/night',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontFamily: "poppins",
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 18.0, right: 15.0, top: 5.0),
                        child: Divider(
                          color: Colors.black12,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Set in Vung Tau, 100 meters from Front Beach, BaLi\nMotel Vung Tau offers accommodation with a\ngarden, private parking and a shared...',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 14.3,
                              ),
                            ),
                            // Text(
                            //   'Read more',
                            //   style: TextStyle(
                            //     fontFamily: 'poppins',
                            //     fontSize: 14.0,
                            //     color: Colors.orange,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.0),
                        child: Text(
                          'What we offer',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: "poppins_bold",
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      SizedBox(
                        height: 100.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 80.0,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: Colors.black38,
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      index == 0
                                          ? Icons.bed_outlined
                                          : index == 1
                                              ? Icons.dinner_dining_outlined
                                              : index == 2
                                                  ? Icons.hot_tub_outlined
                                                  : Icons.ac_unit_outlined,
                                      color: Colors.black54,
                                      size: 32.0,
                                    ),
                                    Text(
                                      offerDetails[index],
                                      style: const TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14.0,
                                        fontFamily: "poppins_medium",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.0),
                        child: Text(
                          'Hosted By',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: "poppins_bold",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
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
