#ifndef TRAINERITEMSMODEL_H
#define TRAINERITEMSMODEL_H

#include<QAbstractListModel>

class TrainerItemsModel:public QAbstractListModel
{
    Q_OBJECT
public:
    TrainerItemsModel();

    enum Roles {
        NameRole = Qt::UserRole + 1,
        EmailRole,
        PhoneRole
    };

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index, int role) const override;

    QHash<int, QByteArray> roleNames() const override;

    // Добавение элемента
    Q_INVOKABLE void addItem(const QString &name, const QString &email, const QString& phone);

private:
    struct Item {
        QString name;
        QString email;
        QString phone;
    };

    QList<Item> m_items;
};

#endif // TRAINERITEMSMODEL_H
