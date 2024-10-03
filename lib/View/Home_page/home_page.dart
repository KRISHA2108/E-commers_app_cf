import 'package:e_com_application/headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                ),
              ),
              accountName: Text("John doe"),
              accountEmail: Text("pBmKs@example.com"),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
            ),
            ListTile(
              title: const Text("Home"),
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.home);
                },
                icon: const Icon(Icons.home),
              ),
            ),
            ListTile(
              title: const Text("Profile"),
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.profile);
                },
                icon: const Icon(Icons.person),
              ),
            ),
            ListTile(
              title: const Text("Cart"),
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.cart);
                },
                icon: const Icon(Icons.shopping_cart),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Home "),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.search);
            },
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.profile);
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: size.height * 0.2,
              width: size.width * 0.92,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://st2.depositphotos.com/7865540/12255/i/450/depositphotos_122555538-stock-photo-e-commerce-icons-and-keywords.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            20.ofh,
            const Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            20.ofh,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: image
                            .map(
                              (e) => Container(
                                height: 100,
                                width: 100,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(5, 5),
                                      blurRadius: 5,
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      e,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: catergories
                            .map(
                              (e) => GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    Routes.category,
                                    arguments: e,
                                  );
                                },
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  margin: const EdgeInsets.all(10),
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    e.replaceFirst(
                                      e[0],
                                      e[0].toUpperCase(),
                                    ),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            20.ofh,
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "All Products",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            20.ofh,
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  childAspectRatio: 4 / 7,
                  mainAxisSpacing: 20,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.detail,
                        arguments: products[index]);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(5, 5),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: NetworkImage(products[index]['thumbnail']),
                        ),
                        Text(
                          products[index]['category'].replaceFirst(
                            products[index]['category'][0],
                            products[index]['category'][0].toUpperCase(),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.black,
                            // fontSize: 18,
                          ),
                        ),
                        Text(
                          products[index]['title'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.black,
                            // fontSize: 18,
                          ),
                        ),
                        Text(
                          "\$ ${products[index]['price']}".toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            // fontSize: 18,
                          ),
                        ),
                        Text(
                          products[index]['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.black,
                            // fontSize: 18,
                          ),
                        ),
                        Text(
                          "⭐ ${products[index]['rating']}".toString(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.black,
                            // fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: products
                    .map(
                      (e) => Container(
                        height: 100,
                        width: 300,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(5, 5),
                              blurRadius: 5,
                            ),
                          ],
                          shape: BoxShape.circle,
                          color: Colors.white,
                          // image: DecorationImage(
                          //   image: NetworkImage(
                          //     e['thumbnail'],
                          //   ),
                          // ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),*/
