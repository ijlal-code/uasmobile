class Contact {
  final String id;
  final String name;
  final String phone;
  final String email;

  Contact({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'].toString(),
      name: json['name'],
      phone: json['phone'],
      email: json['email'] ?? '',
    );
  }
}