class Quizz {
  final int? id, answer;
  final String? question;
  final List<String>? options;

  Quizz({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Après leur mort, les héros et les gens vertueux se retrouvaient aux Champs Élysées.",
    "options": ['False', 'True'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "La division du territoire en cités-États a assuré une longue période de paix dans la civilisation grecque.",
    "options": ['False', 'True'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question":
        "À l’origine, le mot agora servait à désigner une assemblée de prêtresses dans un lieu public.",
    "options": ['False', 'True'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "Platon n’a laissé aucun écrit.",
    "options": ['False', 'True'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "Homère est un personnage de l’Odyssée, comme Ulysse.",
    "options": ['False', 'True'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question":
        "Les esclaves qui remportaient une compétition olympique gagnaient aussi leur liberté.",
    "options": ['False', 'True'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question":
        "La médecine par les songes était pratiquée au sanctuaire d’Asclépios.",
    "options": ['False', 'True'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question":
        "L’expression « une victoire à la Pyrrhus » signifie une victoire surprise.",
    "options": ['False', 'True'],
    "answer_index": 0,
  },
  {
    "id": 9,
    "question": "La Vénus de Milo représente en fait la déesse Aphrodite.",
    "options": ['False', 'True'],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question": "Zeus était la divinité vénérée au Parthénon.",
    "options": ['False', 'True'],
    "answer_index": 0,
  },
];
