import 'package:flutter/material.dart';
import './product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: 'keyboard1',
        title: 'Tuổi Trẻ Đáng Gía Bao Nhiêu',
        description: '',
        price: 70.000,
        imageUrl:
            "https://www.reader.com.vn/uploads/images/review-tuoi-tre-dang-gia-bao-nhieu-1.jpg"),
    Product(
      id: 'keyboard2',
      title: 'Tôi Tài Gioi Bạn Cũng Thế',
      description: 'Bàn phím cơ Akko 3084SP Ocean Star',
      price: 85.000,
      imageUrl:
          'https://sachxuasaigon.com/wp-content/uploads/2020/02/toi-tai-gioi.jpg',
    ),
    Product(
        id: 'keyboard3',
        title: 'Trưởng thành sau ngàn lần tranh đấu',
        description:
            'Bàn phím cơ AKKO ACR61 White (Hotswap / RGB / AKKO CS sw Jelly White)',
        price: 80.000,
        imageUrl:
            "https://chiasemoi.com/wp-content/uploads/2020/05/sach-truong-thanh-sau-ngan-lan-tranh-dau.jpg"),
    Product(
      id: 'keyboard4',
      title: 'Yêu những điều không hoàn hảo',
      description: 'Bàn phím cơ AKKO 3087 v2 DS Horizon - Akko switch v2',
      price: 65.000,
      imageUrl:
          'http://whs.edu.vn/wp-content/uploads/2021/03/image-20200827083539-1.jpeg',
    ),
    Product(
        id: 'keyboard5',
        title: 'Tôi quyết đinh sống cho chính tôi',
        description: 'Bàn phím cơ AKKO 3087 v2 Monet’s Pond (Akko switch v2)',
        price: 50.000,
        imageUrl:
            "https://salt.tikicdn.com/cache/w1200/ts/product/c1/6a/3e/537f7b9bb219be81e217e0c7b5b037e6.jpg"),
    Product(
      id: 'keyboard6',
      title: 'Càng Kỷ Luật, Càng Tự Do',
      description: 'Bàn phím cơ Akko 3087 v2 One Piece – Chopper (Akko switch)',
      price: 65.000,
      imageUrl:
          'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSqCUwSj0r4JcroxlSvNdEWRHqheWNf33cGSRP1qGp0B-fX8eq1ULeHYW7Sa5ECOCzytBKACFp2IRo-&usqp=CAc',
    ),
    Product(
      id: 'keyboard7',
      title: 'Mỗi Lần Vấp Ngã Là Một Lần Trưởng Thành',
      description:
          'Bàn phím cơ AKKO 3068B Multi-modes World Tour Tokyo R2 (Bluetooth 5.0 / Wireless 2.4Ghz / Hotswap / Foam tiêu âm / AKKO CS Jelly sw)',
      price: 80.000,
      imageUrl:
          'https://product.hstatic.net/1000237375/product/vap-nga-900x900_83ab6f753cab436e9baaa789317b75b6_grande_1094f6483e6148f2ad5a7a8ed3910481_master.png',
    ),
    Product(
        id: 'keyboard8',
        title: 'Không Sợ Chậm, Chỉ Sợ Dừng',
        description: 'Doraemon 3068v2 BT5.0',
        price: 90.000,
        imageUrl:
            "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTqyHHj0Qxm7LYDOXLhUZbT2ei1GQ7NDHXZJpPR8RvpYGzMrNza-t9T-5rexExc2TSMAckjAuIclg&usqp=CAc"),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    notifyListeners();
  }
}
