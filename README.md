
# Gym Management System – `main.dart` Documentation

This documentation provides an overview of the `main.dart` file, which serves as the main entry point for the Gym Management System. It demonstrates how to create and manage **members**, **employees**, and **gym machines** within the system.

---

## 📌 Overview

The `main.dart` file illustrates the creation and usage of class instances such as `Member`, `Employee`, and `GymMachine`. It showcases how to:

* Add members, employees, and machines to the system.
* Check booking types for members.
* Check job types for employees.
* Display and manage gym machine information.

---

## 🧠 Main Function

The `main()` function is the entry point of the Dart application. It performs several core tasks:

* Creates an instance of the `System`.
* Instantiates and adds members and employees.
* Checks booking types and job roles.
* Instantiates and adds gym machines.
* Displays relevant data from the system.

---

## 🏛️ System Class

Defined in `system/System.dart`, the `System` class handles:

* Managing gym members.
* Managing employees.
* Managing gym machines.

---

## 🧍‍♂️ Member Class

Defined in `models/Member.dart`, each `Member` object includes:

* `id`: Unique identifier.
* `first_name`, `last_name`: Personal details.
* `totalPaid`: Amount paid by the member.
* `date_of_start`: Membership start date.
* `date_of_end`: Automatically calculated based on booking type.
* `typeOfBooking`: Booking duration (e.g., one month, six months).

### Example:

```dart
var mem1 = Member(
  id: 1,
  first_name: "John",
  last_name: "Doe",
  totalPaid: 50,
  typeOfBooking: TypeOfBooking.six_Month,
  date_of_start: DateTime(2025, 01, 01),
  date_of_end: DateTime(2025, 07, 01),
);

system.addMembers(mem1);
mem1.checkTypeOfBooking(TypeOfBooking.six_Month);
```

---

## 👨‍🔧 Employee Class

Defined in `models/Employee.dart`, each `Employee` includes:

* `id`: Unique identifier.
* `first_name`, `last_name`: Personal details.
* `typeOfJob`: Job title (e.g., cleaner, captain).

### Example:

```dart
var emp1 = Employee(
  id: 1,
  first_name: "Alice",
  last_name: "Smith",
  typeOfJob: JobType.cleaner,
);

system.addEmployee(emp1);
emp1.checkTypeOfJob(JobType.cleaner);
```

---

## 🏋️ GymMachine Class

Defined in `models/GymMachine.dart`, each `GymMachine` contains:

* `id`: Unique identifier.
* `primeId`: Shared type identifier.
* `name`: Machine name (e.g., Treadmill).
* `quantity`: Count of machines of this type.
* `price`: Cost per machine.
* `dateAdded`: Date machine was added to gym.
* `state`: Current machine state (e.g., available, in use).

### Example:

```dart
var machine1 = GymMachine(
  id: 1,
  primeId: 1,
  name: "Treadmill",
  quantity: 5,
  price: 1200,
  dateAdded: DateTime(2025, 5, 13),
  state: State.available,
);

system.addMachine(machine1);
```

---

## ✅ Conclusion

The `main.dart` file is the foundation of the Gym Management System. It integrates the entire structure by demonstrating how to:

* Manage gym members.
* Assign roles to employees.
* Track gym equipment.

This example provides a solid starting point for anyone interested in Dart or object-oriented design for management systems.

