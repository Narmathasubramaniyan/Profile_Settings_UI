import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsUi extends StatefulWidget {
  const SettingsUi({super.key});

  @override
  State<SettingsUi> createState() => _SettingsUiState();
}

class _SettingsUiState extends State<SettingsUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.green,
            )),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 25, right: 16),
        child: ListView(
          children: [
            const Text(
              "Settings",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            buildAccountOptionRow("Change Password"),
            buildAccountOptionRow("Content Settings"),
            buildAccountOptionRow("Social"),
            buildAccountOptionRow("Language"),
            buildAccountOptionRow("Privacy and Security"),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                Icon(
                  Icons.volume_up,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Notiffication",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("New For You", true),
            buildNotificationOptionRow("Account Activity", true),
            buildNotificationOptionRow("Opportunity", false),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  side: const BorderSide(color: Colors.black),
                ),
                onPressed: () {},
                child: const Text(
                  "SIGN OUT",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    letterSpacing: 2.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String tittle, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            value: isActive,
            onChanged: (bool val) {},
          ),
        )
      ],
    );
  }

  Widget buildAccountOptionRow(
    String tittle,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tittle,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
