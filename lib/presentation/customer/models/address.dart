class Address {
  final String city;
  final String street;

  Address({
    required this.city,
    required this.street
  }) {

    if (city.trim().isEmpty) {
      throw ArgumentError('Address: "city" cannot be empty.');
    }
    if (street.trim().isEmpty) {
      throw ArgumentError('Address: "street" cannot be empty.');
    }

  }
}