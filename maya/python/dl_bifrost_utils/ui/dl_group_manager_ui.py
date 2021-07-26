from PySide2 import QtCore
from PySide2 import QtWidgets

from . import maya_main_window


class GroupManager(QtWidgets.QDialog):
    def __init__(self, parent=maya_main_window.get_maya_instance()):
        super(GroupManager, self).__init__(parent)

        self.setWindowTitle("DL Group Manager")
        self.setMinimumWidth(300)
        self.setMinimumHeight(500)
        self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)
