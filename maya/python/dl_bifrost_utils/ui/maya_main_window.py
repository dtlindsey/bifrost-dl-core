from PySide2 import QtWidgets
import shiboken2
import types

from maya import OpenMayaUI as omui


def get_maya_instance():
    """
    Return the Maya main window instance as a python pointer
    """
    main_win_ptr = int(omui.MQtUtil.mainWindow())
    if not main_win_ptr:
        raise Exception("No Maya window found.")
    return shiboken2.wrapInstance(main_win_ptr, QtWidgets.QWidget)

