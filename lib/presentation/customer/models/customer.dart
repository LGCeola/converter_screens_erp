class Customer {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String cpf;

  Customer({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.cpf
  }) {

    if (id <= 0) {
      throw ArgumentError('Customer: "id" cannot be negative.');
    }
    if (name.trim().isEmpty) {
      throw ArgumentError('Customer: "name" is required and cannot be empty.');
    }
    if (email.trim().isEmpty) {
      throw ArgumentError('Customer: "email" is required and cannot be empty.');
    }
    if (phone.trim().isEmpty) {
      throw ArgumentError('Customer: "phone" is required and cannot be empty.');
    }
    if (cpf.trim().isEmpty) {
      throw ArgumentError('Customer: "cpf" is required and cannot be empty.');
    }


  }
}