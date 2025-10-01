import 'package:flutter/material.dart';
import '../data/food_data.dart';
import 'login_page.dart'; // Impor LoginPage untuk navigasi logout
import 'order_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  // Terima data username dari halaman login
  final String username;

  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController searchController;
  late List<FoodMenu> filteredMenuList;
  late List<bool> isLikedList;
  late List<bool> isBookmarkedList;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    filteredMenuList = foodMenuList;
    isLikedList = List.filled(foodMenuList.length, false);
    isBookmarkedList = List.filled(foodMenuList.length, false);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _searchMenu(String query) {
    setState(() {
      filteredMenuList = foodMenuList.where((item) {
        final lowerQuery = query.toLowerCase();
        final nameMatch = item.name.toLowerCase().contains(lowerQuery);
        final categoryMatch = item.categories.any(
          (cat) => cat.toLowerCase().contains(lowerQuery),
        );
        return nameMatch || categoryMatch;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Tampilkan username di title
        title: Text('Selamat Datang, ${widget.username}!'),
        centerTitle: false, // Membuat judul rata kiri
        actions: [
          // Tambahkan tombol Profile
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Profile',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          // Tambahkan tombol Logout
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              // Navigasi kembali ke LoginPage dan hapus semua halaman sebelumnya
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Banner
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/banner.png', // Sesuaikan nama banner jika berbeda
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: _searchMenu,
              decoration: InputDecoration(
                hintText: "Cari menu...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          // Grid menu
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.75, // Disesuaikan untuk layout baru
              ),
              itemCount: filteredMenuList.length,
              itemBuilder: (context, index) {
                final FoodMenu item = filteredMenuList[index];
                return _buildMenuCard(context, item, index);
              },
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildMenuCard dengan UI yang dimodifikasi
  Widget _buildMenuCard(BuildContext context, FoodMenu item, int index) {
    final originalIndex = foodMenuList.indexOf(item);
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrderPage(item: item)),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                item.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.fastfood,
                    size: 60,
                    color: Colors.grey,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.categories.first,
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  const SizedBox(height: 8),

                  // --- UI BARU UNTUK HARGA DAN TOMBOL ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Harga
                      Text(
                        'Rp ${item.price}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      // Tombol Pesan
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OrderPage(item: item),
                            ),
                          );
                        },
                        // Styling agar tombol tidak terlalu besar
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          'Pesan',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  // --- AKHIR DARI UI BARU ---
                ],
              ),
            ),
            // Like and Bookmark buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          isLikedList[originalIndex]
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.pink,
                        ),
                        onPressed: () {
                          setState(() {
                            if (isLikedList[originalIndex]) {
                              item.totalLike--;
                              isLikedList[originalIndex] = false;
                            } else {
                              item.totalLike++;
                              isLikedList[originalIndex] = true;
                            }
                          });
                        },
                      ),
                      Text('${item.totalLike}'),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      isBookmarkedList[originalIndex]
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      setState(() {
                        isBookmarkedList[originalIndex] =
                            !isBookmarkedList[originalIndex];
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
