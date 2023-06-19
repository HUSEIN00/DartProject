//1) Задана строка. Определить самый часто встречающийся символ и количество его повторений.

void main(List<String> args) {
  
  var st1 = "dd ff fff lll kkkkkkkkkkk";
  Map<String, int> list = {};
  var count;
  for (int i = 0; i < st1.length; i++){

    if (list.containsKey(st1[i]) == true){
      
      count = list[st1[i]];
      count++;
      list.addAll({st1[i]: count});
      
    }else{
      list.addAll({st1[i]: 1});
      
    }
    
  }

  var max = -1;
  String char = "dsd";
  
  list.forEach((key, value) { 

    if (value > max){
      max = value;
    }

    if(max == value){

      
      char = "${key}: ${max}";
    }

  });
  
  print(list);
  print("Самый часто вст. символ: ${char}");

}