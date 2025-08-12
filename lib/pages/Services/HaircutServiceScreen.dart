import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ServiceDetailScreen.dart';

class HaircutServiceScreen extends StatelessWidget {
  const HaircutServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ServiceDetailScreen(
      serviceName: 'Professional Haircut',
      serviceIcon: Icons.content_cut,
      serviceColor: Colors.blue,
      description: 'Transform your look with our expert haircut services. Our skilled stylists will work with you to create the perfect cut that complements your face shape, lifestyle, and personal style. We use premium tools and techniques to ensure precision and satisfaction.',
      packages: [
        ServicePackage(
          name: 'Basic Cut',
          price: 25,
          duration: 30,
          description: 'A simple, clean haircut with basic styling. Perfect for maintaining your current look.',
          includes: ['Consultation', 'Wash & Cut', 'Basic Styling'],
        ),
        ServicePackage(
          name: 'Style & Cut',
          price: 45,
          duration: 60,
          description: 'Complete haircut with professional styling and finish. Includes consultation and hair treatment.',
          includes: ['Consultation', 'Wash & Cut', 'Deep Conditioning', 'Professional Styling', 'Product Application'],
        ),
        ServicePackage(
          name: 'Premium Experience',
          price: 80,
          duration: 90,
          description: 'Luxury haircut experience with scalp massage, premium products, and detailed styling session.',
          includes: ['Extended Consultation', 'Scalp Massage', 'Premium Wash & Cut', 'Hair Treatment', 'Professional Styling', 'Take-home Products'],
        ),
      ],
      facilities: [
        'Premium Hair Products',
        'Professional Scissors',
        'Hair Washing Station',
        'Styling Tools',
        'Private Stations',
        'Comfortable Seating',
        'Mirror Lighting',
        'Hair Dryers',
        'Product Consultation',
        'After-care Advice',
      ],
    );
  }
}