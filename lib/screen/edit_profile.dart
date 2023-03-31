import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController nationalIdController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController professionController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController healthStatusController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF48265),
        title: Text('Edit Account'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        labelText: 'First Name',
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      controller: lastNameController,
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                maxLength: 14,
                keyboardType: TextInputType.number,
                controller: nationalIdController,
                decoration: InputDecoration(
                  labelText: 'National ID',
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      controller: birthDateController,
                      decoration: InputDecoration(
                        labelText: 'Birth Date',
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      controller: professionController,
                      decoration: InputDecoration(
                        labelText: 'Profession',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.phone,
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone',
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: healthStatusController,
                      decoration: InputDecoration(
                        labelText: 'Health Status',
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      controller: genderController,
                      decoration: InputDecoration(
                        labelText: 'Gender',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  // TODO: implement
                },
                child: Text('Change Password'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffF48265),
                ),
              ),
              SizedBox(height: 50.0),
              SizedBox(
                width: double.infinity,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 200.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Saved');
                    },
                    child: Text('Save'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      backgroundColor: Color(0xffF48265),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
