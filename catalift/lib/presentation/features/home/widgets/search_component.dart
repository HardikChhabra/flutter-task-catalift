import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSearch;

  const SearchComponent({super.key, required this.controller, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Row(
        children: [
          SearchBar(
            constraints: BoxConstraints(maxWidth: (MediaQuery.of(context).size.width)/(3/2), minHeight: 50),
            controller: controller,
            hintText: "Search",
            leading: const Icon(Icons.search),
            onChanged: onSearch,
          ),
          const SizedBox(width: 30,),
          const Icon(Icons.add_box_outlined, color: Color(0xFF000060),size: 40,)
        ],
      ),
    );
  }
}
