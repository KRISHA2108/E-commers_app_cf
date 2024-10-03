import 'package:e_com_application/headers.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> products =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text("Detail "),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.cart);
            },
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      products['images'].length,
                      (index) => Container(
                        height: size.height * 0.4,
                        width: size.width * 0.95,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade300,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(products['images'][index]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              20.ofh,
              Text(
                products['title'],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              15.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Category: ${products['category']}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Text(
                products['description'],
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Price: \$ ${products['price']}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rating: ${products['rating']} ⭐".toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Stock: ${products['stock']}".toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "DiscountPercentage: ${products['discountPercentage']}"
                      .toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "SKU: ${products['sku']}".toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Weight: ${products['weight']}".toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Dimensions: ${products['dimensions']}".toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "WarrantyInformation: ${products['warrantyInformation']}"
                      .toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ShippingInformation: ${products['shippingInformation']}"
                      .toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "AvailabilityStatus: ${products['availabilityStatus']}"
                      .toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ReturnPolicy: ${products['returnPolicy']}".toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "MinimumOrderQuantity: ${products['minimumOrderQuantity']}"
                      .toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tags: ${products['tags']}".toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Brand: ${products['brand']}".toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              2.ofh,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Meta: ${products['meta']}".toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!Cart.contains(products)) {
            products['qty'] = 1;
            Cart.add(products);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Added to cart"),
                backgroundColor: Colors.green,
                duration: Duration(seconds: 1),
              ),
            );
          }
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}
