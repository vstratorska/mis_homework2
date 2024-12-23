import 'package:flutter/material.dart';

import '../models/types_model.dart';
import '../services/local_service.dart';


class LocalProvider extends ChangeNotifier {
  final _localService = LocalService();
  late final List<Local> local;

  LocalProvider() {
    local = _localService.getLocal();
  }


  void toggleFavorite(Local local) {
    local.isFavorite = !local.isFavorite;
    notifyListeners();
  }
}
