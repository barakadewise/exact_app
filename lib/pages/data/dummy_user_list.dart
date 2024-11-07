import 'dart:ffi';
import 'dart:math';

final List<Map<String, dynamic>> users = List.generate(
  15,
  (index) {
    final random = Random();
    final firstNames = [
      "Alfred",
      "Jane",
      "John",
      "Maria",
      "Michael",
      "Emma",
      "Oliver",
      "Sophia",
      "Liam",
      "Mason",
      "Isabella",
      "Ethan",
      "Ava",
      "Lucas",
      "Mia"
    ];
    final lastNames = [
      "Mabula",
      "Doe",
      "Smith",
      "Garcia",
      "Johnson",
      "Brown",
      "Wilson",
      "Davis",
      "Martinez",
      "Lopez",
      "White",
      "Harris",
      "Clark",
      "Lewis",
      "Walker"
    ];

    final positions = [
      "Financial Controller",
      "Software Engineer",
      "Graphic Designer",
      "Project Manager",
      "Data Analyst",
      "Marketing Specialist",
      "Product Manager",
      "UX Designer",
      "Full Stack Developer",
      "Content Creator",
      "Sales Executive",
      "HR Manager",
      "Business Analyst",
      "Operations Coordinator",
      "System Administrator"
    ];
    final cities = [
      "Dar Es Salaam",
      "Arusha",
      "Dodoma",
      "Morogoro",
      "Geita",
      "Singida",
      "Tabora",
      "Kilimanjaro",
      "Mwanza",
      "Mbeya",
      "Arusha",
      "Dar es salaam",
      "Tangga",
      "Mwanza",
      "Kilimanjaro"
    ];
    

    return {
      'isAvailale':random.nextBool(),
      'name':
          '${firstNames[random.nextInt(firstNames.length)]} ${lastNames[random.nextInt(lastNames.length)]}',
      'position': positions[random.nextInt(positions.length)],
      'location': cities[random.nextInt(cities.length)],
      'views': random.nextInt(100),
      'likes': random.nextInt(50),
    };
  },
);
