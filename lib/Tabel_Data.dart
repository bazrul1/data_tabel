import 'package:flutter/material.dart';

class TabelData extends StatefulWidget {
  const TabelData({Key? key}) : super(key: key);

  @override
  _TabelDataState createState() => _TabelDataState();
}

class _TabelDataState extends State<TabelData> {
  final List<Student> students = [
    Student(id: 1, name: "John Doe", grade: "A"),
    Student(id: 2, name: "Jane Smith", grade: "B"),
    Student(id: 3, name: "Michael Brown", grade: "A"),
    Student(id: 4, name: "Emily Davis", grade: "C"),
    Student(id: 5, name: "Daniel Wilson", grade: "B"),
    Student(id: 6, name: "Sophia Johnson", grade: "A"),
    Student(id: 7, name: "Olivia Martinez", grade: "A"),
    Student(id: 8, name: "Liam Garcia", grade: "B"),
    Student(id: 9, name: "Mason Lopez", grade: "C"),
    Student(id: 10, name: "Ethan Hernandez", grade: "A"),
    Student(id: 11, name: "John Doe", grade: "A"),
    Student(id: 12, name: "Jane Smith", grade: "B"),
    Student(id: 13, name: "Michael Brown", grade: "A"),
    Student(id: 14, name: "Emily Davis", grade: "C"),
    Student(id: 15, name: "Daniel Wilson", grade: "B"),
    Student(id: 16, name: "Sophia Johnson", grade: "A"),
    Student(id: 17, name: "Olivia Martinez", grade: "A"),
    Student(id: 18, name: "Liam Garcia", grade: "B"),
    Student(id: 19, name: "Mason Lopez", grade: "C"),
    Student(id: 20, name: "Ethan Hernandez", grade: "A"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Table"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: DataTable(
            columns: [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Grade')),
            ],
            rows:students.map((student) => DataRow(cells: [
                          DataCell(Row(children: [Icon(Icons.person),Text(student.id.toString()),],),),
                          DataCell(Text(student.name),),
                          DataCell(Text(student.grade)),
                        ],
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
    );
  }
}

class Student {
  final int id;
  final String name;
  final String grade;

  Student({
   required this.id,
   required this.name, 
   required this.grade
    }
   );
}
