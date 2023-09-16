import 'package:flutter/material.dart';
import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/family_health_profile/family_health_inner_pages/health_profile/components/expansion_panel_list_component.dart';
import 'package:provider_app/src/pages/family_health_profile/family_health_inner_pages/health_profile/data_list/diseases_data_list.dart';

class HealthProfileScreen extends StatelessWidget {
  const HealthProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: diseases
            .asMap()
            .entries
            .map((disease) => Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ExpansionPanelListComponentHealthProfileFamilyMembers(
                      disease: disease),
                ))
            .toList(),
      ),
    );
  }
}
