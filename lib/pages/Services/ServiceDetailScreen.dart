// Base Service Detail Screen
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceDetailScreen extends StatefulWidget {
  final String serviceName;
  final IconData serviceIcon;
  final Color serviceColor;
  final List<ServicePackage> packages;
  final List<String> facilities;
  final String description;

  const ServiceDetailScreen({
    Key? key,
    required this.serviceName,
    required this.serviceIcon,
    required this.serviceColor,
    required this.packages,
    required this.facilities,
    required this.description,
  }) : super(key: key);

  @override
  State<ServiceDetailScreen> createState() => _ServiceDetailScreenState();
}

class _ServiceDetailScreenState extends State<ServiceDetailScreen> {
  int selectedPackageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar with Hero Image
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      widget.serviceColor.withOpacity(0.8),
                      widget.serviceColor,
                    ],
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        widget.serviceIcon,
                        size: 80,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.serviceName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Description
                  const Text(
                    'About This Service',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Service Packages
                  const Text(
                    'Choose Your Package',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),

                  ...widget.packages.asMap().entries.map((entry) {
                    int index = entry.key;
                    ServicePackage package = entry.value;
                    bool isSelected = selectedPackageIndex == index;

                    return GestureDetector(
                      onTap: () => setState(() => selectedPackageIndex = index),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: isSelected ? widget.serviceColor.withOpacity(0.1) : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: isSelected ? widget.serviceColor : Colors.grey[300]!,
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  package.name,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: isSelected ? widget.serviceColor : Colors.black,
                                  ),
                                ),
                                Text(
                                  '\$${package.price}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: widget.serviceColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '${package.duration} minutes',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              package.description,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                                height: 1.4,
                              ),
                            ),
                            if (package.includes.isNotEmpty) ...[
                              const SizedBox(height: 10),
                              Wrap(
                                spacing: 8,
                                runSpacing: 5,
                                children: package.includes.map((include) => Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: widget.serviceColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    include,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: widget.serviceColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )).toList(),
                              ),
                            ],
                          ],
                        ),
                      ),
                    );
                  }).toList(),

                  const SizedBox(height: 30),

                  // Facilities
                  const Text(
                    'Facilities & Amenities',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: widget.facilities.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey[200]!),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: widget.serviceColor,
                              size: 16,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                widget.facilities[index],
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 40),

                  // Book Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        _showBookingDialog(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: widget.serviceColor,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 3,
                      ),
                      child: Text(
                        'Book ${widget.packages[selectedPackageIndex].name} - \$${widget.packages[selectedPackageIndex].price}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showBookingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('Book ${widget.serviceName}'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Package: ${widget.packages[selectedPackageIndex].name}'),
              Text('Duration: ${widget.packages[selectedPackageIndex].duration} minutes'),
              Text('Price: \$${widget.packages[selectedPackageIndex].price}'),
              const SizedBox(height: 15),
              const Text(
                'Would you like to proceed to booking?',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Navigate to booking screen or show success message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${widget.serviceName} booking initiated!'),
                    backgroundColor: widget.serviceColor,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.serviceColor,
                foregroundColor: Colors.white,
              ),
              child: const Text('Book Now'),
            ),
          ],
        );
      },
    );
  }
}

// Service Package Model
class ServicePackage {
  final String name;
  final int price;
  final int duration;
  final String description;
  final List<String> includes;

  ServicePackage({
    required this.name,
    required this.price,
    required this.duration,
    required this.description,
    this.includes = const [],
  });
}