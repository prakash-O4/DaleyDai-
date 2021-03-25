import 'package:flutter/material.dart';

class MasterTextField extends StatelessWidget {
  final String hintText;
  MasterTextField({this.hintText});
  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(240, 242, 244, 1),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(13),
        ),
        contentPadding: EdgeInsets.all(10),
        focusColor: Colors.transparent,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          fontFamily: 'OpenSans',
        ),
        suffixIcon: Icon(
          Icons.search,
          color: Colors.black,
          size: 19,
        ),
      ),
    );
  }
}

class MasterComboBox extends StatefulWidget {
  @override
  _MasterComboBoxState createState() => _MasterComboBoxState();
}

class _MasterComboBoxState extends State<MasterComboBox> {
  String mainValue;

  final List<String> _menuItem = ['One', 'two', 'three', 'four', 'five', 'six'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: _menuItem
          .map(
            (valueItem) => DropdownMenuItem(
              child: Text(
                valueItem,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          )
          .toList(),
      onChanged: (newValue) {
        setState(() {
          mainValue = newValue;
          print('$mainValue');
        });
      },
      icon: Icon(
        Icons.arrow_drop_down,
        size: 20,
      ),
      value: mainValue,
      hint: Text(
        'Select Feet',
        style: TextStyle(
          fontSize: 10,
        ),
      ),
    );
  }
}
