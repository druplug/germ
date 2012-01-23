; Germ makefile

core = 7.x
api = 2

projects[auto_nodetitle][subdir] = contrib
projects[auto_nodetitle][version] = 1.0

projects[ctools][subdir] = contrib
projects[ctools][version] = 1.0-rc1

projects[date][subdir] = contrib
projects[date][version] = 2.0-rc1

projects[features][subdir] = contrib
projects[features][version] = 1.0-beta6

projects[jeditable][subdir] = contrib
projects[jeditable][version] = 1.x-dev

projects[pathauto][subdir] = contrib
projects[pathauto][version] = 1.0

projects[references][subdir] = contrib
projects[references][version] = 2.0

projects[serial][subdir] = contrib
projects[serial][version] = 1.2 

projects[simplify][type] = module
projects[simplify][download][type] = "git"
projects[simplify][subdir] = "contrib"
projects[simplify][download][url] = git://github.com/lakshminp/simplify.git

projects[strongarm][subdir] = contrib
projects[strongarm][version] = 2.0-beta5

projects[token][subdir] = contrib
projects[token][version] = 1.0-beta7

projects[views][subdir] = contrib
projects[views][version] = 3.1

projects[wysiwyg][subdir] = contrib
projects[wysiwyg][version] = 2.1

; Custom
projects[germ_features][type] = module
projects[germ_features][download][type] = "git"
projects[germ_features][subdir] = "custom"
projects[germ_features][download][url] = git://github.com/druplug/germ_features.git

projects[wysiwyg_features][type] = module
projects[wysiwyg_features][download][type] = git
projects[wysiwyg_features][subdir] = custom
projects[wysiwyg_features][download][url] = git://github.com/druplug/wysiwyg_features.git

; Libraries
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.zip
libraries[ckeditor][download][directory_name] = ckeditor
libraries[ckeditor][download][destination] = libraries

