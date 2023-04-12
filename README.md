## Sample Usage

Import the package into your code

```dart
import 'package:place_picker/place_picker.dart';
```

Create a method like below, A `LocationResult` will be returned
with the name and lat/lng of the selected place. You can then handle the result in any way you want.
Pass in an optional `LatLng displayLocation` to display that location instead. This is useful when you want the map
to display the previously selected location.

```dart
void showPlacePicker() async {
    LocationResult result = await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MapLocationPicker(
                          "ADD-API-KEY-HERE",
                          languageCode: "en_us",
                          autoCompleteRegion: "in",
                          autoCompleteComponents: "country:in",
                          autoTheme: true,
                        )));
}
```
