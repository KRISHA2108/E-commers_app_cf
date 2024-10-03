import 'package:e_com_application/headers.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: const Text("Profile "),
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            20.ofh,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5,
                        // offset: Offset(
                        //   3,
                        //   3,
                        // ),
                      ),
                    ],
                    shape: BoxShape.circle,
                    color: Colors.blueGrey,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],
            ),
            10.ofh,
            const Text(
              "John Doe",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            10.ofh,
            const Text(
              "pBmKs@example.com",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            30.ofh,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.57,
                      width: size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 1,
                            // offset: Offset(5, 5),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              30.ofh,
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person,
                                    color: Colors.grey,
                                  ),
                                  20.ofw,
                                  const Text(
                                    "Edit Profile",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  20.ofw,
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              40.ofh,
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                  20.ofw,
                                  const Text(
                                    "Shopping address",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  20.ofw,
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              40.ofh,
                              Row(
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.grey,
                                  ),
                                  20.ofw,
                                  const Text(
                                    "Wishlist",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  20.ofw,
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              40.ofh,
                              Row(
                                children: [
                                  const Icon(
                                    Icons.shopping_bag,
                                    color: Colors.grey,
                                  ),
                                  20.ofw,
                                  const Text(
                                    "Order History",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  20.ofw,
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              40.ofh,
                              Row(
                                children: [
                                  const Icon(
                                    Icons.notifications,
                                    color: Colors.grey,
                                  ),
                                  20.ofw,
                                  const Text(
                                    "Notifications",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  20.ofw,
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              40.ofh,
                              Row(
                                children: [
                                  const Icon(
                                    Icons.credit_card,
                                    color: Colors.grey,
                                  ),
                                  20.ofw,
                                  const Text(
                                    "Card Details",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  20.ofw,
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              40.ofh,
                              Row(
                                children: [
                                  const Icon(
                                    Icons.settings,
                                    color: Colors.grey,
                                  ),
                                  20.ofw,
                                  const Text(
                                    "Settings",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  20.ofw,
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              40.ofh,
                              Row(
                                children: [
                                  const Icon(
                                    Icons.logout,
                                    color: Colors.grey,
                                  ),
                                  20.ofw,
                                  const Text(
                                    "Logout",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  20.ofw,
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
