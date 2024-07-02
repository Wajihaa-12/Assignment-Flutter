import 'package:assignment3/components/category.dart';
import 'package:assignment3/components/offercard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Screens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Logo.png', height: 30),
            Text('Stylish',
                style: TextStyle(
                  color: Color.fromRGBO(67, 146, 249, 1),
                  fontFamily: "Libre Caslon Text",
                )),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 45,
              height: 45,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/girl.png"),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategorySection(),
              SizedBox(
                height: 17,
                width: double.infinity,
              ),
              OfferCard(
                title: '50-40% OFF',
                subtitle: 'Now in (product)\nAll colours',
                buttonText: 'Shop Now',
                color: Color.fromRGBO(253, 110, 134, 1),
              ),
              SizedBox(
                height: 17,
                width: double.infinity,
              ),
              OfferCard(
                title: 'Deal of the Day',
                subtitle: '22h 55m 20s remaining',
                buttonText: 'View all',
                color: Color.fromRGBO(67, 146, 249, 1),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/specialoffer.png",
                      width: 80, height: 80),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Special Offers',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'We make sure you get the offer you need at best prices',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/flat n heels.png",
                      width: 120, height: 180),
                  SizedBox(width: 120),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Flat and Heels',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Stand a chance to get rewarded',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              OfferCard(
                title: 'Trending Products',
                subtitle: 'Last Date 29/02/22',
                buttonText: 'View all',
                color: Color.fromRGBO(253, 110, 134, 1),
              ),
              SizedBox(height: 16),
              OfferCard(
                title: 'New Arrivals',
                subtitle: 'Summer’ 25 Collections',
                buttonText: 'View all',
                color: Colors.orange[100],
                textColor: Colors.black,
                image: 'assets/images/summersale.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
