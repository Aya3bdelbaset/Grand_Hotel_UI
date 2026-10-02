import 'package:flutter/material.dart';

class RecentSearchTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final VoidCallback onDelete;

  const RecentSearchTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onDelete,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Icon(Icons.access_time, size: 18, color: Colors.grey.shade600),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.black87,
        ),
      ),
      subtitle: subtitle.isNotEmpty
          ? Text(
              subtitle,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
            )
          : null,
      trailing: IconButton(
        icon: Icon(Icons.close, size: 18, color: Colors.grey.shade400),
        onPressed: onDelete,
      ),
    );
  }
}
