enum TypeOfBooking { one_month, three_Month, six_Month, one_Year }

class Member {
  int id;
  String first_name;
  String last_name;
  double priceofBooking = 0;
  double totalPaid;
  double debtAmount = 0;
  DateTime date_of_start;
  DateTime date_of_end = DateTime(0);
  TypeOfBooking typeOfBooking = TypeOfBooking.one_month;
  List <String> typeOfBookingWithSpace =["one month", "three month","six month","one year",];
  String typeOfBookingWithSpace1= "";

  Member({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.totalPaid,
    //required this.typeOfBooking,
    required this.date_of_start,
  });


  void checkTypeOfBooking(TypeOfBooking typeOfBooking)
  {
    
    if(typeOfBooking == TypeOfBooking.one_month)
    {
    priceofBooking = 20;
    debtAmount = priceofBooking - totalPaid;
    typeOfBookingWithSpace1 = typeOfBookingWithSpace[0];
    date_of_end = DateTime(date_of_start.year,date_of_start.month +1, date_of_start.day);
    }if(typeOfBooking == TypeOfBooking.three_Month)
    {
    priceofBooking = 40;
    debtAmount = priceofBooking - totalPaid;
    typeOfBookingWithSpace1 = typeOfBookingWithSpace[1];
    date_of_end = DateTime(date_of_start.year,date_of_start.month +3, date_of_start.day);
    }if(typeOfBooking == TypeOfBooking.six_Month)
    {
    priceofBooking = 80;
    debtAmount = priceofBooking - totalPaid;
    typeOfBookingWithSpace1 = typeOfBookingWithSpace[2];
    date_of_end = DateTime(date_of_start.year,date_of_start.month +6, date_of_start.day);

    }if(typeOfBooking == TypeOfBooking.one_Year)
    {
    priceofBooking = 120;
    debtAmount = priceofBooking - totalPaid;
    typeOfBookingWithSpace1 = typeOfBookingWithSpace[3];
    date_of_end = DateTime(date_of_start.year +1,date_of_start.month , date_of_start.day);

    }


  }


  void displayInfo() {
    print("-------display one member info-------");
    print("id: ${id}");
    print("first_name: ${first_name}");
    print("last_name: ${last_name}");
    print("totalPaid: ${totalPaid} \$");
    print("priceofBooking: ${priceofBooking} \$");
    print("debtAmount: ${debtAmount} \$");
    print("type Of Booking: ${typeOfBookingWithSpace1}");
    print("date_of_start: ${date_of_start}");
    print("date_of_end: ${date_of_end}");
    print("--------------");
    
  }
}
