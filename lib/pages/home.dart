import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/pages/details.dart';
import 'package:flutter_application_1/service/database.dart';
import 'package:flutter_application_1/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;
  Stream? fooditemStream;

  ontheload() async {
    fooditemStream = await DatabaseMethods().getFoodItem("Pizza");
    setState(() {});
  }

  @override
  void initState() {
    ontheload();
    super.initState();
  }

  Widget allItems() {
    return StreamBuilder(
        stream: fooditemStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data.docs.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Details(
                                      image: ds["Image"],
                                      name: ds["Name"],
                                      detail: ds["Detail"],
                                      price: ds["Price"],
                                    )));
                      },
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                              padding: EdgeInsets.all(14.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.network(ds["Image"],
                                          height: 150,
                                          width: 150,
                                          fit: BoxFit.cover),
                                    ),
                                    Text(ds["Name"],
                                        style:
                                            AppWidget.semiBoldTextFeildStyle()),
                                    SizedBox(height: 5.0),
                                    Text(ds["Detail"],
                                        style: AppWidget.LightTextFeildStyle()),
                                    SizedBox(height: 5.0),
                                    Text(ds["Price"] + " LKR",
                                        style:
                                            AppWidget.semiBoldTextFeildStyle()),
                                  ])),
                        ),
                      ),
                    );
                  })
              : CircularProgressIndicator();
        });
  }

  Widget allItemsVertical() {
    return StreamBuilder(
        stream: fooditemStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data.docs.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    // ...

                    DocumentSnapshot ds = snapshot.data.docs[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Details(
                                      image: ds["Image"],
                                      name: ds["Name"],
                                      detail: ds["Detail"],
                                      price: ds["Price"],
                                    )));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 20.0,
                          bottom: 20.0,
                        ),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.network(ds['Image'],
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover),
                                ),
                                SizedBox(width: 20.0),
                                Column(
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: Text(ds['Name'],
                                            style: AppWidget
                                                .semiBoldTextFeildStyle())),
                                    SizedBox(height: 5.0),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: Text(ds['Detail'],
                                            style: AppWidget
                                                .LightTextFeildStyle())),
                                    SizedBox(height: 5.0),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: Text(ds["Price"] + " LKR",
                                            style: AppWidget
                                                .semiBoldTextFeildStyle())),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  })
              : CircularProgressIndicator();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 50.0,
            left: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello U, ",
                    style: AppWidget.boldTextFeildStyle(),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0)),
                    child:
                        Icon(Icons.shopping_cart_outlined, color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 40.0),
              Text(
                "Less Expensive",
                style: AppWidget.HeadLineTextFeildStyle(),
              ),
              Text(
                "Discover and Get Great Deals",
                style: AppWidget.LightTextFeildStyle(),
              ),
              SizedBox(height: 20.0),
              Container(
                  margin: EdgeInsets.only(right: 20.0), child: showItem()),
              SizedBox(height: 30.0),
              //   SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         margin: EdgeInsets.all(5.0),
              //         child: Material(
              //           elevation: 5.0,
              //           borderRadius: BorderRadius.circular(20.0),
              //           child: Container(
              //             padding: EdgeInsets.all(14.0),
              //             child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Image.asset("images/salad2.png",
              //                       height: 150, width: 150, fit: BoxFit.cover),
              //                   Text("Salad",
              //                       style: AppWidget.semiBoldTextFeildStyle()),
              //                   SizedBox(height: 5.0),
              //                   Text("Fresh and Healthy",
              //                       style: AppWidget.LightTextFeildStyle()),
              //                   SizedBox(height: 5.0),
              //                   Text("\$25",
              //                       style: AppWidget.semiBoldTextFeildStyle()),
              //                 ]),
              //           ),
              //         ),
              //       ),
              //       SizedBox(width: 15.0),
              //       Container(
              //         margin: EdgeInsets.all(5.0),
              //         child: Material(
              //           elevation: 5.0,
              //           borderRadius: BorderRadius.circular(20.0),
              //           child: Container(
              //             padding: EdgeInsets.all(14.0),
              //             child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Image.asset("images/salad2.png",
              //                       height: 150, width: 150, fit: BoxFit.cover),
              //                   Text("Salad",
              //                       style: AppWidget.semiBoldTextFeildStyle()),
              //                   SizedBox(height: 5.0),
              //                   Text("Fresh and Healthy",
              //                       style: AppWidget.LightTextFeildStyle()),
              //                   SizedBox(height: 5.0),
              //                   Text("\$25",
              //                       style: AppWidget.semiBoldTextFeildStyle()),
              //                 ]),
              //           ),
              //         ),
              //       ),
              //       SizedBox(width: 15.0),
              //     ],
              //   ),
              // ),

              Container(
                height: 270,
                child: allItems(),
              ),

              SizedBox(height: 30.0),
              // Container(
              //   margin: EdgeInsets.only(
              //     right: 20.0,
              //   ),
              //   child: Material(
              //     elevation: 5.0,
              //     borderRadius: BorderRadius.circular(20.0),
              //     child: Container(
              //       padding: EdgeInsets.all(5.0),
              //       child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Image.asset("images/salad2.png",
              //               height: 150, width: 150, fit: BoxFit.cover),
              //           SizedBox(width: 20.0),
              //           Column(
              //             children: [
              //               Container(
              //                   width: MediaQuery.of(context).size.width / 2,
              //                   child: Text("Salad",
              //                       style: AppWidget.semiBoldTextFeildStyle())),
              //               SizedBox(height: 5.0),
              //               Container(
              //                   width: MediaQuery.of(context).size.width / 2,
              //                   child: Text("Fresh Salad",
              //                       style: AppWidget.LightTextFeildStyle())),
              //               SizedBox(height: 5.0),
              //               Container(
              //                   width: MediaQuery.of(context).size.width / 2,
              //                   child: Text("\$30",
              //                       style: AppWidget.semiBoldTextFeildStyle()
              //                       )
              //                       ),
              //             ],),
              //         ],
              //       ),
              //     ),
              // ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
        onTap: () async {
          icecream = true;
          pizza = false;
          salad = false;
          burger = false;
          fooditemStream = await DatabaseMethods().getFoodItem("Ice-cream");

          setState(() {});
        },
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            decoration: BoxDecoration(
                color: icecream ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              "images/ice-cream.png",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
              color: icecream ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () async {
          icecream = false;
          pizza = true;
          salad = false;
          burger = false;
          fooditemStream = await DatabaseMethods().getFoodItem("Pizza");
          setState(() {});
        },
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            decoration: BoxDecoration(
                color: pizza ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              "images/pizza.png",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
              color: pizza ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () async {
          icecream = false;
          pizza = false;
          salad = true;
          burger = false;
          fooditemStream = await DatabaseMethods().getFoodItem("Salad");
          setState(() {});
        },
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            decoration: BoxDecoration(
                color: salad ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              "images/salad.png",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
              color: salad ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () async {
          icecream = false;
          pizza = false;
          salad = false;
          burger = true;
          fooditemStream = await DatabaseMethods().getFoodItem("Burger");
          setState(() {});
        },
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            decoration: BoxDecoration(
                color: burger ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              "images/burger.png",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
              color: burger ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    ]);
  }
}
