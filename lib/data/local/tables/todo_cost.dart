import 'package:drift/drift.dart';

class TodoCosts extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get priority => text()();
}
