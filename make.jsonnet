local all = import "./all.json";

local roundDefinitions = {
    prelim1: ["HTTP status codes", "Kontrola wersji", "Filmy", "Języki wymarłe i enigmatyczne",  "Who's that Pokémon?!"],
    prelim2: ["Tytuły książek", "Strony", "Protokoły komunikacyjne", "Układy analogowe", "What's this shell?" ],
    prelim3: ["Porty IP TCP/UDP", "Instrukcje procesorów", "Gierki", "BSODy", "What's this hackerspace?"  ],
    final: ["Wzory matematyczne", "Retro Komputery", "Funkcyjne Funkcje", "GNU coreutils", "What's this Cisco Symbol?"  ],
};

local makeQuestions = function(round) [
    {
        name: name,
        questions: (std.filter(function(c) c.name == name, all)[0]).questions,
    } for name in roundDefinitions[round]
];

function(round) {
    "categories": makeQuestions(round),
}
