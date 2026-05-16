import 'package:hive/hive.dart';

class HiveService {
  static Box get cartBox => Hive.box('cartBox');

  /// Menambahkan item ke cart
  /// Key: "{username}_{productId}"
  static Future<void> addToCart({
    required String username,
    required int productId,
    required String title,
    required double price,
    required int quantity,
    required String thumbnail,
  }) async {
    final key = '${username}_$productId';
    await cartBox.put(key, {
      'username': username,
      'productId': productId,
      'title': title,
      'price': price,
      'quantity': quantity,
      'thumbnail': thumbnail,
    });
  }

  /// Mengambil semua item cart berdasarkan username
  static List<Map<String, dynamic>> getCartItems(String username) {
    final List<Map<String, dynamic>> items = [];
    for (var key in cartBox.keys) {
      if (key.toString().startsWith('${username}_')) {
        final item = cartBox.get(key);
        if (item != null) {
          items.add(Map<String, dynamic>.from(item));
        }
      }
    }
    return items;
  }

  /// Menghapus item dari cart
  static Future<void> removeFromCart(String username, int productId) async {
    final key = '${username}_$productId';
    await cartBox.delete(key);
  }
}
