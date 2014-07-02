rem This is my batch script and master plan for setting up a
rem new/recently wiped Windows computer.

rem Before wiping out your computer, make sure to back up:
rem    My Documents (which contains Calibre books)
rem    My Pictures
rem    Desktop
rem    Any non-GitHub work in dev or other workspaces
rem    Any registration keys (Microsoft Office, for example [cinst ProduKey])
rem Download driver installers from HP: http://h10025.www1.hp.com/ewfrf/wc/softwareCategory?os=4063&lc=en&cc=us&dlc=en&sw_lang=&product=4291430#N3046

rem This script assumes the username "nate", and must be run as
rem administrator for the mklink commands to work. You also must
rem have chocolatey installed, and it may be beneficial to install
rem all drivers first, as well. Disable user access control before
rem running.

rem Before using Sublime Text or dzil, sign in to DropBox and allow
rem some time for synching (so you don't overwrite the configuration
rem in DropBox).

rem install non-dev stuff first so I can play while the dev stuff installs
cinst GoogleChrome
cinst Evernote5
cinst dropbox
cinst adobereader
cinst windjview
cinst GSView
cinst skype
cinst Firefox
cinst audacity
cinst utorrent
cinst 7zip.install
cinst picasa
cinst calibre
cinst youtube-dl
cinst vlc
cinst spotify
cinst miktex

rem productivity
cinst virtuawin
cinst stexbar
cinst launchy

rem general development and utilities
cinst kdiff3
cinst git
cinst sliksvn
cinst tortoisesvn
cinst git-credential-winstore
cinst console-devel
cinst notepadplusplus
cinst sublimetext2
cinst poshgit
cinst putty
cinst sysinternals
cinst Gpg4win
cinst virtualbox
cinst winscp
cinst grepwin
cinst lockhunter
cinst dependencywalker
cinst nsis
cinst windirstat

rem configure git
git config --global user.name "Nathan Glenn"
git config --global user.email "garfieldnate@gmail.com"
git config --global merge.tool kdiff3
git config --global diff.tool kdiff3
git config --global core.editor "'c:/program files/sublime text 2/sublime_text.exe' -w"

rem synch Sublime Text settings via DropBox
mklink /D "C:\Users\nate\AppData\Roaming\Sublime Text 2\Installed Packages" "C:\Users\Nate\Dropbox\appdata\sublime\Installed Packages"
mklink /D "C:\Users\nate\AppData\Roaming\Sublime Text 2\Packages" "C:\Users\Nate\Dropbox\appdata\sublime\Packages"
mklink /D "C:\Users\nate\AppData\Roaming\Sublime Text 2\Pristine Packages" "C:\Users\Nate\Dropbox\appdata\sublime\Pristine Packages"

rem java
rem this also installs the JRE
cinst jdk8
cinst eclipse-standard-kepler
cinst ant
cinst maven
cinst gradle

rem native
cinst mingw
rem currently outdated
cinst cmake

rem web
cinst nodejs.install
cinst Brackets

rem softlink ~/.dzil to dropbox [TODO: make it a CPAN module instead]
mklink /D "C:\Users\nate\.dzil" "C:\Users\Nate\Dropbox\appdata\.dzil"

echo "---------------------"
echo "Done. Please do not open Sublime Text until DropBox is finished synching."
echo "Please do the following manually:"
echo "restore desktop"
echo "install drivers"
echo "restore pictures"
echo "restore workspaces"
echo "restore My Documents (including calibre books)"
echo "setup kleopatra to use the key in dropbox"
echo "if there is a windows.old folder, copy the iCare recovery kit installation from there, then run disk cleanup, since it can take 100 gigs or more"
echo "remove extraneous startup programs (such as Skype) via msconfig"
echo "customize startup menu to show run command, downloads and favorites"
echo "add workspace(s) and dev to favorites"
echo "set explorer options:"
echo "   show hidden files"
echo "   show protected files"
echo "   show extensions"
echo "   show full path in title bar"
echo "sign into DropBox and Evernote"

echo "Download/install the following by hand:"
echo "   Visual Studio"
echo "   DirectX (SDK)"
echo "   Microsft Office (http://www.heidoc.net/joomla/technology-science/microsoft/51-office-2007-direct-download-links)"
echo "   Mendeley"
echo "   sqlite dll"
echo "   MP3 codec for Audacity"
echo "   Soar"
echo "   DTA plugin for Firefox"
echo "   Flash plugin(s)"
echo "   Java plugin(s)"
echo "   keytweak; switch ctrl and caps lock"
echo "   portable versions of Strawberry Perl: 5.16, 5.18, 5.20"
echo "   Microsoft updates (make sure DirectX and SDK are installed first!)"

echo "---------------------"
echo "other programs that might be nice/necessary:"
echo "   WinHTTrack"
echo "   TikzEdit"
echo "   GrammarScope"
echo "   Real Player"
echo "   Texnic Center and Tex Studio"
echo "   Python, pip, R, Ruby, Octave"
echo "   MySQL/PostgreSQL"
echo "   Android Studio"
echo "   lessmsi"
echo "   open freely"
