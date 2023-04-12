import 'package:flutter/material.dart';
import 'package:google_map_place_picker/google_map_place_picker.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Map Location Picker'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Pick a location"),
          onPressed: () async {
            LocationResult? result =
                await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MapLocationPicker(
                          "ADD-API-KEY-HERE",
                          languageCode: "en_us",
                          autoCompleteRegion: "in",
                          autoCompleteComponents: "country:in",
                          autoTheme: true,
                        )));

            // Handle the result in your way
            print(result?.formattedAddress);
          },
        ),
      ),
    );
  }
}
