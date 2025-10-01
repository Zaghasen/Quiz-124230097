class FoodMenu {
  String name;
  int price;
  String imageUrl;
  String description;
  int totalLike;
  List<String> categories;
  String recipeUrl;
  String kalori;
  String ingredients;

  FoodMenu({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.categories,
    required this.totalLike,
    required this.recipeUrl,
    required this.kalori,
    required this.ingredients,
  });
}

// Ini adalah list data utama kita, mirip seperti gameList
var foodMenuList = [
  FoodMenu(
    name: 'Nasi Goreng Spesial',
    price: 25000,
    imageUrl: 'assets/nasi_goreng.png',
    description:
        "Nasi goreng khas Indonesia dengan tambahan ayam dan telur, disajikan dengan bumbu spesial.",
    categories: ['Nasi', 'Telur', 'Ayam', 'Kecap'],
    totalLike: 125000,
    recipeUrl: "https://cookpad.com/id/resep/12345-nasi-goreng-spesial",
    kalori: '450 kalori',
    ingredients: 'Nasi, Ayam, Telur, Bumbu spesial, Kecap',
  ),
  FoodMenu(
    name: 'Sate Ayam',
    price: 30000,
    imageUrl: 'assets/sate_ayam.png',
    description: "Sate ayam empuk dengan bumbu kacang gurih dan kecap manis.",
    categories: ['Ayam', 'Kecap', 'Sate'],
    totalLike: 230000,
    recipeUrl: "https://cookpad.com/id/resep/67890-sate-ayam",
    kalori: '300 kalori',
    ingredients: 'Ayam, Kacang, Kecap, Bumbu',
  ),
  FoodMenu(
    name: 'Es Teh Manis',
    price: 8000,
    imageUrl: 'assets/teh.png',
    description:
        "Minuman teh segar dengan gula dan es batu, cocok untuk pelepas dahaga.",
    categories: ['Teh', 'Gula', 'Es Batu'],
    totalLike: 180500,
    recipeUrl: "https://cookpad.com/id/resep/11111-es-teh-manis",
    kalori: '100 kalori',
    ingredients: 'Teh, Gula, Es Batu',
  ),
  FoodMenu(
    name: 'Bakso Sapi',
    price: 20000,
    imageUrl: 'assets/bakso.png',
    description:
        "Bakso sapi kenyal dengan kuah gurih dan bumbu khas Indonesia.",
    categories: ['Daging Sapi', 'Tepung', 'Bumbu'],
    totalLike: 210000,
    recipeUrl: "https://cookpad.com/id/resep/22222-bakso-sapi",
    kalori: '350 kalori',
    ingredients: 'Daging Sapi, Tepung, Bumbu',
  ),
  FoodMenu(
    name: 'Rendang',
    price: 40000,
    imageUrl: 'assets/rendang.png',
    description:
        "Rendang daging sapi dengan santan dan rempah-rempah khas Minang.",
    categories: ['Daging Sapi', 'Santan', 'Rempah'],
    totalLike: 198000,
    recipeUrl: "https://cookpad.com/id/resep/33333-rendang",
    kalori: '500 kalori',
    ingredients: 'Daging Sapi, Santan, Rempah-rempah',
  ),
  FoodMenu(
    name: 'Pisang Goreng',
    price: 15000,
    imageUrl: 'assets/pisang_goreng.png',
    description:
        "Pisang goreng renyah di luar, lembut di dalam, cocok untuk camilan.",
    categories: ['Pisang', 'Tepung', 'Gula'],
    totalLike: 350000,
    recipeUrl: "https://cookpad.com/id/resep/44444-pisang-goreng",
    kalori: '200 kalori',
    ingredients: 'Pisang, Tepung, Gula',
  ),
];
