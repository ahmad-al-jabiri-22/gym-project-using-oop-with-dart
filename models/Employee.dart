enum TypeOfJob { captine, receptionist, cleaner}

class Employee {
  int id;
  String first_name;
  String last_name;
  double salary = 0;
  double borrowed = 0;
  double yourSalaryAfterRepay=0;
  TypeOfJob typeOfJob;
  int Working_hours = 0;

  Employee({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.typeOfJob,
  });

  void checkTypeOfJob({required TypeOfJob typeOfJob,required double borr})
  {
    if(typeOfJob == TypeOfJob.captine)
    {
      salary = 600;
      Working_hours =8;
    }
    if(typeOfJob == TypeOfJob.receptionist)
    {
      salary = 500;
      Working_hours = 12;
    }
    if(typeOfJob == TypeOfJob.cleaner)
    {
      Working_hours = 12;
      salary == 400;
    }
    borrowed = borr;
    yourSalaryAfterRepay = salary - borrowed;


  }


  void displayInfo() {
    print("---------display one emeployee info-----------");
    print("id: ${id}");
    print("first_name: ${first_name} ");
    print("last_name: ${last_name}");
    print("salary: ${salary} \$");
    print("loan: ${borrowed} \$");
    print("your Salary After Repay: ${yourSalaryAfterRepay} \$");
    print("typeOfJob: ${typeOfJob.name}");
    print("Working_hours: ${Working_hours} hours");
    print("--------------------");
  }
}
