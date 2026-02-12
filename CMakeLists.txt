cmake_minimum_required(VERSION 3.16)

project(GymManagement VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS Sql)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appGymManagement
    main.cpp
)

qt_add_qml_module(appGymManagement
    URI GymManagement
    QML_FILES
        Main.qml
        QML/Pages/StatisticPage.qml
        QML/Pages/SubscriptionPage.qml
        QML/Pages/TrainerPage.qml
        QML/Pages/NutritionPage.qml
        QML/Pages/ClientPage.qml
        QML/CustomWidgets/TrainerElement.qml
    SOURCES
        header/sqlmanager.h
        cpp/sqlmanager.cpp
        header/traineritemsmodel.h
        cpp/traineritemsmodel.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appGymManagement PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appGymManagement
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appGymManagement
    PRIVATE Qt6::Quick
)
target_link_libraries(appGymManagement PRIVATE Qt6::Sql)

include(GNUInstallDirs)
install(TARGETS appGymManagement
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
