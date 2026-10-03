#!/bin/sh
keytool -genkeypair -v -keystore release.jks -alias upload -keyalg RSA -keysize 2048 -validity 9125 -storepass 'uoz8D8xrJ4b8dtLFRyc4' -keypass 'uoz8D8xrJ4b8dtLFRyc4' -dname "CN=My App, O=My App, C=IN"
mv release.jks android/app/release.jks
keytool -list -v -keystore android/app/release.jks -alias upload -storepass 'uoz8D8xrJ4b8dtLFRyc4' | grep SHA256
