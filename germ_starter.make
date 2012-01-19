 Stub makefile for Germ
; Get Drupal 7 core and the profile which contains a .make file that will
; download all the required projects/libraries.

core = 7.x
api = 2

projects[] = drupal


; Setup the Germ profile from this make file stub.
projects[germ][type] = "profile"
projects[germ][download][type] = git
projects[germ][download][url] = https://github.com/druplug/germ.git

