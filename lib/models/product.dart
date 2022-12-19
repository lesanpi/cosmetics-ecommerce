import 'package:equatable/equatable.dart';

class Product extends Equatable {
  const Product({
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });

  final String title;
  final String description;
  final double price;
  final String image;
  @override
  List<Object?> get props => [];
}

final productsExample = [
  // const Product(
  //   title: 'Moon Dew Eye Cream',
  //   description:
  //       'Reveal silky-smooth skin with the Crystal Queen of Calmness. Gently exfoliating and purely magical, crushed amethyst gemstone combines with magnesium-rich salt, ultra-nourishing organic virgin coconut oil and night-blooming jasmine sambac to lavish your body with luxe moisture.',
  //   price: 44,
  //   image: 'assets/images/image-1.png',
  // ),
  const Product(
    title: 'Body Scrub',
    description:
        'Reveal silky-smooth skin with the Crystal Queen of Calmness. Gently exfoliating and purely magical, crushed amethyst gemstone combines with magnesium-rich salt, ultra-nourishing organic virgin coconut oil and night-blooming jasmine sambac to lavish your body with luxe moisture.',
    price: 44,
    image: 'assets/images/product 8.png',
  ),
  const Product(
    title: 'Smoothing Serum',
    description:
        'Reveal silky-smooth skin with the Crystal Queen of Calmness. Gently exfoliating and purely magical, crushed amethyst gemstone combines with magnesium-rich salt, ultra-nourishing organic virgin coconut oil and night-blooming jasmine sambac to lavish your body with luxe moisture.',
    price: 44,
    image: 'assets/images/product 5.png',
  ),
  const Product(
    title: 'Body Scrub',
    description:
        'Reveal silky-smooth skin with the Crystal Queen of Calmness. Gently exfoliating and purely magical, crushed amethyst gemstone combines with magnesium-rich salt, ultra-nourishing organic virgin coconut oil and night-blooming jasmine sambac to lavish your body with luxe moisture.',
    price: 44,
    image: 'assets/images/product 8-1.png',
  ),
  const Product(
    title: 'Smoothing Serum',
    description:
        'Reveal silky-smooth skin with the Crystal Queen of Calmness. Gently exfoliating and purely magical, crushed amethyst gemstone combines with magnesium-rich salt, ultra-nourishing organic virgin coconut oil and night-blooming jasmine sambac to lavish your body with luxe moisture.',
    price: 44,
    image: 'assets/images/product 5-1.png',
  ),
];
