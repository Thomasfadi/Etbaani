
import 'package:dio/dio.dart';
import 'package:etbaany/appserveces/appservece.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
    static Future<void> fetchClips() async {
    final dio = Dio();
    
    try {
      // Make the GET request with headers
      Response response = await dio.get(
        '${ApiService.ClipsBaseUrl}/videos', // Adjust this endpoint as needed
        options: Options(headers: ApiService.Headers),
      );
      
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = response.data;
        
        // Extract only the requested fields
        int id = jsonData['id'];
        String videoUrl = jsonData['video'];
        String preview = jsonData['preview'];
        String description = jsonData['description'];
        
        // Use the selected attributes
        print('ID: $id');
        print('Video URL: $videoUrl');
        print('Preview URL: $preview');
        print('Description: $description');
      } else {
        print('Request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }
  
  @override
  Widget build(Object context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
