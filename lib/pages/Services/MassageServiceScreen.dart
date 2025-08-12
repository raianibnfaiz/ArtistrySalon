import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ServiceDetailScreen.dart';

class MassageServiceScreen extends StatelessWidget {
  const MassageServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ServiceDetailScreen(
      serviceName: 'Therapeutic Massage',
      serviceIcon: Icons.spa,
      serviceColor: Colors.purple,
      description: 'Relax and rejuvenate with our professional massage therapy services. Our licensed massage therapists use various techniques to relieve tension, reduce stress, and promote overall wellness. Each session is customized to your specific needs and preferences.',
      packages: [
        ServicePackage(
          name: 'Relaxation Massage',
          price: 50,
          duration: 45,
          description: 'Gentle, soothing massage designed to promote relaxation and stress relief using light to medium pressure.',
          includes: ['Consultation', 'Essential Oils', 'Full Body Massage', 'Relaxing Music', 'Hot Towels'],
        ),
        ServicePackage(
          name: 'Deep Tissue Massage',
          price: 80,
          duration: 60,
          description: 'Intensive massage targeting deep muscle layers to relieve chronic tension and muscle knots.',
          includes: ['Assessment', 'Targeted Treatment', 'Deep Pressure Techniques', 'Muscle Relief', 'Stretching', 'Heat Therapy'],
        ),
        ServicePackage(
          name: 'Full Body Spa Massage',
          price: 120,
          duration: 90,
          description: 'Luxurious full-body massage experience with aromatherapy, hot stones, and premium oils for ultimate relaxation.',
          includes: ['Extended Consultation', 'Aromatherapy', 'Hot Stone Treatment', 'Premium Oils', 'Full Body Massage', 'Scalp Massage', 'Relaxation Time'],
        ),
      ],
      facilities: [
        'Private Treatment Rooms',
        'Professional Massage Tables',
        'Premium Massage Oils',
        'Hot Stone Equipment',
        'Aromatherapy Diffusers',
        'Relaxing Music System',
        'Temperature Control',
        'Fresh Linens',
        'Hot Towel Warmers',
        'Post-massage Relaxation Area',
      ],
    );
  }
}
