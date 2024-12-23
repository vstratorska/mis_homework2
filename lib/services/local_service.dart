import '../models/types_model.dart';
import '../widgets/locals.dart';

class LocalService {
  List<Local> getLocal() {
    return localsRawData.map((json) => Local.fromJson(json)).toList();
  }
}
