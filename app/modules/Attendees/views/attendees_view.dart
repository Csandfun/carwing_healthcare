import 'package:eventhub/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/attendees_controller.dart';

class AttendeesView extends GetView<AttendeesController> {
  // const AttendeesView({Key? key}) : super(key: key);

  DateTime? _selectedDate;
  String? _selectedGender;
  String? _selectedRegistrationStatus;

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Attendee',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF8A2387),
                Color(0xFFE94057),
                Color(0xFFE94057),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: Material(
        color: Colors.white54,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                child: Text(
                  "Full Name",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIconColor: Colors.grey[300],
                      border: OutlineInputBorder(),
                      label: Text(
                        "Enter Name",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                child: Text(
                  "Email Address",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIconColor: Colors.grey[300],
                      border: OutlineInputBorder(),
                      label: Text(
                        "Enter Email",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                child: Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIconColor: Colors.grey[300],
                      border: OutlineInputBorder(),
                      label: Text(
                        "Enter Phone No",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                child: Text(
                  "Address",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIconColor: Colors.grey[300],
                      border: OutlineInputBorder(),
                      label: Text(
                        "Enter Address",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                child: Text(
                  "Company",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIconColor: Colors.grey[300],
                      border: OutlineInputBorder(),
                      label: Text(
                        "Enter Company Name",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                child: Text(
                  "Job Title",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIconColor: Colors.grey[300],
                      border: OutlineInputBorder(),
                      label: Text(
                        "Enter Job Title",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                child: Text(
                  "Date of Birth",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 40,
                  child: InkWell(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Select Date of Birth',
                        border: OutlineInputBorder(),
                      ),
                      child: Text(
                        _selectedDate != null
                            ? "${_selectedDate!.toLocal()}".split(' ')[0]
                            : 'Select Date',
                      ),
                    ),
                  ),
                ),
              ),
              
              // Gender dropdown field
             Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                  child: Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: 64,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButtonFormField<String>(
                          value: _selectedGender,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedGender= newValue;
                            });
                          },
                          items: <String>[
                            'Male',
                            'Female',
                            'Other',
                            ''
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              // Registration Status dropdown field
              SizedBox(height: 5),
              Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                  child: Text(
                    "Register Status",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: 64,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButtonFormField<String>(
                          value: _selectedRegistrationStatus,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedRegistrationStatus = newValue;
                            });
                          },
                          items: <String>[
                            'Registered',
                            'Not Registered',
                            '',
                            ''
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              SizedBox(height: 20,),
             Center(
  child: Material(
    borderRadius: BorderRadius.circular(10),
    child: InkWell(
      onTap: () {
        // Get.toNamed(Routes.DASHBOARD);
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF8A2387),
              Color(0xFFE94057),
              Color(0xFFE94057),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 140),
        child: Text(
          "Submit",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
    ),
  ),
),

             SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
  
  void setState(Null Function() param0) {}
}

void main() {
  runApp(MaterialApp(
    home: AttendeesView(),
  ));
}
