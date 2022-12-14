#include <catch2/catch_test_macros.hpp>

#include <algorithm>
#include <iostream>
#include <string>
#include <vector>
#include <cctype>
#include <locale>
#include "graph.h"
#include "dijkstra.h"
#include "mappic.h"
#include "cs225/point.h"

TEST_CASE("reading in routes data")
{
  graph g;
  g.file_to_stringRoute("../test_routes.csv");
  REQUIRE(g.getRoutesSize() == 2);
  REQUIRE(g.getRoutesVector() == 4);
}

TEST_CASE("reading in airports data")
{
  graph g;
  g.file_to_stringAirport("../test_airport.csv");
  REQUIRE(g.getAirportSize() == 3);
  REQUIRE(g.getAirportRowSize(1) == 4);
}

TEST_CASE("getting longitude and latitude of an airport")
{
  graph g;
  g.file_to_stringRoute("../test_routes.csv");

  REQUIRE(g.getRoutesSize() == 2);
  REQUIRE(g.getRoutesVector() == 4);

  g.file_to_stringAirport("../test_airport.csv");
  REQUIRE(g.getAirportSize() == 3);
  REQUIRE(g.getAirportRowSize(1) == 4);

  pair<string, string> expected = pair<string, string>("-6.081689834590001", "145.391998291");
  REQUIRE(g.getLatLong("AER") == expected);
}

TEST_CASE("Calculate distance between two airports")
{
  vector<vector<string>> routes = {{"SFO", "1234", "ORD", "1235"}};
  vector<vector<string>> airports_ = {{"SFO", "38", "122"}, {"ORD", "42", "88"}};

  graph g(routes, airports_);

  REQUIRE(g.getRoutesSize() == 1);
  REQUIRE(g.getAirportSize() == 2);

  g.makeGraph();
  vector<pair<string, int>> expected;
  expected.push_back(make_pair("ORD", 1807));
  REQUIRE(expected.size() == 1);

  REQUIRE(g.getMap()["SFO"].at(0).second == 1807);
}

TEST_CASE("simple graph - 1 to 1 src to destination")
{
  vector<vector<string>> routes = {{"SFO", "1234", "ORD", "1235"}};
  vector<vector<string>> airports_ = {{"SFO", "38", "122"}, {"ORD", "42", "88"}};

  graph g(routes, airports_);

  REQUIRE(g.getRoutesSize() == 1);
  REQUIRE(g.getAirportSize() == 2);

  g.makeGraph();
  vector<pair<string, int>> expected;
  expected.push_back(make_pair("ORD", 1807));
  REQUIRE(expected.size() == 1);

  REQUIRE(g.getMap()["SFO"] == expected);
}

TEST_CASE("simple graph - Multiple destinations from one airport")
{
  vector<vector<string>> routes = {{"SFO", "1234", "ORD", "1235"}, {"SFO", "1234", "LAX", "1236"}};
  vector<vector<string>> airports_ = {{"SFO", "38", "122"}, {"ORD", "42", "88"}, {"LAX", "34", "118"}};

  graph g(routes, airports_);

  REQUIRE(g.getRoutesSize() == 2);
  REQUIRE(g.getAirportSize() == 3);

  g.makeGraph();

  vector<pair<string, int>> expected;
  expected.push_back(make_pair("ORD", 1807));
  expected.push_back(make_pair("LAX", 355));

  REQUIRE(g.getMap()["SFO"] == expected);
}

TEST_CASE("simple graph - Multiple destinations from multiple airport")
{
  vector<vector<string>> routes = {{"SFO", "1234", "ORD", "1235"}, {"SFO", "1234", "LAX", "1236"}, {"LAX", "1236", "SFO", "1234"}, {"LAX", "1236", "DAL", "1334"}};
  vector<vector<string>> airports_ = {{"SFO", "38", "122"}, {"ORD", "42", "88"}, {"LAX", "34", "118"}, {"DAL", "33", "97"}};

  graph g(routes, airports_);

  REQUIRE(g.getRoutesSize() == 4);
  REQUIRE(g.getAirportSize() == 4);

  g.makeGraph();

  vector<pair<string, int>> expected_sfo;
  vector<pair<string, int>> expected_lax;

  expected_sfo.push_back(make_pair("ORD", 1807));
  expected_sfo.push_back(make_pair("LAX", 355));

  expected_lax.push_back(make_pair("SFO", 355));
  expected_lax.push_back(make_pair("DAL", 1208));

  REQUIRE(g.getMap()["SFO"] == expected_sfo);

  REQUIRE(g.getMap()["LAX"] == expected_lax);
}

TEST_CASE("bfs traversal - every airport is visited")
{
  vector<vector<string>> routes = {{"SFO", "1234", "ORD", "1235"}, {"SFO", "1234", "LAX", "1236"}};
  vector<vector<string>> airports_ = {{"SFO", "38", "122"}, {"ORD", "42", "88"}, {"LAX", "34", "118"}};

  graph g(routes, airports_);
  g.makeGraph();
  g.BFS("SFO");

  for (auto s : g.getGraph())
  {
    REQUIRE(g.getVisited()[s.first] == true);
  }

  REQUIRE(g.getVisited().size() == g.getGraph().size());
}

TEST_CASE("edge case - not possibe")
{
  vector<vector<string>> routes = {{"SFO", "1234", "ORD", "1235"}, {"SFO", "1234", "LAX", "1236"}, {"SFO", "1234", "EWR", "1237"}, {"ORD", "1235", "EWR", "1237"}, {"LAX", "1236", "EWR", "1237"}};
  vector<vector<string>> airports_ = {{"SFO", "38", "122"}, {"ORD", "42", "88"}, {"LAX", "34", "118"}, {"EWR", "34", "119"}};
  graph g(routes, airports_);
  g.makeGraph();

  dijkstra dij(g.getMap(), "JFK", "EWR");
  dij.dijkstra_distance();
  auto test = dij.get_shortest_paths();

  vector<pair<string, int>> expected_shortest_paths;

  REQUIRE(dij.get_shortest_paths() == expected_shortest_paths);
  REQUIRE(dij.get_shortest_paths().size() == 0);
}

TEST_CASE("0 to 1 stops test")
{
  vector<vector<string>> routes = {{"SFO", "1234", "ORD", "1235"}, {"SFO", "1234", "LAX", "1236"}, {"SFO", "1234", "EWR", "1237"}, {"ORD", "1235", "EWR", "1237"}, {"LAX", "1236", "EWR", "1237"}};
  vector<vector<string>> airports_ = {{"SFO", "38", "122"}, {"ORD", "42", "88"}, {"LAX", "34", "118"}, {"EWR", "34", "119"}};
  graph g(routes, airports_);
  g.makeGraph();

  dijkstra dij(g.getMap(), "SFO", "EWR");
  dij.dijkstra_distance();
  auto test = dij.get_shortest_paths();

  vector<pair<string, int>> expected_shortest_paths;

  expected_shortest_paths.push_back(make_pair("SFO", 0));
  expected_shortest_paths.push_back(make_pair("ORD", 1));
  expected_shortest_paths.push_back(make_pair("LAX", 1));

  REQUIRE(dij.get_shortest_paths() == expected_shortest_paths);
  REQUIRE(dij.get_shortest_paths().size() == 3);
}

TEST_CASE("Only 1 stops")
{
  vector<vector<string>> routes = {{"SFO", "1234", "ORD", "1235"}, {"SFO", "1234", "LAX", "1236"}, {"ORD", "1235", "EWR", "1237"}, {"LAX", "1236", "EWR", "1237"}};
  vector<vector<string>> airports_ = {{"SFO", "38", "122"}, {"ORD", "42", "88"}, {"LAX", "34", "118"}, {"EWR", "34", "119"}};
  graph g(routes, airports_);
  g.makeGraph();

  dijkstra dij(g.getMap(), "SFO", "EWR");
  dij.dijkstra_distance();
  auto test = dij.get_shortest_paths();

  vector<pair<string, int>> expected_shortest_paths;

  expected_shortest_paths.push_back(make_pair("ORD", 1));
  expected_shortest_paths.push_back(make_pair("LAX", 1));

  REQUIRE(dij.get_shortest_paths() == expected_shortest_paths);
  REQUIRE(dij.get_shortest_paths().size() == 2);
}

TEST_CASE("Map Output - 1")
{
  vector<vector<string>> routes = {{"SFO", "1234", "ORD", "1235"}, {"SFO", "1234", "LAX", "1236"}, {"SFO", "1234", "EWR", "1237"}, {"ORD", "1235", "EWR", "1237"}, {"LAX", "1236", "EWR", "1237"}};
  vector<vector<string>> airports_ = {{"SFO", "38", "122"}, {"ORD", "42", "88"}, {"LAX", "34", "118"}, {"EWR", "40", "74"}};
  graph g(routes, airports_);
  g.makeGraph();

  dijkstra dij(g.getMap(), "ORD", "EWR");
  dij.dijkstra_distance();
  auto test = dij.get_shortest_paths();
  mappic map_out("../empty_map.png");
  map_out.drawAirports(g, dij);

  // Checking Red
  REQUIRE(map_out.png->getPixel(333, 309).h == 120);
  REQUIRE(map_out.png->getPixel(333, 309).s == 1);
  REQUIRE(map_out.png->getPixel(333, 309).l == .25);
  // Checking Green
  REQUIRE(map_out.png->getPixel(288, 299).h == 0);
  REQUIRE(map_out.png->getPixel(288, 299).s == 1);
  REQUIRE(map_out.png->getPixel(288, 299).l == .5);
}

TEST_CASE("Map Output - 2")
{
  vector<vector<string>> routes = {{"SFO", "1234", "ORD", "1235"}, {"SFO", "1234", "LAX", "1236"}, {"SFO", "1234", "EWR", "1237"}, {"ORD", "1235", "EWR", "1237"}, {"LAX", "1236", "EWR", "1237"}};
  vector<vector<string>> airports_ = {{"SFO", "38", "122"}, {"ORD", "42", "88"}, {"LAX", "34", "118"}, {"EWR", "40", "74"}};
  graph g(routes, airports_);
  g.makeGraph();

  dijkstra dij(g.getMap(), "SFO", "ORD");
  dij.dijkstra_distance();
  auto test = dij.get_shortest_paths();
  mappic map_out("../empty_map.png");
  map_out.drawAirports(g, dij);

  // Checking Red
  REQUIRE(map_out.png->getPixel(443, 289).h == 120);
  REQUIRE(map_out.png->getPixel(443, 289).s == 1);
  REQUIRE(map_out.png->getPixel(443, 289).l == .25);
  // Checking Green
  REQUIRE(map_out.png->getPixel(333, 309).h == 0);
  REQUIRE(map_out.png->getPixel(333, 309).s == 1);
  REQUIRE(map_out.png->getPixel(333, 309).l == .5);
}

TEST_CASE("Map Output - Empty")
{
  vector<vector<string>> routes = {};
  vector<vector<string>> airports_ = {{"SFO", "38", "122"}, {"ORD", "42", "88"}, {"LAX", "34", "118"}, {"EWR", "40", "74"}};
  graph g(routes, airports_);
  g.makeGraph();

  dijkstra dij(g.getMap(), "SDF", "WYS");
  dij.dijkstra_distance();
  auto test = dij.get_shortest_paths();

  mappic map_out("../World_map_political_ISO.png");
  map_out.drawAirports(g, dij);

  mappic expected("../globe.png"); // have empty map
  for (int x = 0; x < expected.map_width - 1; x++)
  {
    for (int y = 0; y < expected.map_height - 1; y++)
    {
      REQUIRE(expected.png->getPixel(x, y) == map_out.png->getPixel(x, y));
    }
  }
}
