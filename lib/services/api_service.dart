import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/contact_model.dart';

class ApiService {
  // GANTI IP INI DENGAN IP LAPTOP ANDA!
  // Contoh: "http://192.168.1.10/api_contacts";
  static const String baseUrl = "http://192.168.1.10/api_contacts";

  Future<List<Contact>> getContacts() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/read.php'));
      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        return jsonResponse.map((data) => Contact.fromJson(data)).toList();
      } else {
        throw Exception('Gagal memuat data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<bool> addContact(String name, String phone, String email) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/create.php'),
        body: {
          'name': name,
          'phone': phone,
          'email': email,
        },
      );
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateContact(String id, String name, String phone, String email) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/update.php'),
        body: {
          'id': id,
          'name': name,
          'phone': phone,
          'email': email,
        },
      );
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteContact(String id) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/delete.php'),
        body: {'id': id},
      );
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}