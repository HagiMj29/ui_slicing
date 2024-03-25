import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/fiza/bg.png',
            fit: BoxFit.cover,
          ),
          _buildHeader(),
          Positioned(
            top: 80,
            left: 20,
            right: 0,
            bottom: 0,
            child: ListView(
              children: <Widget>[
                _buildSectionTitle('Account Settings'),
                _buildListItem(context, 'images/fiza/lock.png', 'Change Password', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'images/fiza/bell.png', 'Notifications', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'images/fiza/circle.png', 'Statistics', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'images/fiza/groupp.png', 'About us', trailingIcon: Icons.navigate_next),
                SizedBox(height: 30),
                _buildSectionTitle('More Options'),
                _buildToggleListItem(context, 'Text Messages'),
                _buildToggleListItem(context, 'Phone Calls'),
                _buildListItem(context, null, 'Languages', trailingText: 'English', trailingIcon: Icons.navigate_next),
                _buildListItem(context, null, 'Currency', trailingText: '\$-USD', trailingIcon: Icons.navigate_next),
                _buildListItem(context, null, 'Linked accounts', trailingText: 'Facebook, Google',trailingIcon: Icons.navigate_next),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildHeader() {
  return Positioned(
    top: 20,
    left: 20,
    right: 0,
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: GestureDetector(
            // Add onTap function here if needed
            child: Image.asset(
              'images/fiza/back.png',
              width: 20,
              height: 20,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          'Enable Location Services',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Rubik',
          ),
        ),
      ],
    ),
  );
}

Widget _buildSectionTitle(String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Rubik',
          color: Color.fromRGBO(103, 114, 148, 1),
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5.0),
    ],
  );
}

Widget _buildListItem(BuildContext context, String? leadingImage, String title, {String trailingText = '', IconData? trailingIcon}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Color.fromARGB(241, 235, 223, 223)),
      ),
    ),
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0), 
      leading: leadingImage != null ? Image.asset(leadingImage) : null,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Rubik',
          color: Color.fromRGBO(103, 114, 148, 1)
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailingText.isNotEmpty) 
            Text(
              trailingText,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Rubik',
                color: Color.fromRGBO(103, 114, 148, 1)
              ),
            ),
          if (trailingIcon != null && trailingText.isNotEmpty) SizedBox(width: 8),
          if (trailingIcon != null) Icon(trailingIcon),
        ],
      ),
      onTap: () {
        // Action when list item is tapped
      },
    ),
  );
}




class ToggleButtonWidget extends StatefulWidget {
  final String title;

  ToggleButtonWidget({required this.title});

  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromARGB(241, 235, 223, 223)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Rubik',
              color: Color.fromRGBO(103, 114, 148, 1),
            ),
          ),
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeColor: Color.fromARGB(255, 43, 134, 78),
            inactiveTrackColor: Color.fromARGB(255, 187, 185, 185),
            activeTrackColor: Color.fromARGB(255, 30, 208, 119),
            inactiveThumbColor: const Color.fromARGB(255, 241, 239, 239),
            thumbColor: MaterialStateProperty.all(Colors.white),
          ),
        ],
      ),
    );
  }
}

Widget _buildToggleListItem(BuildContext context, String title) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 0),
    margin: EdgeInsets.symmetric(vertical: 0), // Tambahkan margin vertikal di sini
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Color.fromARGB(241, 235, 223, 223)),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Rubik',
              color: Color.fromRGBO(103, 114, 148, 1),
            ),
          ),
        ),
        ToggleButtonWidget(title: ""),
      ],
    ),
  );
}

