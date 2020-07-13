import 'package:Payment_Gateway/Screens/Checkout_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  var images = [
    "https://res.cloudinary.com/djisilfwk/image/upload/v1593330185/Training/products/muscleblaze1_c69hj4.jpg",
    "https://res.cloudinary.com/djisilfwk/image/upload/v1593330186/Training/products/muscleblazw_xttfsr.jpg",
    "https://res.cloudinary.com/djisilfwk/image/upload/v1593330185/Training/products/muscleblaze2_ebepqd.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller:
            ScrollController(initialScrollOffset: 0, keepScrollOffset: true),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                new Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    );
                  },
                  itemCount: images.length,
                  pagination: new SwiperPagination(),
                  control: new SwiperControl(),
                ),
                Positioned(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                    tooltip: 'go back',
                  ),
                  left: 4,
                  top: 4,
                ),
                Positioned(
                  right: 4,
                  top: 4,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: IconButton(
                            icon: Icon(Icons.more_vert), onPressed: () {}),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {}),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: IconButton(
                            icon: Icon(Icons.share), onPressed: () {}),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Muscleblaze Beginner\'s Whey Protein Supplement',
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
            child: Text(
              'Physical Good - Now',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 10,
              left: 10,
            ),
            child: Text(
              'Features:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 1.5, style: BorderStyle.solid)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Read More',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
          ),
          Divider(
            color: Colors.grey[500],
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Text(
              'Reviews:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: Image.network(
                      'https://res.cloudinary.com/djisilfwk/image/upload/v1593327380/Training/seller_profile/46_mnz89r.jpg',
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star_half,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Text(
                        'From Vijay Nath',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Text(
                        'Best Brand for Proteins',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: Image.network(
                      'https://res.cloudinary.com/djisilfwk/image/upload/v1593327380/Training/seller_profile/97_lmutha.jpg',
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Text(
                        'From Dina Nath',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Text(
                        'Good Enough',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 1.5, style: BorderStyle.solid)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'See All Reviews',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
          ),
          Divider(
            color: Colors.grey[500],
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Text(
              'Tags:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(35)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Healthy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(35)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Gym Products',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[500],
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Text(
              'About the Seller:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 56,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: Image.network(
                      'https://res.cloudinary.com/djisilfwk/image/upload/v1593327380/Training/seller_profile/97_lmutha.jpg',
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Singhal Manufactures',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.star_half,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(3),
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              'Visit Store',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3),
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              'Message',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
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
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[850],
        child: Container(
          height: 60,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                      child: Text(
                        'Rs.1899',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 8, bottom: 8),
                          child: Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            '1.9  (100)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130, right: 15),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Checkout()));
                  },
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.yellow[700],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
