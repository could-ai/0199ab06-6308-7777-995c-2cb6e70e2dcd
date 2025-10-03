import 'package:flutter/material.dart';

class IterationScreen extends StatelessWidget {
  const IterationScreen({super.key});

  // Data source for the list of JavaScript iteration methods
  final List<Map<String, String>> iterationMethods = const [
    {
      "name": "for",
      "description": "The classic loop. Loops through a block of code a number of times."
    },
    {
      "name": "for...in",
      "description": "Loops through the properties of an object."
    },
    {
      "name": "for...of",
      "description": "Loops through the values of an iterable object (like arrays, strings)."
    },
    {
      "name": "while",
      "description": "Loops through a block of code while a specified condition is true."
    },
    {
      "name": "do...while",
      "description": "Also loops through a block of code while a specified condition is true, but executes the block once before checking the condition."
    },
    {
      "name": "forEach()",
      "description": "Calls a function for each element in an array. Not for objects."
    },
    {
      "name": "map()",
      "description": "Creates a new array by performing a function on each array element."
    },
    {
      "name": "filter()",
      "description": "Creates a new array with all elements that pass the test implemented by the provided function."
    },
    {
      "name": "reduce()",
      "description": "Executes a reducer function on each element of the array, resulting in a single output value."
    },
    {
      "name": "some()",
      "description": "Checks if at least one element in the array passes the test implemented by the provided function."
    },
    {
      "name": "every()",
      "description": "Checks if all elements in the array pass the test implemented by the provided function."
    },
    {
      "name": "find()",
      "description": "Returns the value of the first element in an array that passes a test."
    },
    {
      "name": "findIndex()",
      "description": "Returns the index of the first element in an array that passes a test."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JavaScript Iteration Methods"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: iterationMethods.length,
        itemBuilder: (context, index) {
          final item = iterationMethods[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              title: Text(
                item["name"]!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(item["description"]!),
            ),
          );
        },
      ),
    );
  }
}
