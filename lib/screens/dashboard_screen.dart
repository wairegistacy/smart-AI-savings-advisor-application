import 'package:flutter/material.dart'; //imports the flutter UI tools

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // Add an app bar at the top
      appBar: AppBar(title: const Text('Dashboard')),
      // Displays a welcome message at the center of the screen
      body: const Center(
        child: Text('Welcome to the Smart AI Savings Dashboard!'),
      ),
    );
  }
}