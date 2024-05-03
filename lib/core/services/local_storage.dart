import 'package:hive_flutter/hive_flutter.dart';


class AppLocalStorage{
static late Box box ;
static late Box taskBox ;  

 init(){
  box= Hive.box('user');
  taskBox = Hive.box('task');

 }

 static cacheDate(key,value){
     
    box.put(key, value);
  }

   static getCachedDate(key){
     
    return box.get(key);
  }
   static cachetask(key, value){
     
    taskBox.put(key, value);
  }
  static gettask(key){
     
    return taskBox.get(key);
  }
  static  delettask(key){
     
     taskBox.delete(key);
  }
}