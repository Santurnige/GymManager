#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<QFont>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    app.setFont(QFont("Georgia"));

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("GymManagement", "Main");

    return app.exec();
}
