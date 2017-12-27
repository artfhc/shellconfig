
# BEGIN: Block added by chef, to set environment strings
# Please see https://fburl.com/AndroidProvisioning if you do not use bash
# or if you would rather this bit of code 'live' somewhere else
. ~/.fbchef/environment
# END: Block added by chef
export FBANDROID_DIR=/Users/afung/fbsource/fbandroid
alias quicklog_update=/Users/afung/fbsource/fbandroid/scripts/quicklog/quicklog_update.sh
alias qlu=quicklog_update
alias tup='adb shell input text lfgabseipy_1510776581@tfbnw.net; adb shell input keyevent 61; adb shell input text livewithit; adb shell input keyevent 66; adb shell input keyevent 66'

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home

# Customize the editor in mercurial
export EDITOR=vim

bgraph() {
  echo Querying buck allpaths...
  buck query "allpaths($1, $2)" --dot > ~/Desktop/result.dot
  echo Done creating result.  Converting result to image...
  dot -Tpng ~/Desktop/result.dot -o ~/Desktop/image.png
  echo Done creating image...
}

# added by setup_fb4a.sh
export ANDROID_SDK=/opt/android_sdk
export ANDROID_NDK_REPOSITORY=/opt/android_ndk
export ANDROID_HOME=${ANDROID_SDK}
export PATH=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/Contents/Home/bin:${PATH}:${ANDROID_SDK}/emulator:${ANDROID_SDK}/tools:${ANDROID_SDK}/platform-tools
