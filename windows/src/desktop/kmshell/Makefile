#
# KMShell Makefile
#

!include ..\..\Defines.mak

build: version.res manifest.res icons xml
    $(MKVER_U) localedef.dtd.in xml\localedef.dtd $(MKVER_VERSION_TXT)
    $(PROGRAM)\buildtools\mkver -v $(MKVER_VERSION_TXT)
    $(DCC32) kmshell.dpr
    $(TDS2DBG) kmshell.exe 
    $(MAKEJCLDBG) kmshell.map
    $(COPY) kmshell.exe $(PROGRAM)\desktop
    if exist kmshell.dbg $(COPY) kmshell.dbg $(DEBUGPATH)\desktop

icons:
    rc icons.rc

xml:
    cd $(ROOT)\src\desktop\kmshell\xml
    -del /q $(ROOT)\bin\desktop\xml\*
    copy * $(ROOT)\bin\desktop\xml\   #
    cd $(ROOT)\src\desktop\kmshell


clean: def-clean
    if exist MessageIdentifiers.pas del MessageIdentifiers.pas
    if exist icons\icons.res del icons\icons.res
    if exist xml\localedef.dtd del xml\localedef.dtd

signcode:
    $(SIGNCODE) /d "Keyman Desktop" $(PROGRAM)\desktop\kmshell.exe

backup:
    $(WZZIP) $(BUILD)\desktop\kmshell.zip  $(BACKUPDEFAULTS) kmshell.exe

test-manifest:
    # test that (a) linked manifest exists and correct, and (b) has uiAccess=true
    $(MT) -nologo -inputresource:$(PROGRAM)\desktop\kmshell.exe -validate_manifest

install:
    copy $(ROOT)\bin\desktop\kmshell.exe "$(INSTALLPATH_KEYMANDESKTOP)"
    copy $(ROOT)\bin\desktop\xml\* "$(INSTALLPATH_KEYMANDESKTOP)\xml\"

!include ..\..\Target.mak
