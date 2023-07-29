void add_answers(bool i) {
  Answers.add(i);
}

void clear_answers() {
  Answers.clear();
}

List<bool> Answers = [];

List<Map> Questions = [
  {
    "question": "A Database Management System is a type of _________software.",
    "co1":
        "CO1: Understand the basic concepts, design principles with storage structures and access techniques:file organization, indexing methods.",
    "option": [
      "It is a type of system software",
      "It is a kind of application software",
      "It is a kind of general software",
      "Both A and C",
    ],
    "answer": "It is a type of system software",
    "note": "It is a type of system software",
    // "note":"The DBMS is a kind of system software used for several operations such as creating tables/databases, storing data, managing databases. It also allows modifying the data stored in the database as well."
  },
  {
    "question": "The term 'FAT' is stands for_____",
    "co1":
        "CO1: Understand the basic concepts, design principles with storage structures and access techniques:file organization, indexing methods.",
    "option": [
      "File Allocation Tree",
      "File Allocation Table",
      "File Allocation Graph",
      "All of the above",
    ],
    "answer": "File Allocation Table",
    "note": "File Allocation Table",
    // "note":"The term 'FAT' can be described as a file structure (or file architecture). In which all the information about the files where they are stored and where all these files need to be stored or in which directory, all that information generally stored in the file structure. Therefore the Operating system creates a table in which all the files and clusters are stored, known as the file allocation table."
  },
  {
    "question": "Rows of a relation are known as the _______.",
    "co1":
        "CO1: Understand the basic concepts, design principles with storage structures and access techniques:file organization, indexing methods.",
    "option": [
      "Degree",
      "Tuples",
      "Entity",
      "All of the above",
    ],
    "answer": "All of the above",
    "note": "All of the above",
    // "note":
    //     "In SQL, the relation is represented by a table, and a table is a collection of rows and columns. Therefore the collection of rows & columns is called the table, whereas a table is known as the relation in the SQL. So in a relation (or we can say table), rows are called the tuples. So, the correct answer will be tuples."
  },
  {
    "question":
        "The given Query can also be replaced with_______:\nSELECT name, course_id\nFROM instructor, teaches\nWHERE instructor_ID= teaches_ID;  ",
    "co1":
        "CO1: Understand the basic concepts, design principles with storage structures and access techniques:file organization, indexing methods.",
    "option": [
      "Select name,course_id from teaches,instructor where instructor_id=course_id;",
      "Select name, course_id from instructor natural join teaches;",
      "Select name, course_id from instructor;",
      "Select course_id from instructor join teaches;"
    ],
    "answer": "Select name, course_id from instructor natural join teaches;",
    "note": "Select name, course_id from instructor natural join teaches;",
    // "note": "Join clause joins two tables by matching the common column"
  },
  {
    "question":
        "Which one of the following given statements possibly contains the error?",
    "co1":
        "CO1: Understand the basic concepts, design principles with storage structures and access techniques:file organization, indexing methods.",
    "option": [
      "select * from emp where empid = 10003;",
      "select empid from emp where empid = 10006;",
      "select empid from emp;",
      "select empid where empid = 1009 and Lastname = 'GELLER';"
    ],
    "answer": "select empid where empid = 1009 and Lastname = 'GELLER';",
    "note": "select empid where empid = 1009 and Lastname = 'GELLER';",
    // "note": "The Query given in option D does not contain the 'from' clause, which specifies the relation from which the values have to be selected or fetched. Therefore the correct answer is D."
  },
  {
    "question": "What do you mean by one to many relationships?",
    "co1":
        "CO1: Understand the basic concepts, design principles with storage structures and access techniques:file organization, indexing methods.",
    "option": [
      "One class may have many teachers",
      "One teacher can have many classes",
      "Many classes may have many teachers",
      "Many teachers may have many classes"
    ],
    "answer": "One teacher can have many classes",
    "note": "One teacher can have many classes",
    // "note": "We can understand the 'one to many' relationship as a teacher who may have more than one class to attend."
  },
  {
    "question":
        "The given Query can also be replaced with_______:\nSELECT name, course_id\nFROM instructor, teaches\nWHERE instructor_ID= teaches_ID;  ",
    "co1":
        "CO1: Understand the basic concepts, design principles with storage structures and access techniques:file organization, indexing methods.",
    "option": [
      "Select name,course_id from teaches,instructor where instructor_id=course_id;",
      "Select name, course_id from instructor natural join teaches;",
      "Select name, course_id from instructor;",
      "Select course_id from instructor join teaches;"
    ],
    "answer": "Select name, course_id from instructor natural join teaches;",
    "note": "Select name, course_id from instructor natural join teaches;",
    // "note": "Join clause joins two tables by matching the common column"
  },
  {
    "question":
        "Which one of the following given statements possibly contains the error?",
    "co1":
        "CO1: Understand the basic concepts, design principles with storage structures and access techniques:file organization, indexing methods.",
    "option": [
      "select * from emp where empid = 10003;",
      "select empid from emp where empid = 10006;",
      "select empid from emp;",
      "select empid where empid = 1009 and Lastname = 'GELLER';"
    ],
    "answer": "select empid where empid = 1009 and Lastname = 'GELLER';",
    "note": "select empid where empid = 1009 and Lastname = 'GELLER';",
    // "note":
    //     "The Query given in option D does not contain the 'from' clause, which specifies the relation from which the values have to be selected or fetched. Therefore the correct answer is D."
  },
  {
    "question": "What do you mean by one to many relationships?",
    "co1":
        "CO1: Understand the basic concepts, design principles with storage structures and access techniques:file organization, indexing methods.",
    "option": [
      "One class may have many teachers",
      "One teacher can have many classes",
      "Many classes may have many teachers",
      "Many teachers may have many classes"
    ],
    "answer": "One teacher can have many classes",
    "note": "One teacher can have many classes",
    // "note":
    //     "We can understand the 'one to many' relationship as a teacher who may have more than one class to attend."
  },
  {
    "question": "A Database Management System is a type of _________software.",
    "co1":
        "CO1: Understand the basic concepts, design principles with storage structures and access techniques:file organization, indexing methods.",
    "option": [
      "It is a type of system software",
      "It is a kind of application software",
      "It is a kind of general software",
      "Both A and C",
    ],
    "answer": "It is a type of system software",
    "note": "It is a type of system software",
    // "note":
    //     "The DBMS is a kind of system software used for several operations such as creating tables/databases, storing data, managing databases. It also allows modifying the data stored in the database as well."
  },
];
