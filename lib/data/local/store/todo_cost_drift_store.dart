import 'dart:io';

import 'package:cost_plan/data/base/i_local_store.dart';
import 'package:cost_plan/data/local/tables/todo_cost.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'todo_cost_drift_store.g.dart';

@DriftDatabase(tables: [TodoCosts])
class TodoCostDriftStore extends _$TodoCostDriftStore implements ILocalStore {
  TodoCostDriftStore() : super(_openConnection());

  static LazyDatabase _openConnection() {
    // the LazyDatabase util lets us find the right location for the file async.
    return LazyDatabase(() async {
      // put the database file, called db.sqlite here, into the documents folder
      // for your app.
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));
      return NativeDatabase.createInBackground(file);
    });
  }

  @override
  int get schemaVersion => 1;
}
