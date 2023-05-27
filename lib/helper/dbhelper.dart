import 'package:database_amount/screen/app/app.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static String db_name = "rnw.db";
  static String table = "student";
  static String id = "id";
  static String type = "type";
  static String amount = "amount";
  static String category = "category";
  static String date_or_time = "date_or_time";
  static String mode = "mode";
  static String note = "note";
  static String color = "color";
  static Database? db;
  static int? version = 1;

  Future<Database?> initDB() async {
    if (db != null) {
      return db;
    } else {
      var databasesPath = await getDatabasesPath();
      String path = join(databasesPath, db_name);

      var result = await openDatabase(
        path,
        version: version,
        onCreate: (Database DB, int ver) {
          String query =
              "CREATE TABLE $table($id INTEGER PRIMARY KEY,$type TEXT,$amount INTEGER,$category TEXT,$date_or_time TEXT,$mode TEXT,$note TEXT,$color TEXT)";
          return DB.execute(query);
        },
      );
      return result;
    }
  }

  Future<int> insertData(App s) async {
    db = await initDB();

    if (db != null) {
      String query =
          "INSERT INTO $table($type,$amount,$category,$date_or_time,$mode,$note,$color) VALUES (?,?,?,?,?,?,?)";
      Future<int> result = db!.rawInsert(query, [
        s.type,
        s.amount,
        s.category,
        s.date_or_time,
        s.mode,
        s.note,
        s.color
      ]);
      print("===============>>>>  $result");
      return result;
    }

    return 0;
  }

  Future<List<App>> RetriveData() async {
    Database db;

    db = (await initDB())!;
    String query = "SELECT * FROM $table";
    List<Map<String, dynamic>> list = await db.rawQuery(query);

    return List.generate(
      list.length,
          (index) => App(
        id: list[index]["id"],
        type: list[index]["type"],
        amount: list[index]["amount"],
        category: list[index]["category"],
        date_or_time: list[index]["date_or_time"],
        mode: list[index]["mode"],
        note: list[index]["note"],
        color: list[index]["color"],
      ),
    );
  }

  Future<int> DeletData(int s) {
    String query = "DELETE FROM $table WHERE $id = ?";
    Future<int> result = db!.rawDelete(query, ["$s"]);
    return result;
  }

  Future<int> update(App s, int? id) async {
    await initDB();

    String query = "UPDATE $table SET amount=?, category=? WHERE id=?";
    List args = [s.amount, s.category, s.id];

    int updatedRes = await db!.rawUpdate(query, args);
    return updatedRes;
  }
}
