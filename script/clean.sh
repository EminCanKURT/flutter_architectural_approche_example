#!/bin/bash

flutter clean; flutter pub get; cd ios; pod deintegrate; pod install; cd ..; flutter pub get;
# ios için kullanılır.
# pod deintegrate; pod install;
# bunu kullanmamızın sebebi, ios için kullanılan pod dosyasının
# flutter ile uyumlu olmayan bir dosya olduğu için.
# flutter pub get; bunu kullanmamızın sebebi, flutter için kullanılan pub.yaml dosyasının
# ios için kullanılan pod dosyasının flutter ile uyumlu olmayan bir dosya olduğu için.