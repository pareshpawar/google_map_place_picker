import 'package:flutter/material.dart';

class SelectPlaceAction extends StatelessWidget {
  final String locationName;
  final String tapToSelectActionText;
  final VoidCallback onTap;

  SelectPlaceAction(this.locationName, this.onTap, this.tapToSelectActionText);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(locationName, style: TextStyle(fontSize: 16)),
                    Text(this.tapToSelectActionText,
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.indigo,
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
