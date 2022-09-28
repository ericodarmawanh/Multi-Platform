import '../entities/menu.dart';

class MenuServices {
  List<Menu> getMenus() {
    // Ambil dari Database
    return [
      Menu(
          imageUrl:
              'https://asset.kompas.com/crops/aq7SWhGNCO6UTombdviZuAchnCM=/3x0:700x465/750x500/data/photo/2021/04/21/607ff824cb839.jpg',
          name: 'Soto Bandung',
          rate: 4.9,
          reviews: 100000,
          price: 45000),
      Menu(
          imageUrl:
              'https://topwisata.info/wp-content/uploads/2021/04/Es2BOyen2BMinuman2BKhas2BBandung2B252812529.jpg',
          name: 'Es Bandung',
          rate: 4.8,
          reviews: 15000,
          price: 25000),
      Menu(
          imageUrl: 'https://kbu-cdn.com/dk/wp-content/uploads/sate-ayam.jpg',
          name: 'Sate Ayam Super',
          rate: 4.5,
          reviews: 65000,
          price: 25000),
      Menu(
          imageUrl:
              'https://asset.kompas.com/crops/JFC1_i_OaGvcNEviEw4WKk-r3qQ=/12x51:892x637/750x500/data/photo/2022/03/05/622358ed771fb.jpg',
          name: 'Beef Burger',
          rate: 5,
          reviews: 29465,
          price: 25000),
      Menu(
          imageUrl:
              'https://img.taste.com.au/zjeC7vxQ/taste/2016/11/fettucine-boscaiola-84098-1.jpeg',
          name: 'Beef Bacon Fetucinne',
          rate: 4.8,
          reviews: 7588,
          price: 25000),
    ];
  }
}
