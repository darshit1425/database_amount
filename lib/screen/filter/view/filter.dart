import 'package:database_amount/screen/all_transaction/all_transation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int _value = 1;
  int _value1 = 1;
  int _value2 = 1;

  bool? result = false;
  bool? result1 = false;
  bool? result2 = false;
  bool? result3 = false;
  bool? result4 = false;
  bool? result5 = false;
  bool? result6 = false;
  bool? result7 = false;
  bool? result8 = false;
  bool? result9 = false;
  bool? result10 = false;
  bool? result11 = false;
  bool? result12 = false;
  bool? result13 = false;
  bool? result14 = false;
  bool? result15 = false;
  bool? result16 = false;
  bool? result17 = false;
  bool? result18 = false;
  bool? result19 = false;
  bool? result20 = false;
  bool? result21 = false;
  bool? result22 = false;
  bool? result23 = false;
  bool? result24 = false;
  bool? result25 = false;
  bool? result26 = false;
  bool? result27 = false;
  bool? result28 = false;
  bool? result29 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Transaction()));
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Filter()));
              },
              icon: const Icon(Icons.refresh),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.check),
            ),
          ],
          title: const Text("Filter"),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "QUICK ACCESS",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.green,
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(
                        () {
                          _value = 1;
                        },
                      );
                    },
                  ),
                  const Text(
                    "All",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                  SizedBox(
                    width: 96,
                  ),
                  Radio(
                    activeColor: Colors.green,
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(
                        () {
                          _value = 2;
                        },
                      );
                    },
                  ),
                  const Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                child: Row(
                  children: [
                    Radio(
                      activeColor: Colors.green,
                      value: 3,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(
                          () {
                            _value = 3;
                          },
                        );
                      },
                    ),
                    const Text(
                      "Yesterday",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Radio(
                      activeColor: Colors.green,
                      value: 4,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(
                          () {
                            _value = 4;
                          },
                        );
                      },
                    ),
                    const Text(
                      "Last Week",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.green,
                    value: 5,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(
                        () {
                          _value = 5;
                        },
                      );
                    },
                  ),
                  const Text(
                    "This Month",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                  SizedBox(
                    width: 41,
                  ),
                  Radio(
                    activeColor: Colors.green,
                    value: 6,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(
                        () {
                          _value = 6;
                        },
                      );
                    },
                  ),
                  const Text(
                    "Last Month",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                ],
              ),
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "BETWEEN DATES",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.green,
                    value: 7,
                    groupValue: _value1,
                    onChanged: (value) {
                      setState(
                        () {
                          _value1 = 7;
                        },
                      );
                    },
                  ),
                  const Text(
                    "Apply filter between two dates",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      letterSpacing: 0.5,
                      // fontSize:
                    ),
                  ),
                ],
              ),
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "EXPENSE TYPE",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.green,
                    value: 1,
                    groupValue: _value2,
                    onChanged: (value) {
                      setState(
                        () {
                          _value2 = 1;
                        },
                      );
                    },
                  ),
                  const Text(
                    "All",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      letterSpacing: 0.5,
                      // fontSize:
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                child: Row(
                  children: [
                    Radio(
                      activeColor: Colors.green,
                      value: 8,
                      groupValue: _value2,
                      onChanged: (value) {
                        setState(
                          () {
                            _value2 = 8;
                          },
                        );
                      },
                    ),
                    const Text(
                      "Income",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.5,
                        // fontSize:
                      ),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Radio(
                      activeColor: Colors.green,
                      value: 9,
                      groupValue: _value2,
                      onChanged: (value) {
                        setState(
                          () {
                            _value2 = 9;
                          },
                        );
                      },
                    ),
                    const Text(
                      "Expense",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.5,
                        // fontSize:
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "CATEGORIES",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result6,
                    onChanged: (bool? value) {
                      setState(() {
                        result6 = value;
                      });
                    },
                  ),
                  const Text(
                    "Accounting",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result7,
                    onChanged: (bool? value) {
                      setState(() {
                        result7 = value;
                      });
                    },
                  ),
                  const Text(
                    "Advertising",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result8,
                      onChanged: (bool? value) {
                        setState(() {
                          result8 = value;
                        });
                      },
                    ),
                    const Text(
                      "Business",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                    SizedBox(
                      width: 54,
                    ),
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result9,
                      onChanged: (bool? value) {
                        setState(() {
                          result9 = value;
                        });
                      },
                    ),
                    const Text(
                      "Clothing",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result10,
                    onChanged: (bool? value) {
                      setState(() {
                        result10 = value;
                      });
                    },
                  ),
                  const Text(
                    "Drinks",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result11,
                    onChanged: (bool? value) {
                      setState(() {
                        result11 = value;
                      });
                    },
                  ),
                  const Text(
                    "Education",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result12,
                      onChanged: (bool? value) {
                        setState(() {
                          result12 = value;
                        });
                      },
                    ),
                    const Text(
                      "Food",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                    SizedBox(
                      width: 78,
                    ),
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result13,
                      onChanged: (bool? value) {
                        setState(() {
                          result13 = value;
                        });
                      },
                    ),
                    const Text(
                      "Fuel",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result14,
                    onChanged: (bool? value) {
                      setState(() {
                        result14 = value;
                      });
                    },
                  ),
                  const Text(
                    "Fun",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result15,
                    onChanged: (bool? value) {
                      setState(() {
                        result15 = value;
                      });
                    },
                  ),
                  const Text(
                    "Hospital",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result16,
                      onChanged: (bool? value) {
                        setState(() {
                          result16 = value;
                        });
                      },
                    ),
                    const Text(
                      "Hotel",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                    SizedBox(
                      width: 74,
                    ),
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result17,
                      onChanged: (bool? value) {
                        setState(() {
                          result17 = value;
                        });
                      },
                    ),
                    const Text(
                      "Insurance",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result18,
                    onChanged: (bool? value) {
                      setState(() {
                        result18 = value;
                      });
                    },
                  ),
                  const Text(
                    "Loan",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                  SizedBox(
                    width: 78,
                  ),
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result19,
                    onChanged: (bool? value) {
                      setState(() {
                        result19 = value;
                      });
                    },
                  ),
                  const Text(
                    "Maintenance",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result20,
                      onChanged: (bool? value) {
                        setState(() {
                          result20 = value;
                        });
                      },
                    ),
                    const Text(
                      "Medical",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                    SizedBox(
                      width: 57,
                    ),
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result21,
                      onChanged: (bool? value) {
                        setState(() {
                          result21 = value;
                        });
                      },
                    ),
                    const Text(
                      "Movie",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result22,
                    onChanged: (bool? value) {
                      setState(() {
                        result22 = value;
                      });
                    },
                  ),
                  const Text(
                    "Other",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                  SizedBox(
                    width: 72,
                  ),
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result23,
                    onChanged: (bool? value) {
                      setState(() {
                        result23 = value;
                      });
                    },
                  ),
                  const Text(
                    "Personal",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result24,
                      onChanged: (bool? value) {
                        setState(() {
                          result24 = value;
                        });
                      },
                    ),
                    const Text(
                      "Rent",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                    SizedBox(
                      width: 78,
                    ),
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result25,
                      onChanged: (bool? value) {
                        setState(() {
                          result25 = value;
                        });
                      },
                    ),
                    const Text(
                      "Restaurant",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result26,
                    onChanged: (bool? value) {
                      setState(() {
                        result26 = value;
                      });
                    },
                  ),
                  const Text(
                    "Salary",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                  SizedBox(
                    width: 68,
                  ),
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result27,
                    onChanged: (bool? value) {
                      setState(() {
                        result27 = value;
                      });
                    },
                  ),
                  const Text(
                    "Shopping",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result28,
                      onChanged: (bool? value) {
                        setState(() {
                          result28 = value;
                        });
                      },
                    ),
                    const Text(
                      "Tips",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                    SizedBox(
                      width: 78,
                    ),
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result29,
                      onChanged: (bool? value) {
                        setState(() {
                          result29 = value;
                        });
                      },
                    ),
                    const Text(
                      "Utilities",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "PAYMENT MODES",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result,
                    onChanged: (bool? value) {
                      setState(() {
                        result = value;
                      });
                    },
                  ),
                  const Text(
                    "Cash",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                  SizedBox(
                    width: 72,
                  ),
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result1,
                    onChanged: (value) {
                      setState(() {
                        result1 = value;
                      });
                    },
                  ),
                  const Text(
                    "Credit Card",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result3,
                      onChanged: (bool? value) {
                        setState(() {
                          result3 = value;
                        });
                      },
                    ),
                    const Text(
                      "Debit Card",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Checkbox(
                      activeColor: Colors.green,
                      shape: CircleBorder(),
                      value: result4,
                      onChanged: (bool? value) {
                        setState(() {
                          result4 = value;
                        });
                      },
                    ),
                    const Text(
                      "Net Banking",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize:
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    value: result5,
                    onChanged: (bool? value) {
                      setState(() {
                        result5 = value;
                      });
                    },
                  ),
                  const Text(
                    "Cheque",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize:
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
