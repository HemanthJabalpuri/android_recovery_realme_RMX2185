#!/sbin/sh
if [ -d /proc/oppoVersion ]; then
  # We are in Realme UI 1.0 Android 10, so continue decryption
  setprop crypto.ready 1
else
  # We are in Realme UI 2.0 Android 11, decryption will not work in it
  # so skip decryption
  #rm /system/etc/vintf/manifest.xml
  rm /vendor/etc/vintf/manifest.xml
  setprop crypto.ready 0
fi

