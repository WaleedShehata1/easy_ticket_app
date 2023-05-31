import 'package:flutter/material.dart';

class TeamMembersScreen extends StatefulWidget {
  @override
  _TeamMembersScreenState createState() => _TeamMembersScreenState();
}

class _TeamMembersScreenState extends State<TeamMembersScreen> {
  List<bool> _isExpandedList = [];

  @override
  void initState() {
    super.initState();
    _isExpandedList = List.generate(
      designTeamMembers.length,
      (index) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF48265),
        title: Text('Team Members'),
      ),
      body: ListView.builder(
        itemCount: designTeamMembers.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _isExpandedList[index] = !_isExpandedList[index];
              });
            },
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                color: Color(0xffF48265),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          designTeamMembers[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      if (_isExpandedList[index])
                        ListTile(
                          title: Text(
                            designTeamMembers[index].role,
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            designTeamMembers[index].description,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DesignTeamMember {
  final String name;
  final String role;
  final String description;

  DesignTeamMember({
    required this.name,
    required this.role,
    required this.description,
  });
}

final List<DesignTeamMember> designTeamMembers = [
  DesignTeamMember(
    name: 'Abdulhamed Ashry',
    role: 'Flutter Dev',
    description: '....',
  ),
  DesignTeamMember(
    name: 'Waleed Muhammad',
    role: 'Flutter Dev',
    description: '...',
  ),
  DesignTeamMember(
    name: 'Abdulrahman ',
    role: 'Back-end dev',
    description: '...',
  ),
  DesignTeamMember(
    name: 'Omar Khaled',
    role: 'Back-end dev',
    description: '...',
  ),
  // Add more team members here
];
