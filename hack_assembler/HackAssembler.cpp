#include <bits/stdc++.h>
using namespace std;

map<string, int> symbols = {
    {"SP", 0},
    {"LCL", 1},
    {"ARG", 2},
    {"THIS", 3},
    {"THAT", 4},
    {"SCREEN", 16384},
    {"KBD", 24576}
};

map<string, string> comp = {
    {"0", "0101010"},
    {"1", "0111111"},
    {"-1", "0111010"},
    {"D", "0001100"},
    {"A", "0110000"},
    {"M", "1110000"},
    {"!D", "0001101"},
    {"!A", "0110001"},
    {"!M", "1110001"},
    {"-D", "0001111"},
    {"-A", "0110011"},
    {"-M", "1110011"},
    {"D+1", "0011111"},
    {"A+1", "0110111"},
    {"M+1", "1110111"},
    {"D-1", "0001110"},
    {"A-1", "0110010"},
    {"M-1", "1110010"},
    {"D+A", "0000010"},
    {"D+M", "1000010"},
    {"D-A", "0010011"},
    {"D-M", "1010011"},
    {"A-D", "0000111"},
    {"M-D", "1000111"},
    {"D&A", "0000000"},
    {"D&M", "1000000"},
    {"D|A", "0010101"},
    {"D|M", "1010101"}
};

map<string, string> dest = {
    {"null", "000"},
    {"M", "001"},
    {"D", "010"},
    {"DM", "011"},
    {"MD", "011"},
    {"A", "100"},
    {"AM", "101"},
    {"AD", "110"},
    {"ADM", "111"}
};

map<string, string> jump = {
    {"null", "000"},
    {"JGT", "001"},
    {"JEQ", "010"},
    {"JGE", "011"},
    {"JLT", "100"},
    {"JNE", "101"},
    {"JLE", "110"},
    {"JMP", "111"}
};

void symbolsSetup() {
    for (int i = 0; i < 16; i++) {
        string cur = "R" + to_string(i);
        symbols[cur] = i;
    }
}

void ltrim(string &s) {
    int start = s.find_first_not_of(" \t\n\r\f\v");
    s = (start == string::npos) ? "" : s.substr(start);
}

void rtrim(string &s) {
    int end = s.find_last_not_of(" \t\n\r\f\v");
    s = (end == string::npos) ? "" : s.substr(0, end + 1);
}

void trim(string &s) {
    ltrim(s);
    rtrim(s);
}

int varCnt = 16;

void parseLine(string line) {
    if (line[0] == '@') {
        string operand = line.substr(1);
        
        int op;
        if ((operand[0] < '0') || (operand[0] > '9')) {
            if (symbols.find(operand) == symbols.end()) {
                op = varCnt;
                symbols[operand] = varCnt;
                varCnt++;
            } else {
                op = symbols[operand];
            }
        } else {
            op = stoi(operand);
        }
        cout << bitset<16>(op) << "\n";
    } else {
        int equals = line.find('=');
        string sDest = (equals == string::npos) ? "null" : line.substr(0, equals);
        string destCode = dest[sDest];
        line = (equals == string::npos) ? line : line.substr(equals + 1);
        int semicolon = line.find(';');
        string sJmp = (semicolon == string::npos) ? "null" : line.substr(semicolon + 1);
        string jmpCode = jump[sJmp];
        line = (semicolon == string::npos) ? line : line.substr(0, semicolon);
        string compCode = comp[line];
        cout << "111" + compCode + destCode + jmpCode + "\n";
        // cout << sDest << " " << sJmp << " " << line << "\n";
    }
}

int main(int argc, char** argv) {
    symbolsSetup();

    if (argc < 2) {
        cout << "You must specify the assembly code to parse.\n";
        return -1;
    }

    if (argc > 2) {
        cout << "There should be only one argument: the name of the assembly file.\n";
        return -1;
    }
    
    if (!freopen(argv[1], "r", stdin)) {
        cout << "The file specified does not exist.\n";
        return -1;
    }

    string inputFile(argv[1]);
    string name = inputFile.substr(0, inputFile.size() - 4);
    freopen((name + ".hack").c_str(), "w", stdout);

    string cur;
    vector<string> preParsed;
    while (getline(cin, cur)) {
        cur = cur.substr(0, cur.find("//"));
        trim(cur);
        if (cur.empty()) continue;
        if (cur[0] == '(') {
            string symb = cur.substr(1, cur.size() - 2);
            symbols[symb] = preParsed.size();
            continue;
        }
        preParsed.push_back(cur);
    }

    for (auto S : preParsed) {
        parseLine(S);
    }
}