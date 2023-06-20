
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../pages/MentorComm/recharge_page.dart';
import '../../pages/payment_details_page.dart';


class RechargeHeader extends StatelessWidget {
  const RechargeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: height*.22,
      width: width*.9,
      child: Stack(

        children:
        [
          Container(
          height: height*.22,
          width: width*.7,
          decoration: BoxDecoration(
            border:Border.all(color: Colors.white70.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(40),),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border:Border.all(color: Colors.white.withOpacity(0.18)),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(.5),
                            Colors.white.withOpacity(0.03),
                          ]
                      ),
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: 3,
                      sigmaX: 3,
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height*.01,),
                        Container(
                          height: height*.045,
                          width: width*.4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/MentorPage/skido_betterfuture.png"),
                                  fit: BoxFit.contain
                              )
                          ),
                        ),
                        SizedBox(height: height*.02,),
                        Padding(
                          padding: EdgeInsets.only(left: width*.03),
                          child: Text("Add Money to wallet using Credit Card",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.5,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                        SizedBox(height: height*.01),
                        Padding(
                          padding:  EdgeInsets.only(left: width*.025),
                          child: Container(
                            width: width*.39,
                            height: height*.045,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff5D73C3),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0, // soften the shadow
                                  spreadRadius: 1.0, //extend the shadow
                                  offset: Offset(
                                    0.0,
                                    3.0,
                                  ),
                                )
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "Avail Offer Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  fontSize: 17
                                ),),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )

          ),
        ),

          Positioned(
            left: width*.5,
            child: Container(
              height: height*.22,
              width: width*.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/MentorPage/recharge_headerimg.png"),
                  fit: BoxFit.contain
                )
              ),
            ),
          )
      ]
      ),
    );
  }
}


  class BalanceWidget extends StatelessWidget {
  const BalanceWidget({Key? key,required this.balance}) : super(key: key);

  final int balance;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: height*.13,
      width: width*.9,
        decoration: BoxDecoration(
        border:Border.all(color: Colors.white.withOpacity(0.4)),
        borderRadius: BorderRadius.circular(40),),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.white.withOpacity(0.18)),
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(.5),
                        Colors.white.withOpacity(0.0),
                      ]
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 3,
                  sigmaX: 3,
                ),
                child:Column(
                  children: [
                    SizedBox(height: height*.01,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: width*.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Available Balance",
                            style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/MentorPage/wallet_icon.png"),
                                  fit: BoxFit.contain
                                )
                              ),
                          )
                        ],
                      ),
                    ),
                    Row(children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/MentorPage/ruppee_icon.png"),
                                fit: BoxFit.contain
                            )
                        ),
                      ),
                      Text("${balance.toString()}",style: TextStyle(color: Colors.white,fontSize: 40),)
                    ],),
                  ],
                ),
              )
            ],
          )

      ),
    );
  }
}


class WalletWidget extends StatefulWidget {
  WalletWidget({Key? key}) : super(key: key);

  @override
  State<WalletWidget> createState() => _WalletWidgetState();
}

class _WalletWidgetState extends State<WalletWidget> {
  int value=1000;

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: height*.34,
      width: width*.9,
      decoration: BoxDecoration(
       // color: Colors.yellow,
        image: DecorationImage(
          image: AssetImage("assets/MentorPage/wallet_widget_bg.png"),
          fit: BoxFit.fill
        )
      ),
      child: Column(
        children: [
          SizedBox(height: height*.02,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "Add Money to",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                ),
                Text(
                  "SKIDO Wallet",
                  style: TextStyle(
                      color: Color(0xff5D73C3),
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height*.01,),
          Container(
            height: height*.06,
            width: width*.82,
            color: Color(0xff5D73C3),
            child: Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Get Rs.300 Cashback on adding Money to your wallet via Credit Cards! Avail Now!",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: height*.01,),
          Container(
            height: height*.07,
            width: width*.82,
            decoration: BoxDecoration(
              // color: Colors.yellow,
                image: DecorationImage(
                    image: AssetImage("assets/MentorPage/promo_bg.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width*.02),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/MentorPage/ruppee_icon.png"),
                            fit: BoxFit.contain
                        )
                    ),
                  ),
                  Text(
                    "${value.toString()}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                  ),
                  SizedBox(width: width*.22,),
                  TextButton(onPressed: (){},
                    child: Text(
                    "Apply Promo",
                    style: TextStyle(
                        color: Color(0xff5D73C3),
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),)
                ],
              ),
            ),
          ),
          SizedBox(height: height*.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: (){
                    setState(() {
                      value=100;
                    });
                  },
                  child: RuppeeContainer(value: 100,)
              ),
              GestureDetector(
                  onTap: (){
                    setState(() {
                      value=200;
                    });
                  },
                  child: RuppeeContainer(value: 200,)
              ),
              GestureDetector(
                  onTap: (){
                    setState(() {
                      value=1000;
                    });
                  },
                  child: RuppeeContainer(value: 1000,)
              ),
              GestureDetector(
                  onTap: (){
                    setState(() {
                      value=2000;
                    });
                  },
                  child: RuppeeContainer(value: 2000,)
              ),
            ],
          ),
          SizedBox(height: height*.025,),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentDetails(page: RechargePage(),)),
              );

            },
            child: Container(
              width: width*.39,
              height: height*.045,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff5D73C3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(
                      0.0,
                      3.0,
                    ),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  "Proceed to Add",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                  ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class RuppeeContainer extends StatelessWidget {
  const RuppeeContainer({Key? key,required this.value}) : super(key: key);


  final int value;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: height*.03,
      width: width*.18,
      decoration: BoxDecoration(
        // color: Colors.yellow,
        image: DecorationImage(
          image: AssetImage("assets/MentorPage/ruppee_bg.png"),
          fit: BoxFit.contain
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add,color: Colors.white,size: 10,),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/MentorPage/ruppee_icon.png"),
                    fit: BoxFit.contain
                )
            ),
          ),
          Text(value.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
