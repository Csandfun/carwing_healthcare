import 'package:eventhub/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateEventView extends StatefulWidget {
  @override
  _CreateEventViewState createState() => _CreateEventViewState();
}

class _CreateEventViewState extends State<CreateEventView> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  String? _selectedGender;
  String? _selectedRegistrationStatus;
  String? _selectedEventType; // Added property for event type
  TextEditingController _descriptionController = TextEditingController();

  Future<void> _selectDateAndTime(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        setState(() {
          _selectedDate = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Event',
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
      body: SingleChildScrollView(
        child: Material(
          color: Colors.white54,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                  child: Text(
                    "Event Name",
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
                  "Event Date and Time",
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
                      InkWell(
                        onTap: () {
                          _selectDateAndTime(context);
                        },
                        child: InputDecorator(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          child: Text(
                            _selectedDate != null
                                ? "${_selectedDate!.toLocal()}".split(' ')[0] +
                                    " ${_selectedDate!.toLocal().hour}:${_selectedDate!.toLocal().minute}"
                                : 'Select Date and Time',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                // SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                  child: Text(
                    "Location",
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
                          "Enter Location",
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
                    "Description",
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
                    height: 120, // Adjust the height as needed
                    child: TextField(
                      controller: _descriptionController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter description here...',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                  child: Text(
                    "Organizer",
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
                          "Enter organizer Name",
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
                    "Event Type",
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
                          value: _selectedEventType,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedEventType = newValue;
                            });
                          },
                          items: <String>[
                            'Venue',
                            'Online',
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
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                  child: Text(
                    "Event Status",
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
                          value: _selectedEventType,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedEventType = newValue;
                            });
                          },
                          items: <String>[
                            'Upcoming',
                            'Ongoing',
                            'Completed',
                            'Continued'
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
                SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                child: Text(
                  "Registration Deadline",
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
                      InkWell(
                        onTap: () {
                          _selectDateAndTime(context);
                        },
                        child: InputDecorator(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          child: Text(
                            _selectedDate != null
                                ? "${_selectedDate!.toLocal()}".split(' ')[0] +
                                    " ${_selectedDate!.toLocal().hour}:${_selectedDate!.toLocal().minute}"
                                : 'Registration Deadline',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                  child: Text(
                    "Contact Info",
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
                          "Enter contact details",
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
                    "Tickets",
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
                          value: _selectedEventType,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedEventType = newValue;
                            });
                          },
                          items: <String>[
                            'Paid',
                            'Free',
                            'Both Paid and Free',
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
                 SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 15, 0, 8),
                  child: Text(
                    "Attendee",
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
                          "Enter max no of attendee",
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
                    "Feedback",
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
                    height: 120, // Adjust the height as needed
                    child: TextField(
                      controller: _descriptionController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Feedback here...',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.DASHBOARD); // Handle button tap
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
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 120),
                        child: Text(
                          "Create Event",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CreateEventView(),
  ));
}
