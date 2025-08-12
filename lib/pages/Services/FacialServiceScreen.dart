import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ServiceDetailScreen.dart';

class FacialServiceScreen extends StatelessWidget {
  const FacialServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ServiceDetailScreen(
      serviceName: 'Rejuvenating Facial',
      serviceIcon: Icons.face,
      serviceColor: Colors.orange,
      description: 'Refresh and revitalize your skin with our professional facial treatments. Our experienced estheticians will assess your skin type and customize treatments to address your specific concerns, leaving your skin glowing, hydrated, and healthy.',
      packages: [
        ServicePackage(
          name: 'Express Facial',
          price: 30,
          duration: 30,
          description: 'Quick refreshing facial perfect for busy schedules. Includes cleansing, exfoliation, and moisturizing.',
          includes: ['Skin Analysis', 'Deep Cleansing', 'Gentle Exfoliation', 'Moisturizing', 'Sun Protection'],
        ),
        ServicePackage(
          name: 'Classic Facial',
          price: 60,
          duration: 60,
          description: 'Complete facial treatment with steaming, extraction, and customized mask for your skin type.',
          includes: ['Consultation', 'Deep Cleansing', 'Steam Treatment', 'Exfoliation', 'Extractions', 'Face Mask', 'Massage', 'Moisturizing'],
        ),
        ServicePackage(
          name: 'Anti-Aging Facial',
          price: 90,
          duration: 90,
          description: 'Advanced anti-aging treatment with specialized products and techniques to reduce fine lines and improve skin texture.',
          includes: ['Skin Assessment', 'Deep Cleansing', 'Chemical Peel', 'LED Light Therapy', 'Anti-aging Mask', 'Collagen Treatment', 'Face Massage', 'Premium Serums'],
        ),
      ],
      facilities: [
        'Professional Steamers',
        'LED Light Therapy',
        'High-Quality Skincare',
        'Extraction Tools',
        'Facial Beds',
        'Relaxing Ambiance',
        'Individual Treatment Rooms',
        'Hot Towel Service',
        'Skin Analysis Tools',
        'Premium Face Masks',
      ],
    );
  }
}