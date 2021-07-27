from SeleniumLibrary import SeleniumLibrary
from .Keywords import TableKeyword
__version__ = '1.0.0'


class S2RetailLibrary(SeleniumLibrary):

    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def __init__(self):
        SeleniumLibrary.__init__(self, 30)

        # REINVENT THE WHEEL

        self.add_library_components(
            [
                TableKeyword(self),
            ]
        )