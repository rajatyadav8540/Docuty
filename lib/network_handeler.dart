import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class NetworkHandler
{
  String baseurl= "https://jsonplaceholder.typicode.com";
  var log = Logger();

  Future<dynamic> get(String url)async
  {
    url = formater(url);
    //user/register
    var response = await http.get(url);
    log.i(response.body);
    log.i(response.statusCode);

  }
  String formater(String url)
  {
    return baseurl+url;
  }
}