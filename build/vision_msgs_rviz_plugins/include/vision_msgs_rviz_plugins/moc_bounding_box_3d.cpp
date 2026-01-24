/****************************************************************************
** Meta object code from reading C++ file 'bounding_box_3d.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../src/vision_msgs_rviz_plugins-humble/include/vision_msgs_rviz_plugins/bounding_box_3d.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'bounding_box_3d.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_rviz_plugins__BoundingBox3DDisplay_t {
    QByteArrayData data[6];
    char stringdata0[87];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_rviz_plugins__BoundingBox3DDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_rviz_plugins__BoundingBox3DDisplay_t qt_meta_stringdata_rviz_plugins__BoundingBox3DDisplay = {
    {
QT_MOC_LITERAL(0, 0, 34), // "rviz_plugins::BoundingBox3DDi..."
QT_MOC_LITERAL(1, 35, 10), // "updateEdge"
QT_MOC_LITERAL(2, 46, 0), // ""
QT_MOC_LITERAL(3, 47, 15), // "updateLineWidth"
QT_MOC_LITERAL(4, 63, 11), // "updateAlpha"
QT_MOC_LITERAL(5, 75, 11) // "updateColor"

    },
    "rviz_plugins::BoundingBox3DDisplay\0"
    "updateEdge\0\0updateLineWidth\0updateAlpha\0"
    "updateColor"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_rviz_plugins__BoundingBox3DDisplay[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   34,    2, 0x09 /* Protected */,
       3,    0,   35,    2, 0x09 /* Protected */,
       4,    0,   36,    2, 0x09 /* Protected */,
       5,    0,   37,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void rviz_plugins::BoundingBox3DDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<BoundingBox3DDisplay *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->updateEdge(); break;
        case 1: _t->updateLineWidth(); break;
        case 2: _t->updateAlpha(); break;
        case 3: _t->updateColor(); break;
        default: ;
        }
    }
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject rviz_plugins::BoundingBox3DDisplay::staticMetaObject = { {
    QMetaObject::SuperData::link<BoundingBox3DCommon<vision_msgs::msg::BoundingBox3D>::staticMetaObject>(),
    qt_meta_stringdata_rviz_plugins__BoundingBox3DDisplay.data,
    qt_meta_data_rviz_plugins__BoundingBox3DDisplay,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *rviz_plugins::BoundingBox3DDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *rviz_plugins::BoundingBox3DDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_rviz_plugins__BoundingBox3DDisplay.stringdata0))
        return static_cast<void*>(this);
    return BoundingBox3DCommon<vision_msgs::msg::BoundingBox3D>::qt_metacast(_clname);
}

int rviz_plugins::BoundingBox3DDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = BoundingBox3DCommon<vision_msgs::msg::BoundingBox3D>::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
