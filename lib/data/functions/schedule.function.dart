import 'dart:convert';

import 'package:formulavision/data/models/jolpica/schedule.model.dart';
import 'package:http/http.dart' as http;

Future<F1ScheduleResponse> fetchF1Schedule({
  String year = '2025',
  bool forceRefresh = false,
}) async {
  try {
    final response = await http.get(
      Uri.parse('https://api.jolpi.ca/ergast/f1/$year/races/'),
    );
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      // Save the new data to cache
      /*
      await _safeSetString(cacheKey, response.body);
      await _safeSetInt(timestampKey, DateTime
          .now()
          .millisecondsSinceEpoch);
      */
      return F1ScheduleResponse.fromJson(jsonData);
    } else {
      throw Exception(
          'Failed to load Schedule data: HTTP ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Failed to fetch Schedule data: $e');
  }
}
