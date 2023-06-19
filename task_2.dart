//2) Дана строка, содержащая последовательность слов, разделенных пробелами.  
//Определить,  находятся  ли слова  последовательности  в порядке возрастания длин слов. Если да, то вывести "YES", иначе "NO"

void main(List<String> args) {
  
  String st = "Добрый день программисты";

  var arr = st.split(" ");

  int num = 0;
  bool ok = true;
  arr.forEach((element) {

    if(element.length > num){
      num = element.length;

    }
    else
    {
      ok = false;
    }


  });

  if(ok == true)
  {
    print("YES");
  }
  else
  {
    print("NO");
  }

}