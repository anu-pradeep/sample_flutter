import 'package:sqflite/sqflite.dart'as sql;

class helpersql {
  // create table with id,name,password,email
  static Future<void> logincreation(sql.Database basedata) async {
    await basedata.execute("""
    CREATE TABLE login (
    id INTEGER PRIMERY KEY AUTOINCREMENT NOT NULL,
    name TEXT,
    email TEXT
    password TEXT,
    """);
  } // created database
  static Future<sql.Database> mylogin() {
    return sql.openDatabase("userlogin.db", version: 1,
        onCreate: (sql.Database basedata, int version) async {
          await logincreation(basedata);
        });
  } // create new user
  static Future<int> addnewuser(String name, String email,
      String password) async {
    final db = await helpersql.mylogin();
    final data = {"name": name, "email": email, "password": password};
    final id = await db.insert("login", data,);
    return id;
  }

  static Future<List<Map>> checklogin(String email, String password) async {
    final db = await helpersql.mylogin();
    final data = await db.rawQuery(
        "SELECT * FROM login WHERE email = '$email' AND password = '$password'");
    if (data.isNotEmpty) {
      return data;
    }
    return data;
  }

  // check user already exist
  static Future<List<Map>> userfound(String uname, String uemail) async {
    final db = await helpersql.mylogin();
    final data = await db.rawQuery(
        "SELECT * FROM login WHERE name = '$uname' AND email = '$uemail'");
    if (data!.isNotEmpty) {
      return data;
    }
    else {
      return data;
    }
  }
  static Future<void>deleteuser (id)
  async {
    final db = await helpersql.mylogin();
    db.delete("login",where: 'id =?' ,whereArgs: [id] );
  }
  static Future<List<Map>> getAll() async {
    final db = await helpersql.mylogin();
    final data = db.rawQuery("SELECT * FROM login");
    return data;
  }}