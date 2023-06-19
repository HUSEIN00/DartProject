class Patient{
  int? id;
  String? lastname;
  String? name;
  int? age;
  String? defect;


  Patient(int id, String lastname, String name, int age, String defect){
    
    this.id = id;
    
    lastname = lastname.toLowerCase();
    List<String> arr = lastname.split("");
    arr[0] = arr[0].toUpperCase();
    this.lastname = arr.join();

    name = name.toLowerCase();
    List<String> arr2 = name.split("");   
    arr2[0] = arr2[0].toUpperCase(); 
    this.name = arr2.join();

    if(age > 100){
      this.age = 63;
    }
    else{
      this.age = age;
    }
    
    this.defect = defect;
    
  }
  
  
  
  
  void info(){
    print("Номер: ${id} \nФамилия: ${lastname} \nИмя: ${name} \nВозраст: ${age} \nБолезнь: ${defect}");

  }
  
  void setLname(String Lname){

    this.lastname = Lname;
  }
  
  void setName(String Name){

    this.name = Name;
  }

  void setAge(int Age){
    this.age = Age;
  }
  
  void setDefect(String Defect){
    this.defect = Defect;
  }
}


class Polyclinic{
  
  List<Patient>? palata;

  Polyclinic(List<Patient> palata){
    this.palata = palata;
  }
  

  void infoPacient(){
    
    for(int i = 0; i < palata!.length; i++){
      print("--------------------------------------------------------------------");
      palata![i].info();
      
    }
  }
  
  
  
}

void main(){
  
  
  Patient p1 = Patient(1, "Александров", "Валера", 24, "Тупость");
  Patient p2 = Patient(2, "Зазоров", "Вася", 12, "Бронхит");
  Patient p3 = Patient(3, "Генадев", "пАША", 35, "Колено");
  Patient p4 = Patient(4, "Валеров", "Котэ", 15, "Пушистость");
  Patient p5 = Patient(5, "Нурсултанов", "Шэ Сю", 89, "Восполение");
  
  

  List<Patient> palata = [p1, p2, p3, p4, p5];

  Polyclinic menu = Polyclinic(palata);
  
  menu.infoPacient();


}
