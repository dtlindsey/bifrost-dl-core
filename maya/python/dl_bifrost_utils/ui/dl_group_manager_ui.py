from PySide2 import QtCore
from PySide2 import QtWidgets

from . import maya_main_window

from maya import cmds


class GroupManager(QtWidgets.QDialog):
    def __init__(self, parent=maya_main_window.get_maya_instance()):
        super(GroupManager, self).__init__(parent)
        # data
        self._first_group_name = ""  # this is the group we'll be adding/removing items to/from later
        self._second_group_names = []  # this is the groups we'll be using to add to/from later
        self._first_set_items = []  # stores the set info of the selected group in first_list
        self._second_set_items = []  # stores the set info of the selected group in second_list
        self._new_group_name = None  # this is used for the new group we may want to create
        #
        self.setWindowTitle("DL Group Manager")
        self.setMinimumWidth(300)
        self.setMinimumHeight(500)
        self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)
        self.setAttribute(QtCore.Qt.WA_DeleteOnClose)
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
        self._first_group_list.doubleClicked.connect(self._rename_selected_item)

        # second groups
        self._second_group_list = QtWidgets.QListWidget()
        self._second_group_list.setSortingEnabled(True)
        self._second_group_list.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self._second_group_list.clicked.connect(self._second_group_select)
        self._second_group_list.itemSelectionChanged.connect(self._second_group_select)

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
        text, ok = QtWidgets.QInputDialog.getText(self, "DL Group Manager: New", "New Selection Set Name")
        # build the new selection set
        if ok:
            self._create_set_and_select(text)

    def _del_group_push(self):
        print("delete selection set.")
        self._update_selection_data()
        if self._first_group_name:
            cmds.delete(self._first_group_name)
            self._list_all_selection_sets()
            self._update_selection_data()

    def _add_to_group_push(self):
        print("add elements to selected group.")
        self._update_selection_data()
        if self._second_set_items:
            cmds.sets(self._second_set_items, edit=True, addElement=self._first_group_name)
            self._update_selection_data()

    def _remove_from_group_push(self):
        print("remove elements from selected group.")
        self._update_selection_data()
        if self._second_set_items:
            cmds.sets(self._second_set_items, remove=self._first_group_name)
            self._update_selection_data()

    def _list_all_selection_sets(self):
        """
        This creates the list data in of teh groups
        """
        default_sets = cmds.ls(['defaultLightSet*', 'defaultObjectSet*', 'initialParticleSE*', 'initialShadingGroup*'],
                               type="objectSet")
        selection_sets = cmds.ls(type="objectSet")
        # remove the defaults
        for default_set in default_sets:
            selection_sets.remove(default_set)
        # remove the data first
        self._first_group_list.clear()
        self._second_group_list.clear()
        # add the data
        self._first_group_list.addItems(selection_sets)
        self._second_group_list.addItems(selection_sets)

    def _first_group_select(self):
        #
        q_sel_group_items = self._first_group_list.selectedItems()
        # get the set name
        for q_sel_item in q_sel_group_items:
            self._first_group_name = q_sel_item.text()
        #
        # get first group info
        if self._first_group_name:
            self._first_set_items = cmds.sets(self._first_group_name, query=True)
        self._update_selection()

    def _rename_selected_item(self):
        # launch a ui to rename
        print("Double clicked {}".format(self._first_group_name))

    def _second_group_select(self):
        #
        q_sel_group_items = self._second_group_list.selectedItems()
        if q_sel_group_items:
            sel_group_items = []
            # need to convert the data to strings to be able to use in maya.cmds
            for q_item in q_sel_group_items:
                sel_group_items.append(q_item.text())
            #
            print("selected: {}".format(str(sel_group_items)))
            self._second_group_names = sel_group_items
            # get second group info
            if self._second_group_names:
                self._second_set_items = cmds.sets(self._second_group_names, query=True)
                self._update_selection()

    def _update_selection_data(self):
        self._first_group_select()
        self._second_group_select()

    def _create_set_and_select(self, new_group):
        # create the new selection set
        self._new_group_name = cmds.sets(name=new_group, empty=True)
        # select in the UI
        self._list_all_selection_sets()
        #
        item_to_sel = self._first_group_list.findItems(self._new_group_name, QtCore.Qt.MatchExactly)
        self._first_group_list.setCurrentItem(item_to_sel[0])
        #
        self._update_selection_data()

    def _update_selection(self):
        # select the data
        set_items = self._first_set_items + self._second_set_items
        self.select_set_items(set_items)

    @staticmethod
    def select_set_items(set_items):
        cmds.select(set_items, replace=True)
