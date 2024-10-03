import 'package:e_com_application/headers.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    String? category = ModalRoute.of(context)!.settings.arguments as String;
    List filteredList =
        products.where((element) => element['category'] == category).toList();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          category.replaceFirst(
            category[0],
            category[0].toUpperCase(),
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: filteredList.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10),
                    height: 200,
                    width: 200,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                          filteredList[index]['thumbnail'],
                        ),
                        alignment: AlignmentDirectional.bottomEnd,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        5.ofh,
                        Text(
                          filteredList[index]['title'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        5.ofh,
                        Text(
                          filteredList[index]['price'].toString(),
                        ),
                        5.ofh,
                        Text(
                          filteredList[index]['category'].replaceFirst(
                            filteredList[index]['category'][0],
                            filteredList[index]['category'][0].toUpperCase(),
                          ),
                        ),
                        5.ofh,
                        Text(
                          filteredList[index]['stock'].toString(),
                        ),
                        5.ofh,
                        Text(
                          "${filteredList[index]['rating']}⭐".toString(),
                        ),
                        5.ofh,
                        Text(
                          filteredList[index]['brand'] ?? "Unknown",
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
