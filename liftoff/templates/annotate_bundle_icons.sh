#!/bin/bash

commit=`git rev-parse --short HEAD`
text="${CONFIGURATION}-${commit}"

#Update PATH in order to access imagemagick commands
PATH=/usr/local/bin:$PATH

function annotate_icons() {
    if [[ "$CONFIGURATION" = "Debug" ]]; then
	color='#A3231C'
    elif [[ "$CONFIGURATION" = "Nightly" ]]; then
	color='#3A1DA3'
    elif [[ "$CONFIGURATION" = "Preview" ]]; then
	color='#52B3B1'
    else
	color='#6BAB0C'
    fi
#Find the icon names in the info.plist inside the app bundle
    bundle_path="${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"
    icons=`/usr/libexec/PlistBuddy -c "print :CFBundleIcons:CFBundlePrimaryIcon:CFBundleIconFiles" ${bundle_path}/Info.plist | grep -v { | grep -v }`

#Add label to icons
    for icon in $icons
    do
	icon=`echo $icon | tr -d ' '`
	for abs_path in `find "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}" -name ${icon}*.png`
	do
	    xcrun -sdk iphoneos pngcrush -revert-iphone-optimizations "${abs_path}" "${abs_path}.tmp"
	    mv "${abs_path}.tmp" "${abs_path}"
	    "${SRCROOT}/Scripts/annotate.sh" -t $text -i $abs_path -o $abs_path -c $color
	done
    done
}

if [[ `which convert` == "" ]]; then
    echo "You need imagemagick and ghostscript in order to annotate icons, run brew install imagemagick && brew install ghostscript"
    exit -1
elif [[ "$CONFIGURATION" = "Release" || "$CONFIGURATION" = "AppStore" ]]; then
    echo "Skipping icon annotation"
    exit 0
else
    annotate_icons
fi
