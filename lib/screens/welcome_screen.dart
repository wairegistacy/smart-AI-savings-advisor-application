import 'package:flutter/material.dart'; //brings in the built-in UI toolkit
// import 'dashboard_screen.dart'; //links to next screen

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  
  @override
  //build(): tells Flutter how to draw the screen
  //context: gives access to things like navigation, themes
  Widget build(BuildContext context) {
    //Scaffold: gives your screen structure - like a skeleton: app bar, body, floating buttons, etc
    return Scaffold(
      backgroundColor: Colors.white,
      //ensure UI doesnt get blocked by phone notches or status bars
      body: SafeArea(
        //put everything inside the screen at the center
        child: Center(
          // add spacing of 24 pixels around content
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            // column arranges widgets vertically
            // mainAxisAlignment centers all widgets along the vertical axis
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // display a savings icon from Flutter's icon library
              children: [
                //App Logo
                Icon(Icons.savings, size: 100, color: Colors.green),
                    
                         
                const SizedBox(height: 40),
                // App name
                const Text(
                  'Smart Savings💰',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                // subtitle underneath the main title
                const SizedBox(height: 16),
                const Text(
                  'Your AI-powered savings buddy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: (){
                    // when clicked, navigates to DashboardScreen
                    Navigator.pushNamed(
                      context, '/onboarding'
                      // MaterialPageRoute is Flutter's way to move to a new screen with a nice animation
                      
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 18),
                  ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
    //
    // throw UnimplementedError();
  }
}
