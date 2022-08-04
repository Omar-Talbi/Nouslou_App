import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  DropDown() : super();
  @override
  DropDownState createState() => DropDownState();
}

class Optionn {
  int id;
  String name;

  Optionn(this.id, this.name);

  static List<Optionn> getCompanies() {
    return <Optionn>[
      Optionn(2, ''),
      Optionn(1, '  Male  '),
      Optionn(2, '  Female  '),
    ];
  }
}

class DropDownState extends State<DropDown> {
  //
  List<Optionn> _companies = Optionn.getCompanies();
  List<DropdownMenuItem<Optionn>> _dropdownMenuItems;
  Optionn _selectedCompany;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedCompany = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Optionn>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Optionn>> items = List();
    for (Optionn company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Optionn selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              leading: Text("                   Select your Gender :"),
              title: DropdownButton(
                icon: Icon(Icons.person),
                iconEnabledColor: Colors.green,
                value: _selectedCompany,
                items: _dropdownMenuItems,
                onChanged: onChangeDropdownItem,
              ),
            )
          ],
        ),
      ),
    );
  }
}
