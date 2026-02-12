#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<QFont>
#include<QQmlContext>
#include"header/gymbackend.h"
#include<QObject>

static QObject* backendProvider(QQmlEngine*, QJSEngine*)
{
    return new GymBackend();
}

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    //шрифт
    app.setFont(QFont("Georgia"));


    QQmlApplicationEngine engine;
    qmlRegisterSingletonType<GymBackend>("Gym.Backend",1,0,"GymBackend",backendProvider);


    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("GymManagement", "Main");

    return app.exec();
}
