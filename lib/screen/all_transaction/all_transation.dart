import 'package:database_amount/helper/dbhelper.dart';
import 'package:database_amount/main.dart';
import 'package:database_amount/screen/app/app.dart';
import 'package:database_amount/screen/filter/view/filter.dart';
import 'package:database_amount/screen/splash_screen/view/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  App? student;
  DBHelper dbHelper = DBHelper();
  Future<List<App>>? fetchdata;

  static final DateTime now = DateTime.now();
  static final DateFormat format = DateFormat('MMMM-YYYY');
  static final DateFormat formated = DateFormat('d');
  final String formatted = format.format(now);
  final String formattedDate = formated.format(now);


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      fetchdata = dbHelper.RetriveData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () {
              setState(() {
                fetchdata = dbHelper.RetriveData();
              });

              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Filter()));
              },
              icon: const Icon(Icons.filter_alt_outlined),
            ),
            IconButton(
              onPressed: () {

              },
              icon: const Icon(Icons.share),
            ),
          ],
          title: const Text("Transaction"),
          backgroundColor: Colors.black,
        ),
        body: FutureBuilder<List<App>>(
          future: fetchdata,
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List<App> data = snapshot.data;
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 1,
                      child: InkWell(
                        onTap: () {
                          App app=App(id: data[index].id,amount: data[index].amount,category: data[index].category);
                          Navigator.pushNamed(context, '/four',arguments: {"id":"${data[index].id}","amount":"${data[index].amount}","category":"${data[index].category}"});
                        },
                        child: Container(
                          height: 70,
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.83,
                                height: MediaQuery.of(context).size.width * 0.15,
                                margin: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.1,
                                      height: MediaQuery.of(context).size.height *
                                          0.1,
                                      margin: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                      ),
                                      child: Center(
                                        child: Text(
                                          // "${data[index].id}",
                                          formattedDate,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.03,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "${data[index].amount}.00",
                                            style:  TextStyle(
                                              color: Color(hexToInt("${data[index].color}")),
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "${data[index].category}",
                                            style:  TextStyle(
                                              color: Color(hexToInt("${data[index].color}")),
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Expanded(
                                      child: SizedBox(),
                                    ),
                                    Container(
                                        child:
                                        const Icon(Icons.arrow_forward_ios)),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.03,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: IconButton(
                                  onPressed: () async {
                                    int a = await dbHelper.DeletData(int.parse("${data[index].id}"));
                                    print("Deleted ===================   $a");
                                    refresh();
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              print("=============>>>>>>>> ${snapshot.error}");
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/6.png",),
                              colorFilter: ColorFilter.mode(Colors.green, BlendMode.plus)
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: const Text("No Transactions",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 0.5,
                      ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: const Text("Please and your transaction",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 0.5,
                        color: Colors.grey,
                      ),),
                  ),
                ],
              );
            }
            return const Center(
              child: const CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  refresh() {
    setState(() {
      fetchdata = dbHelper.RetriveData();
    });
  }

  int hexToInt(String hex) {
    int val = 0;
    int len = hex.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = hex.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("Invalid hexadecimal value");
      }
    }
    return val;
  }
}
