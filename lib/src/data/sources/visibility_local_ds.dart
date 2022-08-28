import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@injectable
class VisibilityLocalDataSource {
  @factoryMethod
  static Future<VisibilityLocalDataSource> initAsync() async {
    await Hive.initFlutter();
    final Box tasksData = await Hive.openBox("visibility_local_data_source");
    return VisibilityLocalDataSource._(tasksData);
  }

  VisibilityLocalDataSource._(this.visibilityBox);

  final Box visibilityBox;

  String get visibilityKey => 'visibility';

  bool getVisibility() => visibilityBox.get(visibilityKey, defaultValue: false);

  Future<void> saveVisibility(bool vis) =>
      visibilityBox.put(visibilityKey, vis);
}
