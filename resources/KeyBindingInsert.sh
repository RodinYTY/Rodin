#bin/sh
file=/Applications/Xcode.app/Contents/Frameworks/IDEKit.framework/Resources/IDETextKeyBindingSet.plist
if [[ ! -f $file ]] ; then
    echo "\033[31mThe file $file does not exist. Please make sure Xcode has been installed.\033[0m"
    exit
fi

sudo chmod 666 /Applications/Xcode.app/Contents/Frameworks/IDEKit.framework/Resources/IDETextKeyBindingSet.plist
sudo chmod 777 /Applications/Xcode.app/Contents/Frameworks/IDEKit.framework/Resources/

line=$(sed -n '/Insertions and/=' $file)
((line++))

newLine1="\ \ \ \ \ \ \ \ <key>Delete Current Line</key>"
newLine2="\ \ \ \ \ \ \ \ <string>moveToEndOfLine:, deleteToBeginningOfLine:, deleteToEndOfParagraph:</string>"
newLine3="\ \ \ \ \ \ \ \ <key>Duplicate Current Line</key>"
newLine4="\ \ \ \ \ \ \ \ <string>selectLine:, copy:, moveToEndOfLine:, moveToBeginningOfLine:, paste:, moveBackward:</string>"
newLine5="\ \ \ \ \ \ \ \ <key>Insert Line Under</key>"
newLine6="\ \ \ \ \ \ \ \ <string>moveToEndOfLine:, insertNewline:</string>"

for((i=1;i<=6;i++));
    do
    sed -i '' "$line a\\
    $(eval echo '$'newLine$i)
    " $file
    ((line++))
done

echo "\033[32mInsert KeyBinding success. Please restart Xcode!\033[0m"

