class FoodMenu {
  String name;
  int price;
  String imageUrl;
  String description;
  int totalLike;
  List<String> categories;

  FoodMenu({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.categories,
    required this.totalLike,
  });
}

// Ini adalah list data utama kita, mirip seperti gameList
var foodMenuList = [
  FoodMenu(
    name: 'Nasi Goreng Spesial',
    price: 25000,
    imageUrl:
        'https://images.pexels.com/photos/19834047/pexels-photo-19834047.jpeg',
    description:
        "Nasi goreng khas Indonesia dengan tambahan ayam dan telur, disajikan dengan bumbu spesial.",
    categories: ['Nasi', 'Telur', 'Ayam', 'Kecap'],
    totalLike: 125000,
  ),
  FoodMenu(
    name: 'Sate Ayam',
    price: 30000,
    imageUrl:
        'https://images.pexels.com/photos/23147806/pexels-photo-23147806.jpeg',
    description: "Sate ayam empuk dengan bumbu kacang gurih dan kecap manis.",
    categories: ['Ayam', 'Kecap', 'Sate'],
    totalLike: 230000,
  ),
  FoodMenu(
    name: 'Es Teh Manis',
    price: 8000,
    imageUrl:
        'https://images.pexels.com/photos/13495013/pexels-photo-13495013.jpeg',
    description:
        "Minuman teh segar dengan gula dan es batu, cocok untuk pelepas dahaga.",
    categories: ['Teh', 'Gula', 'Es Batu'],
    totalLike: 180500,
  ),
  FoodMenu(
    name: 'Bakso Sapi',
    price: 20000,
    imageUrl:
        'https://images.pexels.com/photos/15853315/pexels-photo-15853315.jpeg',
    description:
        "Bakso sapi kenyal dengan kuah gurih dan bumbu khas Indonesia.",
    categories: ['Daging Sapi', 'Tepung', 'Bumbu'],
    totalLike: 210000,
  ),
  FoodMenu(
    name: 'Rendang',
    price: 40000,
    imageUrl:
        'https://images.pexels.com/photos/12208781/pexels-photo-12208781.jpeg',
    description:
        "Rendang daging sapi dengan santan dan rempah-rempah khas Minang.",
    categories: ['Daging Sapi', 'Santan', 'Rempah'],
    totalLike: 198000,
  ),
  FoodMenu(
    name: 'Pisang Goreng',
    price: 15000,
    imageUrl:
        'https://images.pexels.com/photos/8118337/pexels-photo-8118337.jpeg',
    description:
        "A sandbox video game where players can build and explore virtual worlds made of blocks. There are no specific goals to accomplish, allowing players a large amount of freedom in choosing how to play. Gameplay modes include a survival mode and a creative mode where players have unlimited resources.Pisang goreng renyah di luar, lembut di dalam, cocok untuk camilan.",
    categories: ['Pisang', 'Tepung', 'Gula'],
    totalLike: 350000,
  ),
];
