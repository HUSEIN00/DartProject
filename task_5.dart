//5) Дана  строка  символов,  среди  которых  могут  быть  пробелы. Продублировать    каждую  латинскую  букву  «o».  Прописные  и строчные буквы не различать.

void main(List<String> args) {
  
  String st = "! @ # O * & / / o + _ - o";
  String stFinal = "";
  var arr = st.split(" ");

  for(int i = 0; i < arr.length; i++){
    if(arr[i] == "o")
    {
      arr.insert(i, "o");
      i++;     
    }
    else if(arr[i] == "O")
    {
      arr.insert(i, "O");
      i++; 
    }
  }
  stFinal = arr.join(" ");
  print("Было: ${st}");
  print("Стало: ${stFinal}");

}