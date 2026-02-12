#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<QFont>
#include<QQmlContext>
#include"header/traineritemsmodel.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    app.setFont(QFont("Georgia"));

    QQmlApplicationEngine engine;

    TrainerItemsModel itemsModel;

    itemsModel.addItem("Цатурян Александр Ваагнович","sasacaturan284@gmail.com","+79966325884");
    itemsModel.addItem("Цатурян Ваня Ваагнович","зрув@gmail.com","+799652455884");
    itemsModel.addItem("Цатурян Александр Ваагнович","sasacaturan284@gmail.com","+79966325884");
    itemsModel.addItem("Цатурян Александр Ваагнович","sasacaturan284@gmail.com","+79966325884");



    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    engine.rootContext()->setContextProperty("itemsModel", &itemsModel);

    engine.loadFromModule("GymManagement", "Main");

    return app.exec();
}
