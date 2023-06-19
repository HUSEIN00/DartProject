//4) Дана  строка,  содержащая  последовательность  слов, разделенных  пробелами.  Определить,  имеется  ли  в последовательности  слово,  
//в  котором  на  всех  нечетных  позициях находится буква "а". Если да, вывести первое по порядку найденное слово, иначе выдать «NO».
//
void main(List<String> args) {
  
  String st = "Привет с вами рарарара тт л пататат";

  var arr = st.split(" ");
  bool ok = false;
  for(int i = 0; i < arr.length; i++){
    
    for(int j = 0; j < arr[i].length; j++){
      if(j%2 != 0 && arr[i][j] == "а"){
        ok = true;
      }
      else
      {
        ok = false;
      }
    }
    if(ok == true){
      print(arr[i]);
      break;
    }
    
  }
  if(ok == false){
    print("NO");
  }
  
}