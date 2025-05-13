//import 'dart:io';

import 'models/Employee.dart';
import 'models/GymMachine.dart';
import 'models/Member.dart';
import 'system/System.dart';

void main() {
  var system = System();

  var mem1 = Member(
    id: 1,
    first_name: "aa",
    last_name: "bb",
    totalPaid: 20,
    //typeOfBooking: TypeOfBooking.one_month,
    date_of_start: DateTime(2025, 01, 01),
  );
  var mem2 = Member(
    id: 2,
    first_name: "cc",
    last_name: "dd",
    totalPaid: 10,
    //typeOfBooking: TypeOfBooking.one_month,
    date_of_start: DateTime(2025, 01, 01),
  );

  system.addMembers(mem1);
  system.addMembers(mem2);
  mem1.checkTypeOfBooking(TypeOfBooking.six_Month);
  mem2.checkTypeOfBooking(TypeOfBooking.one_month);

  var emp = Employee(
    id: 1,
    first_name: "aa",
    last_name: "bb",
    typeOfJob: TypeOfJob.captine,
  );
  emp.checkTypeOfJob(typeOfJob: TypeOfJob.cleaner, borr: 50);
  system.addEmployee(emp);
  emp.displayInfo();

  //system.displayNumberOfMemeber();
  mem1.displayInfo();
  mem2.displayInfo();

  var machine1 = Gymmachine(
    id: 1,
    primeId: 1,
    name: "Treadmill",
    quantity: 5,
    price: 1200,
    dateAdded: DateTime(2025, 5, 13),
    state: State.avilable,
  );
  system.addMachine(machine1);
  machine1.displayInfo();
}
