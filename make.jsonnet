local all = import "./all.json";

local roundDefinitions = {
    prelim1: ["Protokoły komunikacyjne", "Układy analogowe"],
    prelim2: [],
    prelim3: [],
    final: [],
};

local makeRound = function(round) [
    {
        questions: (std.filter(function(c) c.name == name, all)[0]).questions,
    } for name in roundDefinitions[round]
];

function(round) {
    "type": "simple",
    "board": makeRound(round),
}
