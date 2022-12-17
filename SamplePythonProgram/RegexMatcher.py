import re
class RegexMatcher:
    """Class Untuk Manage File
    """
    def __init__(self,sString):
        """Konstruktor Untuk Menginisialisasikan Variable Global
        __init__(self,sString):
        Args :
            sString(str) : String Yang Akan Dicocokan
        """
        self.sString=sString
    def PathMatcher(self):
        """Fungsi Untuk Mencocokan Ke Sebuah Format Path
        PathMatcher(self):
        Args :
            Tidak Ada
        Returns :
            Sebuah String "False" atau String Formatted Path ("X:\Dir1\Dir2\")
        """
        if(re.search(r"^[A-Z]{1}:\\[^/:*?\"<>|]*",self.sString)):
            if(re.search(r"\\$",self.sString)):
                pass
            else:
                self.sString=self.sString+"\\"
            return self.sString
        else:
            return "False"