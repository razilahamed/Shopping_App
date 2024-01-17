import 'package:flutter/material.dart';
import 'package:shopping_app/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;
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
                    "Hello Razil, ",
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          padding: EdgeInsets.all(14.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("images/salad2.png",
                                    height: 150, width: 150, fit: BoxFit.cover),
                                Text("Salad",
                                    style: AppWidget.semiBoldTextFeildStyle()),
                                SizedBox(height: 5.0),
                                Text("Fresh and Healthy",
                                    style: AppWidget.LightTextFeildStyle()),
                                SizedBox(height: 5.0),
                                Text("\$25",
                                    style: AppWidget.semiBoldTextFeildStyle()),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          padding: EdgeInsets.all(14.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("images/salad2.png",
                                    height: 150, width: 150, fit: BoxFit.cover),
                                Text("Salad",
                                    style: AppWidget.semiBoldTextFeildStyle()),
                                SizedBox(height: 5.0),
                                Text("Fresh and Healthy",
                                    style: AppWidget.LightTextFeildStyle()),
                                SizedBox(height: 5.0),
                                Text("\$25",
                                    style: AppWidget.semiBoldTextFeildStyle()),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                margin: EdgeInsets.only(
                  right: 20.0,
                ),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("images/salad2.png",
                            height: 150, width: 150, fit: BoxFit.cover),
                        SizedBox(width: 20.0),
                        Column(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text("Salad",
                                    style: AppWidget.semiBoldTextFeildStyle())),
                            SizedBox(height: 5.0),
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text("Fresh Salad",
                                    style: AppWidget.LightTextFeildStyle())),
                            SizedBox(height: 5.0),
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text("\$30",
                                    style: AppWidget.semiBoldTextFeildStyle())),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
        onTap: () {
          icecream = true;
          pizza = false;
          salad = false;
          burger = false;
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
        onTap: () {
          icecream = false;
          pizza = true;
          salad = false;
          burger = false;
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
        onTap: () {
          icecream = false;
          pizza = false;
          salad = true;
          burger = false;
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
        onTap: () {
          icecream = false;
          pizza = false;
          salad = false;
          burger = true;
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
