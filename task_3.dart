//3) Даны три предложения. 
//Определить самое длинное из слов первого предложения, которое есть во втором и третьем предложении (слова в предложении разделены пробелами).

void main(List<String> args) {
  
  String st1 = "Добый день программисты";
  String st2 = "Как у вас дела, программисты ?";
  String st3 = "Лабараторную работу сделали,  программисты ?";

  var arr = st1.split(" ");
  print(arr);
  String max = "";
  arr.forEach((element) {
    
    if(element.length > max.length){
      max = element;

    }

  });
  if(st2.contains(max) && st3.contains(max)){
    print("Слово - ${max}, самое длинне в первом предложении и есть в двух других предложениях.");
  }
  else
  {
    print("Такого слова нет");
  }
  
}