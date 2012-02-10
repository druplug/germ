; Germ makefile

core = 7.x
api = 2

; fix for Entity's SelectQuery::fields(), see http://drupal.org/node/1158114#comment-4863562.
; projects[drupal][patch][] = http://drupal.org/files/issues/drupal.taxonomy_might_not_exist.patch

projects[activity][subdir] = contrib
projects[activity][version] = 1.x-dev

projects[auto_nodetitle][subdir] = contrib
projects[auto_nodetitle][version] = 1.0

projects[ctools][subdir] = contrib
projects[ctools][version] = 1.0-rc1

projects[date][subdir] = contrib
projects[date][version] = 2.0-rc1

projects[entity][subdir] = contrib
projects[entity][version] = 1.0-rc1

projects[features][subdir] = contrib
projects[features][version] = 1.0-beta6

projects[jeditable][subdir] = contrib
projects[jeditable][version] = 1.x-dev

projects[pathauto][subdir] = contrib
projects[pathauto][version] = 1.0

projects[references][subdir] = contrib
projects[references][version] = 2.0

projects[rules][subdir] = contrib
projects[rules][version] = 2.0

projects[serial][type] = module
projects[serial][download][type] = "git"
projects[serial][subdir] = "contrib"
projects[serial][download][url] = git://github.com/druplug/serial.git

projects[simplify][type] = module
projects[simplify][download][type] = "git"
projects[simplify][subdir] = "contrib"
projects[simplify][download][url] = git://github.com/druplug/simplify.git

projects[strongarm][subdir] = contrib
projects[strongarm][version] = 2.0-beta5

projects[token][subdir] = contrib
projects[token][version] = 1.0-beta7

projects[views][subdir] = contrib
projects[views][version] = 3.1

projects[wysiwyg][subdir] = contrib
projects[wysiwyg][version] = 2.1

; Custom
projects[germ_core][type] = module
projects[germ_core][download][type] = "git"
projects[germ_core][subdir] = "custom"
projects[germ_core][download][url] = git://github.com/druplug/germ_core.git

projects[germ_features][type] = module
projects[germ_features][download][type] = "git"
projects[germ_features][subdir] = "custom"
projects[germ_features][download][url] = git://github.com/druplug/germ_features.git

projects[wysiwyg_features][type] = module
projects[wysiwyg_features][download][type] = git
projects[wysiwyg_features][subdir] = custom
projects[wysiwyg_features][download][url] = git://github.com/druplug/wysiwyg_features.git


; Development
projects[devel][subdir] = dev
projects[devel][version] = 1.2

projects[simpletest][subdir] = dev
projects[simpletest][version] = 2.0


; Libraries
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.zip
libraries[ckeditor][download][directory_name] = ckeditor
libraries[ckeditor][download][destination] = libraries

; Themes
projects[ninesixty][subdir] = contrib
projects[ninesixty][version] = 1.0

projects[microbe][type] = theme
projects[microbe][download][type] = git
projects[microbe][subdir] = custom
projects[microbe][download][url] = git://github.com/druplug/microbe.git
