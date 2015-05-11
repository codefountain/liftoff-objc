#!/bin/bash

commandDir="$(dirname "$BASH_SOURCE")"
#echo $commandDir

#<%= project_name %>.strings – the file(s) to exclude
#<%= project_name %>.xcodeproj – the Xcode project to use
#Resources – the folder to put the generated constants file
xcres build --verbose --name "R" --exclude "<%= project_name %>.strings" "$commandDir/../<%= project_name %>.xcodeproj" "$commandDir/../Resources/OtherSources/"
