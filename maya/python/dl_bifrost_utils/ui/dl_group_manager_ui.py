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
        # layouts
        self._main_layout = None
        self._left_group_layout = None
        self._left_buttons_layout = None
        self._right_button_layout = None
        self._right_group_layout = None
        # widgets
        self._first_group_list = None
        self._new_group_button = None
        self._del_group_button = None
        self._second_group_list = None
        self._add_to_button = None
        self._remove_from_button = None

        self._create_widgets()
        self._create_layouts()

    def _create_widgets(self):
        self._first_group_list = QtWidgets.QListWidget()
        self._second_group_list = QtWidgets.QListWidget()
        self._new_group_button = QtWidgets.QPushButton(text="New Group")
        self._del_group_button = QtWidgets.QPushButton(text="Del Group")
        self._add_to_button = QtWidgets.QPushButton(text="+")
        self._remove_from_button = QtWidgets.QPushButton(text="-")

    def _create_layouts(self):
        self._main_layout = QtWidgets.QHBoxLayout(self)
        self._left_group_layout = QtWidgets.QVBoxLayout()
        self._right_group_layout = QtWidgets.QVBoxLayout()
        self._left_buttons_layout = QtWidgets.QHBoxLayout()
        self._right_button_layout = QtWidgets.QHBoxLayout()
        # left layout
        self._left_group_layout.addWidget(self._first_group_list)
        self._left_buttons_layout.addWidget(self._new_group_button)
        self._left_buttons_layout.addWidget(self._del_group_button)
        self._left_group_layout.addLayout(self._left_buttons_layout)
        # right layout
        self._right_group_layout.addWidget(self._second_group_list)
        self._right_button_layout.addWidget(self._add_to_button)
        self._right_button_layout.addWidget(self._remove_from_button)
        self._right_group_layout.addLayout(self._right_button_layout)
        # main layout
        self._main_layout.addLayout(self._left_group_layout)
        self._main_layout.addLayout(self._right_group_layout)
