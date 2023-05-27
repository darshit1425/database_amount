import 'package:database_amount/screen/all_transaction/all_transation.dart';
import 'package:database_amount/screen/expenses/view/expenses.dart';
import 'package:database_amount/screen/income/view/income.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
          () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const Home(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23232F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/5.jpg")),
          const Text(
            "Expense Tracker",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              letterSpacing: 0.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Money Manger & Budget",
              style: TextStyle(

                  fontSize: 22,
                  color: Colors.white,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: alertDialoge,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_today_outlined),
            )
          ],
          title: const Text("Expense Tracker"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 220,
              width: double.infinity,
              child: Column(
                children: const [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "No Transactions",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "please add your transaction",
                    style: TextStyle(
                      fontSize: 17,
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Income()));
                              },
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 150,
                                width: 150,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/1.png")),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Expenses()));
                              },
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                height: 150,
                                width: 150,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/2.png")),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Transaction()));
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/3.png")),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/4.png")),
                              ),
                            ),
                          ),
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
    );
  }

  Future<bool> alertDialoge() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Center(
          child: Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Text(
              "Exit App",
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text(
              'No',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            width: 120,
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text(
              'Yes',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
