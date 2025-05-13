import '../models/Employee.dart';
import '../models/GymMachine.dart';
import '../models/Member.dart';

class System {
  List <Member> list_of_members=[];
  List <Employee> list_of_employees=[];
  List <Gymmachine> list_of_Gym_machine = [];

  void addMembers(Member member)
  {
    list_of_members.add(member);
  }

  void addEmployee(Employee employee)
  {
    list_of_employees.add(employee);
  }

  void addMachine(Gymmachine gymMachine)
  {
    list_of_Gym_machine.add(gymMachine);
  }

  void displayNumberOfMemeer()
  {
   print( list_of_members.length);
  }
  void displayNumberOfEmployees(){
    print(list_of_employees.length);
  }
  void displayNumberOfMachines()
  {
    print(list_of_Gym_machine.length);
  }

  void displayAllMembers()
  {
    print('"/"********* (display all members) **************"\"');
    for(var m in list_of_members)
    {
      print("${m.id} ${m.first_name} ${m.last_name}");
      print("----------------------------");
      
    }
  }

  void displayAllInfoOfMembers()
  {
    print('"/"********* (display all info of members) **************"\"');
    for(var m in list_of_members)
    {
      m.displayInfo();
      print("----------------------------");

    }
  }

  void displayAllEmployees()
  {
    print('"/"********* (display all employees) **************"\"');
    for(var e in list_of_employees)
    {
      print("${e.id} ${e.first_name} ${e.last_name} ${e.typeOfJob.name}");
      print("----------------------------");

    }
  }

  void displayAllInfoOfEmployees()
  {
    print('"/"********* (display all info of employees) **************"\"');
    for(var e in list_of_employees)
    {
      e.displayInfo();
      print("----------------------------");

    }
  }

  void displayAllMachines()
  {
    print('"/"********* (display all machines) **************"\"');
    for(var m in list_of_Gym_machine)
    {
      print("${m.id} ${m.primeId} ${m.name} ${m.quantity}");
      print("----------------------------");
    }
  }

  void displayAllInfoOfMachines()
  {
    print('"/"********* (display all info of Machines) **************"\"');
    for(var m in list_of_Gym_machine)
    {
      m.displayInfo();
      print("----------------------------");

    }
  }
  

}