import 'package:flutter/material.dart';
import './product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: 'book1',
        title: 'Tuổi Trẻ Đáng Gía Bao Nhiêu',
        description: '',
        price: 70.000,
        auth: ' Rosie Nguyễn',
        imageUrl:
            "https://www.reader.com.vn/uploads/images/review-tuoi-tre-dang-gia-bao-nhieu-1.jpg"),
    Product(
      id: 'book2',
      title: 'Tôi Tài Giỏi Bạn Cũng Thế',
      description: 'Bàn phím cơ Akko 3084SP Ocean Star',
      price: 85.000,
      auth: 'Adam Khoo',
      imageUrl:
          'https://sachxuasaigon.com/wp-content/uploads/2020/02/toi-tai-gioi.jpg',
    ),
    Product(
        id: 'book3',
        title: 'Trưởng thành sau ngàn lần tranh đấu',
        description:
            '“Không chao đảo thì không phải là người lớn, phải ngàn lần tranh đấu mới có thể trưởng thành. Có đau đớn mới là tuổi trẻ? Nếu vậy thì có chao đảo mới trở thành người lớn. Đúng vậy, có chao đảo một chút cũng không sao, sự dao động của bạn và của tôi là hành trình hết sức tự nhiên mang tên ‘trưởng thành’.”',
        price: 80.000,
        auth: 'Kim Ngân',
        imageUrl:
            "https://chiasemoi.com/wp-content/uploads/2020/05/sach-truong-thanh-sau-ngan-lan-tranh-dau.jpg"),
    Product(
      id: 'book4',
      title: 'Yêu những điều không hoàn hảo',
      description:
          'Đại đức Hae Min sinh ra và lớn lên tại Hàn Quốc. Sau khi hoàn thành bằng Thạc sĩ Tôn giáo học đối chiếu ở Đại học Havard và Tiến sĩ Tôn giáo học ở Đại học Princeton, ông ở lại Mỹ tham gia giảng dạy về tôn giáo ở trường Đại học Hampshire, Massachusetts. Không chỉ dừng lại ở nghiên cứu lý thuyết, mùa xuân năm 2000 ông quyết định xuất gia theo tông phái Tào Khê, một tông phái tiêu biểu của Phật giáo Hàn Quốc. Năm 2015, Đại đức Hae Min trở về Seoul, cùng nhiều chuyên gia mở trường Trị liệu tâm hồn, điều trị miễn phí cho những người gặp bất hạnh trong cuộc sống hay đang mang trong lòng nhiều khổ tâm. Đại đức Haemin là một trong những người rất có ảnh hưởng tới giới trẻ Hàn Quốc, trang Twitter cá nhân () của ông hiện có tới hơn một triệu người theo dõi. Sách cùng tác giả: - Những vỡ lẽ của tuổi trẻ - Yêu lấy những điều không hoàn hảo.',
      price: 65.000,
      auth:
          'Thiền sư Thích Nhất Hạnh (phải) nói chuyện với Thượng tọa Hyemin, rất nổi tiếng và là tác giả những cuốn sách bán chạy nhất của Hàn Quốc, trong một chương trình truyền hình quay tại Seoul hôm 14/5',
      imageUrl:
          'http://whs.edu.vn/wp-content/uploads/2021/03/image-20200827083539-1.jpeg',
    ),
    Product(
        id: 'book5',
        title: 'Tôi quyết đinh sống cho chính tôi',
        description: 'Bàn phím cơ AKKO 3087 v2 Monet’s Pond (Akko switch v2)',
        price: 50.000,
        auth: 'Cuong',
        imageUrl:
            "https://salt.tikicdn.com/cache/w1200/ts/product/c1/6a/3e/537f7b9bb219be81e217e0c7b5b037e6.jpg"),
    Product(
      id: 'book6',
      title: 'Càng Kỷ Luật, Càng Tự Do',
      description: 'Bàn phím cơ Akko 3087 v2 One Piece – Chopper (Akko switch)',
      price: 65.000,
      auth: 'Cuong',
      imageUrl:
          'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSqCUwSj0r4JcroxlSvNdEWRHqheWNf33cGSRP1qGp0B-fX8eq1ULeHYW7Sa5ECOCzytBKACFp2IRo-&usqp=CAc',
    ),
    Product(
      id: 'book7',
      title: 'Mỗi Lần Vấp Ngã Là Một Lần Trưởng Thành',
      description:
          'Bàn phím cơ AKKO 3068B Multi-modes World Tour Tokyo R2 (Bluetooth 5.0 / Wireless 2.4Ghz / Hotswap / Foam tiêu âm / AKKO CS Jelly sw)',
      price: 80.000,
      auth: 'Cuong',
      imageUrl:
          'https://product.hstatic.net/1000237375/product/vap-nga-900x900_83ab6f753cab436e9baaa789317b75b6_grande_1094f6483e6148f2ad5a7a8ed3910481_master.png',
    ),
    Product(
        id: 'book8',
        title: 'Không Sợ Chậm, Chỉ Sợ Dừng',
        description: '',
        price: 90.000,
        auth: 'Cuong',
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
