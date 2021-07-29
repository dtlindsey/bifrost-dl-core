from PySide2 import QtCore
from PySide2 import QtWidgets

from . import maya_main_window

from maya import cmds

class GroupManager(QtWidgets.QDialog):
    def __init__(self, parent=maya_main_window.get_maya_instance()):
        super(GroupManager, self).__init__(parent)
        # data
        self._first_set_items = [] # stores the set info of the selected group in first_list
        #
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
        # first groups
        self._first_group_list = QtWidgets.QListWidget()
        self._first_group_list.setSortingEnabled(True)
        self._first_group_list.clicked.connect(self._first_group_select)

        # second groups
        self._second_group_list = QtWidgets.QListWidget()
        self._second_group_list.setSortingEnabled(True)
        self._second_group_list.clicked.connect(self._second_group_select)

        # build the list
        self._list_all_selection_sets()

        # new group button
        self._new_group_button = QtWidgets.QPushButton(text="New Group")
        self._new_group_button.clicked.connect(self._create_group_push)

        # delete group button
        self._del_group_button = QtWidgets.QPushButton(text="Del Group")
        self._del_group_button.clicked.connect(self._del_group_push)

        # add to button
        self._add_to_button = QtWidgets.QPushButton(text="+")
        self._add_to_button.clicked.connect(self._add_to_group_push)

        # remove from button
        self._remove_from_button = QtWidgets.QPushButton(text="-")
        self._remove_from_button.clicked.connect(self._remove_from_group_push)

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

    def _create_group_push(self):
        print("create new selection set.")

    def _del_group_push(self):
        print("delete selection set.")

    def _add_to_group_push(self):
        print("add elements to selected group.")

    def _remove_from_group_push(self):
        print("remove elements from selected group.")

    def _list_all_selection_sets(self):
        """
        This creates the list data in of teh groups
        """
        default_sets = ['defaultLightSet', 'defaultObjectSet', 'initialParticleSE', 'initialShadingGroup']
        selection_sets = cmds.ls(type="objectSet")
        # remove the defaults
        for default_set in default_sets:
            selection_sets.remove(default_set)
        #
        self._first_group_list.addItems(selection_sets)
        self._second_group_list.addItems(selection_sets)

    def _first_group_select(self):
        #
        q_sel_group_items = self._first_group_list.selectedItems()
        sel_group_items = [q_sel_group_items[0].text()]
        self._first_set_items = cmds.sets(sel_group_items, query=True)
        self.select_set_items(self._first_set_items)

    def _second_group_select(self):
        #
        q_sel_group_items = self._second_group_list.selectedItems()
        if q_sel_group_items:
            sel_group_items = []
            # need to convert the data to strings to be able to use in maya.cmds
            for q_item in q_sel_group_items:
                sel_group_items.append(q_item.text())
            #
            set_items = cmds.sets(sel_group_items, query=True)
            if self._first_set_items:
                set_items += self._first_set_items
            self.select_set_items(set_items)
        else:
            self.select_set_items(self._first_set_items)

    @staticmethod
    def select_set_items(set_items):
        cmds.select(clear=True)
        cmds.select(set_items)
