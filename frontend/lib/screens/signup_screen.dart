import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  // 🔗 CHANGE THIS TO YOUR RENDER URL
  final String baseUrl =
      "https://expenses-2-prjo.onrender.com";

  Future<void> signupUser() async {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      showMessage("All fields are required");
      return;
    }

    setState(() => isLoading = true);

    try {
      final response = await http.post(
        Uri.parse("$baseUrl/api/auth/signup"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "name": nameController.text.trim(),
          "email": emailController.text.trim(),
          "password": passwordController.text.trim(),
        }),
      );

      final data = jsonDecode(response.body);

      if (response.statusCode == 201) {
        showMessage("Signup successful 🎉");
        Navigator.pop(context); // go back to login
      } else {
        showMessage(data["message"] ?? "Signup failed");
      }
    } catch (e) {
      showMessage("Something went wrong");
    } finally {
      setState(() => isLoading = false);
    }
  }

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30),

              Center(
                child: Image.asset(
                  'assets/image1.png',
                  height: 120,
                ),
              ),

              const SizedBox(height: 30),

              Text(
                "Get On Board!",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 8),

              Text(
                "Create your profile to start your journey.",
                style: GoogleFonts.poppins(fontSize: 14),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              // Full Name
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_outline),
                  hintText: "Full Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined),
                  hintText: "E-Mail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Password
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Signup Button
              ElevatedButton(
                onPressed: isLoading ? null : signupUser,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : const Text(
                        "SIGNUP",
                        style: TextStyle(color: Colors.white),
                      ),
              ),

              const SizedBox(height: 20),

              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an Account? ",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "LOGIN",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        )
                      ],
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
