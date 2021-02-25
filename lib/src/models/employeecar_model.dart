import 'dart:convert';

List<Employee> employeeFromJson(String str) =>
    List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
  int id;
  String email;
  String firstName;
  String lastName;
  String city;
  String car;

  Employee({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.city,
    this.car,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
      id: json["id"],
      email: json["email"],
      firstName: json["firstName"],
      lastName: json["lastName"],
      city: json["city"],
      car: json["car"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "firstName": firstName,
        "lastName": lastName,
        "city": city,
        "car": car,
      };
}
