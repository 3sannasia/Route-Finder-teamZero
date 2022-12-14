#pragma once
#include <map>
#include <string>
#include <iostream>
#include <sstream>
#include <fstream>
#include <fenv.h>
#include <signal.h>
#include <vector>
#include <math.h>
#include <queue>
#include "util/util.h"
using namespace std;

class graph
{

public:
    graph();
    graph(vector<vector<string>> routes, vector<vector<string>> airports);
    void makeGraph();
    map<string, vector<pair<string, int>>> getMap();

    void routes(string file);
    string file_to_stringRoute(const string &filename);
    string file_to_stringAirport(const string &filename);
    size_t getRoutesSize();
    size_t getRoutesVector();

    size_t getAirportSize();
    size_t getAirportRowSize(int i);
    map<string, bool> getVisited();
    map<string, vector<pair<string, int>>> getGraph();

    pair<string, string> getLatLong(string airport_code);
    long double toRadians(const long double degree);
    long int calculateDist(string source, string destination);

    void BFS(string s);

private:
    map<string, vector<pair<string, int>>> graph_;
    vector<vector<string>> routes_;
    vector<vector<string>> airports_;
    map<string, bool> visited;
};
