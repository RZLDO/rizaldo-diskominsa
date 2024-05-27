import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as htmlParser;
import 'package:rizaldo_test/model/News_item.dart';

Future<List<NewsItem>?> fetchNews() async {
  final response =
      await http.get(Uri.parse('https://aceh.tribunnews.com/tag/aceh-jaya'));
  if (response.statusCode == 200) {
    var document = htmlParser.parse(response.body);

    // Debug: Print the response body
    print(response.body);

    // Adjust the selector based on actual HTML structure
    var items = document.querySelectorAll('ul.lsi > li.ptb15');
    if (items.isEmpty) {
      print('No items found with the given selector.');
      return null;
    }

    final data = items.map((element) {
      var titleElement = element.querySelector('h3 > a');
      var title = titleElement?.text.trim();

      // Debug: Print the parsed title
      print('Parsed title: $title');

      // var link = titleElement?.attributes['href'];
      var imageUrl = element.querySelector('img')?.attributes['src'];
      var description = element.querySelector('h4')?.text.trim();
      // var date = element.querySelector('.grey')?.text.trim();

      return NewsItem(
        title: title ?? "",
        link: "",
        imageUrl: imageUrl ?? "",
        description: description ?? "",
        date: "",
      );
    }).toList();

    print(data.toString());
    return data;
  } else {
    print('Failed to load news. Status code: ${response.statusCode}');
    return null;
  }
}
