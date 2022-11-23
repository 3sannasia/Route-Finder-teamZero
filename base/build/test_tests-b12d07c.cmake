add_test( [==[reading in routes data]==] /workspaces/cs225/teamZero/base/build/test [==[reading in routes data]==]  )
set_tests_properties( [==[reading in routes data]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/teamZero/base/build)
add_test( [==[reading in airports data]==] /workspaces/cs225/teamZero/base/build/test [==[reading in airports data]==]  )
set_tests_properties( [==[reading in airports data]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/teamZero/base/build)
add_test( [==[getting longitude and latitude of an airport]==] /workspaces/cs225/teamZero/base/build/test [==[getting longitude and latitude of an airport]==]  )
set_tests_properties( [==[getting longitude and latitude of an airport]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/teamZero/base/build)
add_test( [==[simple graph - 1 to 1 src to destination]==] /workspaces/cs225/teamZero/base/build/test [==[simple graph - 1 to 1 src to destination]==]  )
set_tests_properties( [==[simple graph - 1 to 1 src to destination]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/teamZero/base/build)
add_test( [==[simple graph - Multiple destinations from one airport]==] /workspaces/cs225/teamZero/base/build/test [==[simple graph - Multiple destinations from one airport]==]  )
set_tests_properties( [==[simple graph - Multiple destinations from one airport]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/teamZero/base/build)
set( test_TESTS [==[reading in routes data]==] [==[reading in airports data]==] [==[getting longitude and latitude of an airport]==] [==[simple graph - 1 to 1 src to destination]==] [==[simple graph - Multiple destinations from one airport]==])
