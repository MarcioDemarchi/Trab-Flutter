import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String) onSubmitted;

  CustomTextField({required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Digite um item',
            ),
          ),
        ),
        SizedBox(width: 8),
        ElevatedButton(
          onPressed: () {
            onSubmitted(controller.text);
            controller.clear();
          },
          child: Text('Adicionar'),
        ),
      ],
    );
  }
}

class CustomListItem extends StatelessWidget {
  final String text;
  final VoidCallback onDelete;

  CustomListItem({required this.text, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(text),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.red),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
