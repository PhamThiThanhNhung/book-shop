import 'package:flutter/material.dart';
import './product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: 'keyboard1',
        title: 'Tuổi Trẻ Đáng Gía Bao Nhiêu',
        description:
            'Cuốn Tuổi trẻ đáng giá bao nhiêu có thể được coi là một ngọn hải đăng chỉ dẫn ban đọc đi qua đại dương tuổi trẻ vô cùng rộng lớn, mênh mông nhưng ẩn chứa rất nhiều thách thức. Xuyên suốt cuốn sách, tác giả Rosie nói về những bài học trong quá trình khám phá bản thân của mình và khuyến khích các bạn trẻ đi nhiều hơn, trải nghiệm nhiều hơn và cống hiến nhiều hơn.',
        price: 70.000,
        imageUrl:
            "https://www.reader.com.vn/uploads/images/review-tuoi-tre-dang-gia-bao-nhieu-1.jpg"),
    Product(
      id: 'keyboard2',
      title: 'Tôi Tài Gioi Bạn Cũng Thế',
      description:
          'Tôi tài giỏi, bạn cũng thế! cung cấp những phương pháp tăng cường sự tự tin và làm chủ cuộc sống, các công cụ học bằng cả não bộ như bản đồ tư duy, trí nhớ siêu đẳng, cách quản lý thời gian và xác định mục tiêu, phương pháp thi cử hiệu quả, vân vân.',
      price: 85.000,
      imageUrl:
          'https://sachxuasaigon.com/wp-content/uploads/2020/02/toi-tai-gioi.jpg',
    ),
    Product(
        id: 'keyboard3',
        title: 'Trưởng thành sau ngàn lần tranh đấu',
        description:
            'Cuốn sách nói lên những nỗi lo của những bạn trẻ trước ngưỡng cửa cuộc đời. Làm thế nào để trưởng thành, làm thế nào để sống tốt hơn, làm thế nào để trở nên hạnh phúc, làm thế nào…, làm thế nào… ??? Không ai có thể trả lời được !',
        price: 80.000,
        imageUrl:
            "https://chiasemoi.com/wp-content/uploads/2020/05/sach-truong-thanh-sau-ngan-lan-tranh-dau.jpg"),
    Product(
      id: 'keyboard4',
      title: 'Yêu những điều không hoàn hảo',
      description:
          '“Yêu những điều không hoàn hảo”. Quyển sách để cao những giá trị tình cảm trong cuộc sống này, khiến con tim bạn thêm nhịp đập của yêu thương. Quyển sách giúp bạn phát triển tư duy theo hướng đúng đắn, tiếp nhận những lời khuyên đúng đắn để sáng trí hơn, minh mẫn trong công việc hơn. Đó cũng chính là cách khai tâm để sống cho một cuộc đời vốn không hoàn hảo mà nếu chúng ta cứ chấp nhặt và cố biến mọi thứ hoàn hảo thì chắc chắn đã đi trên con đường sai lầm. Quyển sách này chỉ cho bạn hướng đi hoàn thiện nhất để có được một cuộc sống giản đơn nhưng ý nghĩa.',
      price: 65.000,
      imageUrl:
          'http://whs.edu.vn/wp-content/uploads/2021/03/image-20200827083539-1.jpeg',
    ),
    Product(
        id: 'keyboard5',
        title: 'Tôi quyết đinh sống cho chính tôi',
        description:
            '“Tôi quyết định sống cho chính tôi”gồm 6 phần với độ dài vừa phải 232 trang, những dòng tản văn vô cùng nhẹ nhàng giúp bạn tôn trọng chính mình, sống đời hạnh phúc theo một cách duy nhất và cách mà bạn có thể làm tốt nhất - sống cuộc đời của chính mình.',
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
          'Mỗi lần vấp ngã là một lần trưởng thành chỉ ra rằng, không chỉ có thành công mới đáng được khen ngợi, mỗi lần thất bại bạn lại nhận được những kinh nghiệm, bạn đã lĩnh hội. Vượt qua khó khăn tức là bạn đã bước thêm một bước trên con đường trưởng thành.',
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
