import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Services/FacialServiceScreen.dart';
import 'Services/HaircutServiceScreen.dart';
import 'Services/ManicureServiceScreen.dart';
import 'Services/MassageServiceScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning,',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      const Text(
                        'Raian Ibn Faiz',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.pink[100],
                    child: const Icon(Icons.person, color: Colors.pink),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search, color: Colors.grey),
                    hintText: 'Search services...',
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Quick Book Section
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.pink, Colors.pinkAccent],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Book Your Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            'Appointment',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.pink,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text('Book Now'),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.content_cut,
                      size: 80,
                      color: Colors.white24,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Popular Services with Navigation
              const Text(
                'Popular Services',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildServiceCard(
                      context,
                      'Haircut',
                      Icons.content_cut,
                      Colors.blue,
                          () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HaircutServiceScreen()),
                      ),
                    ),
                    _buildServiceCard(
                      context,
                      'Manicure',
                      Icons.back_hand,
                      Colors.green,
                          () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ManicureServiceScreen()),
                      ),
                    ),
                    _buildServiceCard(
                      context,
                      'Facial',
                      Icons.face,
                      Colors.orange,
                          () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FacialServiceScreen()),
                      ),
                    ),
                    _buildServiceCard(
                      context,
                      'Massage',
                      Icons.spa,
                      Colors.purple,
                          () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MassageServiceScreen()),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Upcoming Appointments
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Upcoming Appointments',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              _buildAppointmentCard(
                'Haircut & Style',
                'Tomorrow, 2:00 PM',
                'Maria Rodriguez',
                Icons.content_cut,
              ),

              const SizedBox(height: 15),

              _buildAppointmentCard(
                'Full Body Massage',
                'Friday, 10:00 AM',
                'Lisa Chen',
                Icons.spa,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceCard(BuildContext context, String title, IconData icon, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: color.withOpacity(0.2),
              child: Icon(icon, color: color),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppointmentCard(String service, String time, String stylist, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.pink.withOpacity(0.2),
            child: Icon(icon, color: Colors.pink),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  service,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
                Text(
                  'with $stylist',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
        ],
      ),
    );
  }
}