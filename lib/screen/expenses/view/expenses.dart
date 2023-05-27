
import 'package:database_amount/helper/dbhelper.dart';
import 'package:database_amount/main.dart';
import 'package:database_amount/screen/app/app.dart';
import 'package:database_amount/screen/splash_screen/view/splash_screen.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {

  App? app;
  DBHelper dbhelper = DBHelper();
  Future<List<App>>? fetchdata;

  TextEditingController txt_controller = TextEditingController();
  TextEditingController txt_controller1 = TextEditingController();

  String dropdownvalue = 'Business';
  var items = [
    "Business",
    "Accounting",
    "Advertising",
    "Clothing",
    "Drinks",
    "Education",
    "Food",
    "Fuel",
    "Fun",
    "Hospital",
    "Hotel",
    "Insurance",
    "Loan",
    "Maintenance",
    "Medical",
    "Movie",
    "Other",
    "Personal",
    "Rent",
    "Salary",
    "Shopping",
    "Tips",
  ];

  String dropdownvalue1 = 'Cash';
  var Mode = [
    "Cash",
    "Credit",
    "Debit Card",
    "Net Banking",
    "Cheque",
  ];
  int _value = 2;

  final _finalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
          actions: [
            IconButton  (
              onPressed: () async {
                if (_finalKey.currentState!.validate()) {
                  _finalKey.currentState!.save();
                }
                if (txt_controller != null && dropdownvalue != null) {
                  app = App(
                      amount: int.parse(txt_controller.text),
                      category: dropdownvalue,
                      color: "FFff0000");

                  int res = await dbhelper.insertData(app!);
                  Navigator.of(context).pop();
                }
              },
              icon: const Icon(Icons.check),
            )
          ],
          title: const Text("Add Income"),
          backgroundColor: Colors.black,
        ),
        body: Form(
          key: _finalKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 90,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 295, top: 10),
                        child: Text(
                          "Type",
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
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
                            "Income",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Radio(
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
                            "Expense",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(),
                  height: 80,
                  width: double.infinity,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 275, top: 10),
                          child: Text(
                            "Amount",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 11, bottom: 2),
                          child: TextFormField(
                            controller: txt_controller,
                            validator: (amount) {
                              return amount!.isEmpty ? 'Enter amount' : null;
                            },
                            decoration: const InputDecoration(
                              hintText: "Amount",
                              hintStyle: TextStyle(
                                fontSize: 18,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 270, top: 10),
                        child: Text(
                          "Category",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 230),
                        child: DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 240, top: 10),
                        child: const Text(
                          "Date & Time",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      DateTimePicker(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                        type: DateTimePickerType.dateTimeSeparate,
                        dateMask: '  d MMM, yyyy',
                        initialValue: DateTime.now().toString(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        icon: const Icon(Icons.event),
                        dateLabelText: 'Date',
                        // textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                        timeLabelText: "Hour",
                        selectableDayPredicate: (date) {
                          // Disable weekend days to select from the calendar
                          if (date.weekday == 6 || date.weekday == 7) {
                            return false;

                          }

                          return true;
                        },
                        onChanged: (val) => print(val),
                        validator: (val) {
                          print(val);
                          return null;
                        },
                        onSaved: (val) => print(val),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 290, top: 10),
                        child: Text(
                          "Mode",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 230),
                        child: DropdownButton(
                          value: dropdownvalue1,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: Mode.map((String Mode) {
                            return DropdownMenuItem(
                                value: Mode, child: Text(Mode));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue1 = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 300, top: 10),
                        child: Text(
                          "Note",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: TextField(
                          controller: txt_controller1,
                          decoration: const InputDecoration(
                            hintText: "Note",
                            hintStyle: TextStyle(
                              fontSize: 18,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<String>('Mode', Mode));
  }
}
