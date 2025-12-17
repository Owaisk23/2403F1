import 'package:http/http.dart' as HTTP;
import 'dart:convert' as CONVERT;
void main()async{
  print("APII Fetch in Dart");
  final API = Uri.parse("https://6936c947f8dc350aff32390a.mockapi.io/students");

  HTTP.get(API).then((response){
    final data = CONVERT.jsonDecode(response.body);
    List<dynamic> univerityInfo = data;
    for(var info in univerityInfo){
      print("Name: ${info['stdName']}, Age: ${info['stdAge']}, Country: ${info['stdCountry']}");
    }
  });


  // final Response = await HTTP.get(API);
  // print(Response.body);
}