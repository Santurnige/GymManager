#ifndef GYMBACKEND_H
#define GYMBACKEND_H

#include<QObject>
#include"header/traineritemsmodel.h"

class GymBackend:public QObject
{
    Q_OBJECT
    Q_PROPERTY(TrainerItemsModel* trainerModel READ trainerModel CONSTANT)

public:
    GymBackend();

    Q_INVOKABLE TrainerItemsModel *trainerModel(){
        return &_trainerModel;
    }

private:
    //модели sql таблиц
    TrainerItemsModel _trainerModel;
};

#endif // GYMBACKEND_H
