import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceUtils{

  Future <SharedPreferences> getSharedPrefInstance() async{
    return await SharedPreferences.getInstance();
  }




   Future<bool> saveDataSharedPref(String key, dynamic value ) async{
    var sharedPref= await  getSharedPrefInstance();

    switch(value.runtimeType){
      case String :  {
       return sharedPref.setInt(key, value);
      }
      case int:{
        return sharedPref.setInt(key, value);
      }
      case bool:{
        return sharedPref.setBool(key, value);
      }
      case double:{
        return  sharedPref.setDouble(key, value);
      }
      default: {
        throw Exception("Unsupported Type");
      }
    }
  }





  Future<dynamic > loadDataSharedPref(String key,dynamic defaultValue) async{
    var sharedPref= await  getSharedPrefInstance();

    if(!sharedPref.containsKey(key)) return null ;

    switch(defaultValue.runtimeType){

      case String :  {
        return  sharedPref.getString(key) ?? defaultValue ;
      }
      case int:{
        return  sharedPref.getInt(key) ?? defaultValue ;
      }
      case bool:{
        return  sharedPref.getBool(key) ?? defaultValue ;
      }
      case double:{
        return  sharedPref.getDouble(key) ?? defaultValue ;
      }
      default: {
        throw Exception("Unsupported Type");
      }
      }
  }




  Future<bool> removeDataShredPref(String key) async{
    var sharedPref= await  getSharedPrefInstance();
   return  sharedPref.remove(key);
  }


}