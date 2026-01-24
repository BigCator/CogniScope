// generated from rosidl_generator_py/resource/_idl_support.c.em
// with input from common_unique_msgs:msg/Location.idl
// generated code does not contain a copyright notice
#define NPY_NO_DEPRECATED_API NPY_1_7_API_VERSION
#include <Python.h>
#include <stdbool.h>
#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-function"
#endif
#include "numpy/ndarrayobject.h"
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif
#include "rosidl_runtime_c/visibility_control.h"
#include "common_unique_msgs/msg/detail/location__struct.h"
#include "common_unique_msgs/msg/detail/location__functions.h"

bool common_unique_msgs__msg__uni_header__convert_from_py(PyObject * _pymsg, void * _ros_message);
PyObject * common_unique_msgs__msg__uni_header__convert_to_py(void * raw_ros_message);

ROSIDL_GENERATOR_C_EXPORT
bool common_unique_msgs__msg__location__convert_from_py(PyObject * _pymsg, void * _ros_message)
{
  // check that the passed message is of the expected Python class
  {
    char full_classname_dest[42];
    {
      char * class_name = NULL;
      char * module_name = NULL;
      {
        PyObject * class_attr = PyObject_GetAttrString(_pymsg, "__class__");
        if (class_attr) {
          PyObject * name_attr = PyObject_GetAttrString(class_attr, "__name__");
          if (name_attr) {
            class_name = (char *)PyUnicode_1BYTE_DATA(name_attr);
            Py_DECREF(name_attr);
          }
          PyObject * module_attr = PyObject_GetAttrString(class_attr, "__module__");
          if (module_attr) {
            module_name = (char *)PyUnicode_1BYTE_DATA(module_attr);
            Py_DECREF(module_attr);
          }
          Py_DECREF(class_attr);
        }
      }
      if (!class_name || !module_name) {
        return false;
      }
      snprintf(full_classname_dest, sizeof(full_classname_dest), "%s.%s", module_name, class_name);
    }
    assert(strncmp("common_unique_msgs.msg._location.Location", full_classname_dest, 41) == 0);
  }
  common_unique_msgs__msg__Location * ros_message = _ros_message;
  {  // header
    PyObject * field = PyObject_GetAttrString(_pymsg, "header");
    if (!field) {
      return false;
    }
    if (!common_unique_msgs__msg__uni_header__convert_from_py(field, &ros_message->header)) {
      Py_DECREF(field);
      return false;
    }
    Py_DECREF(field);
  }
  {  // ui_satel_lon
    PyObject * field = PyObject_GetAttrString(_pymsg, "ui_satel_lon");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ui_satel_lon = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // ui_satel_lat
    PyObject * field = PyObject_GetAttrString(_pymsg, "ui_satel_lat");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ui_satel_lat = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // ui_satel_alt
    PyObject * field = PyObject_GetAttrString(_pymsg, "ui_satel_alt");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ui_satel_alt = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // uc_satle_state
    PyObject * field = PyObject_GetAttrString(_pymsg, "uc_satle_state");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->uc_satle_state = (uint8_t)PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }
  {  // ui_nav_lon
    PyObject * field = PyObject_GetAttrString(_pymsg, "ui_nav_lon");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ui_nav_lon = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // ui_nav_lat
    PyObject * field = PyObject_GetAttrString(_pymsg, "ui_nav_lat");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ui_nav_lat = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // ui_nav_alt
    PyObject * field = PyObject_GetAttrString(_pymsg, "ui_nav_alt");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ui_nav_alt = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // us_nav_yaw
    PyObject * field = PyObject_GetAttrString(_pymsg, "us_nav_yaw");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->us_nav_yaw = (uint16_t)PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }
  {  // s_nav_pitch
    PyObject * field = PyObject_GetAttrString(_pymsg, "s_nav_pitch");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->s_nav_pitch = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // s_nav_roll
    PyObject * field = PyObject_GetAttrString(_pymsg, "s_nav_roll");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->s_nav_roll = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // s_nav_vx
    PyObject * field = PyObject_GetAttrString(_pymsg, "s_nav_vx");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->s_nav_vx = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // s_nav_vy
    PyObject * field = PyObject_GetAttrString(_pymsg, "s_nav_vy");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->s_nav_vy = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // s_nav_vz
    PyObject * field = PyObject_GetAttrString(_pymsg, "s_nav_vz");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->s_nav_vz = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // s_nav_wx
    PyObject * field = PyObject_GetAttrString(_pymsg, "s_nav_wx");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->s_nav_wx = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // s_nav_wy
    PyObject * field = PyObject_GetAttrString(_pymsg, "s_nav_wy");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->s_nav_wy = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // s_nav_wz
    PyObject * field = PyObject_GetAttrString(_pymsg, "s_nav_wz");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->s_nav_wz = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // ui_mileage
    PyObject * field = PyObject_GetAttrString(_pymsg, "ui_mileage");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ui_mileage = PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }
  {  // ul_satel_time
    PyObject * field = PyObject_GetAttrString(_pymsg, "ul_satel_time");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ul_satel_time = PyLong_AsUnsignedLongLong(field);
    Py_DECREF(field);
  }
  {  // ui_work_time
    PyObject * field = PyObject_GetAttrString(_pymsg, "ui_work_time");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ui_work_time = PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }
  {  // uc_work_state
    PyObject * field = PyObject_GetAttrString(_pymsg, "uc_work_state");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->uc_work_state = (uint8_t)PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }
  {  // uc_nav_state
    PyObject * field = PyObject_GetAttrString(_pymsg, "uc_nav_state");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->uc_nav_state = (uint8_t)PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }
  {  // reserve1
    PyObject * field = PyObject_GetAttrString(_pymsg, "reserve1");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->reserve1 = (uint16_t)PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }
  {  // reserve2
    PyObject * field = PyObject_GetAttrString(_pymsg, "reserve2");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->reserve2 = (uint16_t)PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }
  {  // us_check_sum
    PyObject * field = PyObject_GetAttrString(_pymsg, "us_check_sum");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->us_check_sum = (uint16_t)PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }

  return true;
}

ROSIDL_GENERATOR_C_EXPORT
PyObject * common_unique_msgs__msg__location__convert_to_py(void * raw_ros_message)
{
  /* NOTE(esteve): Call constructor of Location */
  PyObject * _pymessage = NULL;
  {
    PyObject * pymessage_module = PyImport_ImportModule("common_unique_msgs.msg._location");
    assert(pymessage_module);
    PyObject * pymessage_class = PyObject_GetAttrString(pymessage_module, "Location");
    assert(pymessage_class);
    Py_DECREF(pymessage_module);
    _pymessage = PyObject_CallObject(pymessage_class, NULL);
    Py_DECREF(pymessage_class);
    if (!_pymessage) {
      return NULL;
    }
  }
  common_unique_msgs__msg__Location * ros_message = (common_unique_msgs__msg__Location *)raw_ros_message;
  {  // header
    PyObject * field = NULL;
    field = common_unique_msgs__msg__uni_header__convert_to_py(&ros_message->header);
    if (!field) {
      return NULL;
    }
    {
      int rc = PyObject_SetAttrString(_pymessage, "header", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // ui_satel_lon
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->ui_satel_lon);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ui_satel_lon", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // ui_satel_lat
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->ui_satel_lat);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ui_satel_lat", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // ui_satel_alt
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->ui_satel_alt);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ui_satel_alt", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // uc_satle_state
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->uc_satle_state);
    {
      int rc = PyObject_SetAttrString(_pymessage, "uc_satle_state", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // ui_nav_lon
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->ui_nav_lon);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ui_nav_lon", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // ui_nav_lat
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->ui_nav_lat);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ui_nav_lat", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // ui_nav_alt
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->ui_nav_alt);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ui_nav_alt", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // us_nav_yaw
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->us_nav_yaw);
    {
      int rc = PyObject_SetAttrString(_pymessage, "us_nav_yaw", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // s_nav_pitch
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->s_nav_pitch);
    {
      int rc = PyObject_SetAttrString(_pymessage, "s_nav_pitch", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // s_nav_roll
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->s_nav_roll);
    {
      int rc = PyObject_SetAttrString(_pymessage, "s_nav_roll", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // s_nav_vx
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->s_nav_vx);
    {
      int rc = PyObject_SetAttrString(_pymessage, "s_nav_vx", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // s_nav_vy
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->s_nav_vy);
    {
      int rc = PyObject_SetAttrString(_pymessage, "s_nav_vy", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // s_nav_vz
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->s_nav_vz);
    {
      int rc = PyObject_SetAttrString(_pymessage, "s_nav_vz", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // s_nav_wx
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->s_nav_wx);
    {
      int rc = PyObject_SetAttrString(_pymessage, "s_nav_wx", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // s_nav_wy
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->s_nav_wy);
    {
      int rc = PyObject_SetAttrString(_pymessage, "s_nav_wy", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // s_nav_wz
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->s_nav_wz);
    {
      int rc = PyObject_SetAttrString(_pymessage, "s_nav_wz", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // ui_mileage
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->ui_mileage);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ui_mileage", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // ul_satel_time
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLongLong(ros_message->ul_satel_time);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ul_satel_time", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // ui_work_time
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->ui_work_time);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ui_work_time", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // uc_work_state
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->uc_work_state);
    {
      int rc = PyObject_SetAttrString(_pymessage, "uc_work_state", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // uc_nav_state
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->uc_nav_state);
    {
      int rc = PyObject_SetAttrString(_pymessage, "uc_nav_state", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // reserve1
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->reserve1);
    {
      int rc = PyObject_SetAttrString(_pymessage, "reserve1", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // reserve2
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->reserve2);
    {
      int rc = PyObject_SetAttrString(_pymessage, "reserve2", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // us_check_sum
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->us_check_sum);
    {
      int rc = PyObject_SetAttrString(_pymessage, "us_check_sum", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }

  // ownership of _pymessage is transferred to the caller
  return _pymessage;
}
