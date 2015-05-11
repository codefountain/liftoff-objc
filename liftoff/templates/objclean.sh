if [[ -z ${SKIP_OBJCLEAN} || ${SKIP_OBJCLEAN} != 1 ]]; then
if [[ -d "${LOCAL_APPS_DIR}/Objective-Clean.app" ]]; then
"${LOCAL_APPS_DIR}"/Objective-Clean.app/Contents/Resources/ObjClean.app/Contents/MacOS/ObjClean "${SRCROOT}"
else
echo "warning: Install Objective-Clean to enforce style guide"
fi
fi
