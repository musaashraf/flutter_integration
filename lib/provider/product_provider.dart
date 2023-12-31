import 'package:flutter/material.dart';
import 'package:flutter_integration/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  final List<ProductModel> _mac = [
    ProductModel(
      name: "Cotton Trouser",
      price: 999,
      image:
          'https://vasravitan.nishpap.net/wp-content/uploads/2023/10/fashion-product3.jpg',
          //'https://www.apple.com/v/macbook-air-m1/e/images/overview/compare/compare_mba_m1__fel7tn6ak56q_large.png',
      isAvailable: true,
    ),
    ProductModel(
      name: "Dummy Beanie",
      price: 99,
      image:
          'https://vasravitan.nishpap.net/wp-content/uploads/2023/10/beanie-2.jpg',
          //"https://www.apple.com/v/macbook-air-m1/e/images/overview/compare/compare_mbp_13__9j7gq7j09le6_large.png",
      isAvailable: false,
    ),
  ];

  final List<ProductModel> _ipad = [
    ProductModel(
      name: "Dummy Hoodie – Green",
      price: 800,
      image:
          'https://vasravitan.nishpap.net/wp-content/uploads/2023/10/7627286342_11c065414e_b.jpg',
          //"https://appleasia.lk/wp-content/uploads/2023/04/iPad-10th-Gen-blue.jpg",
      isAvailable: true,
    ),
    ProductModel(
      name: "Dummy T-Shirt with Logo",
      price: 2200,
      image:
      "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/t-shirt-with-logo-1.jpg",
      isAvailable: true,
    )
  ];

  final List<ProductModel> _iphone = [
    ProductModel(
      name: "Cotton Trouser",
      price: 999,
      image:
          "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/t-shirt-with-logo-1.jpg",
      isAvailable: true,
    ),
    ProductModel(
      name: "Cotton Trouser",
      price: 799,
      image: "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/t-shirt-with-logo-1.jpg",
      isAvailable: true,
    )
  ];

  final List<ProductModel> _accessories = [
    ProductModel(
      name: "Display",
      price: 1599,
      image:
          "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/7627286342_11c065414e_b.jpg",
      isAvailable: true,
    ),
    ProductModel(
      name: "hoodie",
      price: 59,
      image:
          'https://vasravitan.nishpap.net/wp-content/uploads/2023/10/7627286342_11c065414e_b.jpg',
      isAvailable: true,
    ),
    ProductModel(
      name: "hoodie",
      price: 99,
      image:
          "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/7627286342_11c065414e_b.jpg",
      isAvailable: true,
    ),
    ProductModel(
      name: "hoodie",
      price: 149,
      image:
          "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/7627286342_11c065414e_b.jpg",
      isAvailable: true,
    ),
    ProductModel(
      name: "hoodie",
      price: 199,
      image:
          "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/7627286342_11c065414e_b.jpg",
      isAvailable: true,
    )
  ];

  final List<ProductModel> _audio = [
    ProductModel(
      name: "hoodie",
      price: 249,
      image:
          "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/hoodie-with-logo-2.jpg",
      isAvailable: true,
    ),
    ProductModel(
      name: "hoodie",
      price: 549,
      image:
          "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/hoodie-with-logo-2.jpg",
      isAvailable: true,
    ),
    ProductModel(
      name: "hoodie",
      price: 99,
      image:
          "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/hoodie-with-logo-2.jpg",
      isAvailable: true,
    ),
    ProductModel(
      name: "hoodie",
      price: 169,
      image:
          "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/hoodie-with-logo-2.jpg",
      isAvailable: true,
    ),
    ProductModel(
      name: "hoodie",
      price: 129,
      image: "https://vasravitan.nishpap.net/wp-content/uploads/2023/10/hoodie-with-logo-2.jpg",
      isAvailable: true,
    )
  ];

  List<ProductModel> get macs => _mac;
  List<ProductModel> get ipads => _ipad;
  List<ProductModel> get iphone => _iphone;
  List<ProductModel> get accessories => _accessories;
  List<ProductModel> get audio => _audio;
}
