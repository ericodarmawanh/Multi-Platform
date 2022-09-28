import '../entities/menu.dart';

class MenuServices {
  List<Menu> getMenus() {
    // Ambil dari Database
    return [
      Menu(
          imageUrl: 'imageUrl',
          name: 'Soto Bandung',
          rate: 4.9,
          reviews: 100000,
          price: 45000),
      Menu(
          imageUrl: 'imageUrl',
          name: 'Es Bandung',
          rate: 4.8,
          reviews: 15000,
          price: 25000),
    ];
  }
}
