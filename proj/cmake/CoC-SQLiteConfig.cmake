if( NOT TARGET CoC-SQLite )
    get_filename_component( COC-SQLITE_PATH "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE )
    get_filename_component( COC-SQLITE_SOURCE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../src" ABSOLUTE )

    FILE(GLOB COC-SQLITE_SOURCES ${COC-SQLITE_SOURCE_PATH}/*.cpp)

    FILE(GLOB COC-SQLITECPP_SOURCES ${COC-SQLITE_PATH}/libs/SQLiteCpp/src/*.cpp)

    add_library( CoC-SQLite ${COC-SQLITE_SOURCES} ${COC-SQLITECPP_SOURCES} )

    target_include_directories( CoC-SQLite PUBLIC
            "${COC-SQLITE_SOURCE_PATH}"
            "${COC-SQLITE_PATH}/libs/SQLiteCpp/include" )

endif()