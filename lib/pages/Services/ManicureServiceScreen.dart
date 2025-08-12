import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ServiceDetailScreen.dart';

class ManicureServiceScreen extends StatelessWidget {
  const ManicureServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ServiceDetailScreen(
      serviceName: 'Professional Manicure',
      serviceIcon: Icons.back_hand,
      serviceColor: Colors.green,
      description: 'Pamper your hands with our professional manicure services. From basic nail care to elaborate nail art, we offer comprehensive hand treatments that will leave your nails looking beautiful and healthy. All tools are sanitized and we use high-quality, long-lasting nail products.',
      packages: [
        ServicePackage(
          name: 'Classic Manicure',
          price: 15,
          duration: 30,
          description: 'Essential nail care with shaping, cuticle treatment, and polish application.',
          includes: ['Nail Shaping', 'Cuticle Care', 'Hand Massage', 'Base & Top Coat', 'Polish Application'],
        ),
        ServicePackage(
          name: 'Gel Manicure',
          price: 30,
          duration: 45,
          description: 'Long-lasting gel polish manicure with UV curing for chip-resistant finish.',
          includes: ['Nail Prep', 'Cuticle Treatment', 'Gel Polish', 'UV Curing', 'Hand Moisturizing', '2-Week Guarantee'],
        ),
        ServicePackage(
          name: 'Luxury Spa Manicure',
          price: 45,
          duration: 60,
          description: 'Complete hand spa experience with exfoliation, mask treatment, and premium polish.',
          includes: ['Hand Soak', 'Exfoliation Scrub', 'Hand Mask', 'Extended Massage', 'Cuticle Oil', 'Premium Polish', 'Paraffin Treatment'],
        ),
      ],
      facilities: [
        'UV/LED Nail Lamps',
        'Sanitized Tools',
        'Premium Nail Polish',
        'Nail Art Supplies',
        'Hand Soak Bowls',
        'Massage Oils',
        'Comfortable Seating',
        'Individual Tool Sets',
        'Cuticle Care Products',
        'Hand Moisturizers',
      ],
    );
  }
}