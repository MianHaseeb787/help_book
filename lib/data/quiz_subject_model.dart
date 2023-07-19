List<Subject> subjectsList = [
  Subject(id: 1, title: 'Intermediate', categoriesList: [
    Categories(id: 1, title: 'F.A', subCatsListList: [SubCategories(id: 1, title: 'First Year'), SubCategories(id: 1, title: 'First Year')]),
    Categories(id: 1, title: 'Ics', subCatsListList: [SubCategories(id: 1, title: 'First Year'), SubCategories(id: 1, title: 'First Year')]),
  ]),
  Subject(id: 2, title: 'Matriculation', categoriesList: [
    Categories(id: 1, title: '9th'),
    Categories(id: 1, title: '10th'),
  ]),
  Subject(id: 3, title: 'Graduations'),
  Subject(id: 4, title: 'Masters'),
  Subject(id: 5, title: 'Programming'),
];



class Subject {
  int id;
  String title;
  List<Categories>? categoriesList;
  Subject({required this.id, required this.title, this.categoriesList});
}

class Categories {
  int id;
  String title;
  List<SubCategories>? subCatsListList;
  Categories({required this.id, required this.title, this.subCatsListList});
}


class SubCategories {
  int id;
  String title;
  SubCategories({required this.title, required this.id});
}
