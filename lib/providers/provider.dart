import 'package:dio/dio.dart';
import 'package:dogs_api/models/facts.dart';


class CharacterProvider{
final _url ='https://dog-facts-api.herokuapp.com/api/v1/resources/dogs/all';
final _http =Dio();


Future<List<Facts>>recib()async{
final response = await _http.get(_url);
List<dynamic>  data = response.data;
return data.map((faccion) => Facts.space(faccion)).toList();
}
}