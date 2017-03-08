if( NOT TARGET CoC-SQLite )
    get_filename_component( COC-SQLITE_PATH "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE )
    get_filename_component( COC-SQLITE_SOURCE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../src" ABSOLUTE )

    list( APPEND COC-SQLITE_SOURCES
            ${COC-SQLITE_SOURCE_PATH}/cocSQLite.cpp
            ${COC-SQLITE_PATH}/libs/SQLiteCpp/src/Backup.cpp
            ${COC-SQLITE_PATH}/libs/SQLiteCpp/src/Column.cpp
            ${COC-SQLITE_PATH}/libs/SQLiteCpp/src/Database.cpp
            ${COC-SQLITE_PATH}/libs/SQLiteCpp/src/Statement.cpp
            ${COC-SQLITE_PATH}/libs/SQLiteCpp/src/Transaction.cpp
            ${COC-SQLITE_PATH}/libs/SQLiteCpp/sqlite3/sqlite3.c
            )

    add_library( CoC-SQLite ${COC-SQLITE_SOURCES} )

    target_include_directories( CoC-SQLite PUBLIC
            "${COC-SQLITE_SOURCE_PATH}"
            "${COC-SQLITE_PATH}/libs/SQLiteCpp/include"
            "${COC-SQLITE_PATH}/libs/SQLiteCpp/sqlite3" )

endif()