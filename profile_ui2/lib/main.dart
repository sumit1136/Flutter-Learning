import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(
          children: [
            const Positioned(
              top: 50,
              left: 20,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            const Positioned(
              top: 50,
              right: 20,
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 50, top: 20, right: 50, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'John Rambo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'john@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      height: 50,
                      width: 500,
                      child: const Center(
                        child: Text(
                          'Upgrade to Premium',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileMenuItem(
                      arrowShown: true,
                      icon: Icons.shopping_bag_outlined,
                      text: 'Your order history',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileMenuItem(
                      arrowShown: true,
                      icon: Icons.help_center_outlined,
                      text: 'Help and Support',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileMenuItem(
                      arrowShown: true,
                      icon: Icons.card_giftcard_outlined,
                      text: 'Load gift voucher',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileMenuItem(
                      arrowShown: false,
                      icon: Icons.logout_outlined,
                      text: 'Logout',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem(
      {required this.text, required this.icon, required this.arrowShown});
  final String text;
  final IconData icon;
  final bool arrowShown;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      height: 50,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(
                  icon,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          arrowShown
              ? const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 35,
                    color: Colors.white,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
