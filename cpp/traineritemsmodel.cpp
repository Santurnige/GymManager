#include "header/traineritemsmodel.h"

TrainerItemsModel::TrainerItemsModel() {}

int TrainerItemsModel::rowCount(const QModelIndex &parent) const {
    return m_items.count();
}

QVariant TrainerItemsModel::data(const QModelIndex &index, int role) const {
    if (!index.isValid())
        return QVariant();

    const auto &item = m_items[index.row()];

    switch (role) {
    case NameRole: return item.name;
    case EmailRole: return item.email;
    case PhoneRole: return item.phone;
    }

    return QVariant();
}

QHash<int, QByteArray> TrainerItemsModel::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[NameRole] = "name";
    roles[EmailRole] = "email";
    roles[PhoneRole] = "phone";
    return roles;
}

void TrainerItemsModel::addItem(const QString &name, const QString &email, const QString& phone) {
    beginInsertRows(QModelIndex(), m_items.count(), m_items.count());
    m_items.append({name, email, phone});
    endInsertRows();
}
