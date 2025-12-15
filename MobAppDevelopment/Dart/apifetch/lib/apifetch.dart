import 'package:http/http.dart' as HTTP;
void main()async{
  print("APII Fetch in Dart");
  final API = Uri.parse("https://6936c947f8dc350aff32390a.mockapi.io/students");

  final Response = await HTTP.get(API);
  print(Response.body);
}