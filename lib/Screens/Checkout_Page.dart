import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  static const platform = const MethodChannel("razorpay_flutter");
  FlutterToast flutterToast;
  Razorpay _razorpay;
  var counter = 1;
  var price = 1899;
  var amount = 1899;
  var razorAmount = 189900;

  void incrementCounter() {
    setState(() {
      counter++;
      amount = price * counter;
      razorAmount = amount * 100;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
        amount = price * counter;
        razorAmount = amount * 100;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'CheckOut',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: 150,
                      child: Card(
                        elevation: 5,
                        child: Image.network(
                          'https://res.cloudinary.com/djisilfwk/image/upload/v1593330185/Training/products/muscleblaze1_c69hj4.jpg',
                          fit: BoxFit.fill,
                        ),
                      )),
                  Container(
                    width: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 5, left: 8, right: 8, top: 8),
                          child: Text(
                            'Muscleblaze Beginner\'s Whey Protein Supplement',
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(right: 8, left: 8, bottom: 5),
                          child: Text(
                            'Singhal Manufactures',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(right: 8, left: 8, bottom: 10),
                          child: Text(
                            'Rs.1899 /Pcs',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 8),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  width: 30,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black,
                                          width: 0.5,
                                          style: BorderStyle.solid)),
                                  child: FlatButton(
                                      onPressed: decrementCounter,
                                      child: Text(
                                        '-',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 22),
                                      ))),
                              Container(
                                  width: 30,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black,
                                          width: 0.5,
                                          style: BorderStyle.solid)),
                                  child: Text('$counter',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16))),
                              Container(
                                  width: 30,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black,
                                          width: 0.5,
                                          style: BorderStyle.solid)),
                                  child: FlatButton(
                                      onPressed: incrementCounter,
                                      child: Text('+',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18)))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[350],
              thickness: 0.5,
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(8),
                child: Text(
                  'Summary',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 8, right: 8, left: 8, bottom: 4),
                        child: Text(
                          'Muscleblaze Beginner\'s Whey Protein Supplement',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                          softWrap: true,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8, left: 8, bottom: 4),
                        child: Text(
                          'Size: 4 Kg',
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[800]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8, left: 8, bottom: 4),
                        child: Text(
                          'Quantity: $counter',
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 250,
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Rs.$amount',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      )),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[350],
              thickness: 0.5,
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Total',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width - 50,
                  child: Text(
                    'Rs.$amount',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[350],
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 8, bottom: 8, left: 8, right: 8),
                            child: Text(
                              'Shipping',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 100,
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  //rewrite Address
                                }),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8, left: 8, bottom: 3),
                        child: Text(
                          'John Doe',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8, left: 8, bottom: 3),
                        child: Text(
                          'Flat 25/48, Nishant Kunj Apartment',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8, left: 8, bottom: 3),
                        child: Text(
                          'Gurugram',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8, left: 8, bottom: 3),
                        child: Text(
                          'Uttar Pradesh',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8, left: 8, bottom: 3),
                        child: Text(
                          '207071',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
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
                          'Rs.$amount',
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
                  padding: const EdgeInsets.only(left: 150, right: 15),
                  child: RaisedButton(
                    onPressed: openCheckout,
                    child: Text(
                      'PAY NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
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
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    flutterToast = FlutterToast(context);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_QZbutHCBXN0Y15',
      'amount': razorAmount,
      'name': 'Singhal Manufactures',
      'description': 'Muscleblaze Beginner\'s Whey Protein Supplement',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

  _showToast(String id) {
    Widget toast1 = Container(
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.white,
            backgroundBlendMode: BlendMode.darken,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 10, top: 70),
                child: Text(
                  "PAYMENT SUCCESSFUL",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Text(
                  "Rs.$amount",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6, right: 6),
                child: Text(
                  "TRANSACTION ID",
                  style: TextStyle(fontSize: 14, color: Colors.grey[750]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 6, left: 6, bottom: 20, top: 2),
                child: Text(
                  id,
                  style: TextStyle(fontSize: 14, color: Colors.grey[750]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 6, top: 2, bottom: 20),
                    child: Text(
                      'need help?',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, bottom: 20),
                    child: Text(
                      'click here',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6, top: 2, bottom: 20),
                    child: Text(
                      'for Support',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    //circle

    flutterToast.showToast(
      child: toast1,
      gravity: ToastGravity.CENTER,
      toastDuration: Duration(seconds: 4),
    );
  }

  _showToast2(String msg) {
    Widget toast2 = Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.white,
          backgroundBlendMode: BlendMode.darken,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "PAYMENT FAILED",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, right: 6),
              child: Text(
                "Error:",
                style: TextStyle(fontSize: 14, color: Colors.grey[750]),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 6, left: 6, bottom: 20, top: 2),
              child: Text(
                msg,
                style: TextStyle(fontSize: 14, color: Colors.grey[750]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 6, top: 2, bottom: 5),
                  child: Text(
                    'need help?',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 5),
                  child: Text(
                    'click here',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, top: 2, bottom: 5),
                  child: Text(
                    'for Support',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    flutterToast.showToast(
        child: toast2,
        toastDuration: Duration(seconds: 4),
        gravity: ToastGravity.CENTER);
  }

  _showToast3(String wallet) {
    Widget toast3 = Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.white,
          backgroundBlendMode: BlendMode.darken,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "PAYMENT SUCCESSFUL",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Text(
                "Rs.$amount",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, right: 6),
              child: Text(
                "External Wallet:",
                style: TextStyle(fontSize: 14, color: Colors.grey[750]),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 6, left: 6, bottom: 20, top: 2),
              child: Text(
                wallet,
                style: TextStyle(fontSize: 14, color: Colors.grey[750]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 6, top: 2, bottom: 5),
                  child: Text(
                    'need help?',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 5),
                  child: Text(
                    'click here',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, top: 2, bottom: 5),
                  child: Text(
                    'for Support',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    flutterToast.showToast(
        child: toast3,
        toastDuration: Duration(seconds: 4),
        gravity: ToastGravity.CENTER);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    _showToast(response.paymentId);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    _showToast2(response.message);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    _showToast3(response.walletName);
  }
}
