import 'package:flutter/foundation.dart' show ChangeNotifier, required;

class ItemProfile with ChangeNotifier {
  final String id;
  final String title;

  ItemProfile({
    required this.id,
    required this.title,
  });
}
