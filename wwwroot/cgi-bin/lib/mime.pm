# AWSTATS MIME DATABASE
#-------------------------------------------------------
# If you want to add MIME types,
# you must add an entry in MimeFamily and may be MimeHashLib
#-------------------------------------------------------
# $Revision$ - $Author$ - $Date$


#package AWSMIME;


# MimeHashLib
# List of mime's label ("mime id in lower case", "mime text")
#---------------------------------------------------------------
%MimeHashLib = (
'text',      'Text file',
'page',      'HTML or XML static page',
'script',    'Dynamic Html page or Script file',
'pl',        'Dynamic Perl Script file',
'php',       'Dynamic PHP Script file',
'image',     'Image',
'document',  'Document',
'package',   'Package',
'archive',   'Archive',
'audio',     'Audio file',
'video',     'Video file',
'javascript','JavaScript file',
'vbs',       'Visual Basic script',
'conf',      'Config file',
'css',       'Cascading Style Sheet file',
'xsl',       'Extensible Stylesheet Language file',
'runtime',   'Binary runtime',
'library',   'Binary library',
'swf',       'Adobe Flash Animation',
'flv',       'Adobe Flash Video',
'dtd',       'Document Type Definition',
'csv',       'Comma Separated Value file',
'jnlp',      'Java Web Start launch file',
'lit',       'Microsoft Reader e-book',
'svg',       'Scalable Vector Graphics',
'ai',        'Adobe Illustrator file',
'phshop',    'Adobe Photoshop image file',
'ttf',       'TrueType scalable font file',
'fon',       'Font file',
'pdf',       'Adobe Acrobat file',
'dotnet',	 'Dot Net Dynamic Script or File',
'mdb', 		 'MS Database Object',
'crystal',	 'Crystal Reports data or file',
'ooffice',	 'Open Office Document',
'encrypt',	 'Encrypted document',
);

# MimeHashIcon
# Each Mime ID is associated to a string that is the name of icon
# file for this Mime type.
#---------------------------------------------------------------------------
%MimeHashIcon = (
# Text file
'txt','text',
'log','text',
# HTML Static page
'chm','html',
'html','html',
'htm','html',
'hdml','html',
'mht','html',
'wml','html',
'wmlp','html',
'xhtml','html',
'xml','html',
'vak','glasses',
'sgm','html',
'sgml','html',
# HTML Dynamic pages or script
'asp','script',
'aspx','dotnet', 
'ashx','dotnet',  
'asmx','dotnet', 
'axd', 'dotnet',
'cfm','script',
'jsp','script',
'cgi','script',
'ksh','script',
'php','php',
'php3','php',
'php4','php',
'pl','pl',
'py','script',
'sh','script',
'shtml','html',
'tcl','script',
'xsp','script',
'rss','rss',
# Image
'gif','image',
'png','image',
'bmp','image',
'jpg','image',
'jpeg','image',
'cdr','image',
'ico','image',
'svg','svg',
'psd','phshop',
# Document
'doc','doc',
'wmz','doc',
'rtf','doc',
'pdf','pdf',
'frl','pdf',
'xls','xls',
'ppt','ppt',
'pps','ppt',
'mso','doc',
'sxw','ooffice',
'sxc','ooffice',
'sxi','ooffice',
'sxd','ooffice',
'sxm','ooffice',
'sxg','ooffice',
'csv','other',
'xsl','html',
'lit','lit',
'ai','ai',
'mdb','mdb',
'rpt','crystal',
# Package
'rpm',($LogType eq 'S'?'audio':'archive'),
'deb','archive',
'msi','archive',
# Archive
'7z','archive',
'ace','archive',
'bz2','archive',
'cab','archive',
'emz','archive',
'gz','archive',
'jar','archive',
'lzma','archive',
'rar','archive',
'tar','archive',
'tgz','archive',
'tbz2','archive',
'z','archive',
'zip','archive',
# Audio
'aac','audio',
'flac','audio',
'mp3','audio',
'oga','audio',
'ogg','audio',
'wma','audio',
'wav','audio',
'm4a','audio',
'm3u','audio',
'asf','audio',
# Video
'avi','video',
'divx','video',
'mp4','video',
'm4v','video',
'mpeg','video',
'mpg','video',
'ogv','video',
'ogx','video',
'rm','real',
'swf','flash',
'flv','flash',
'f4v','flash',
'wmv','video',
'wmf','video',
'mov','quicktime',
'qt','quicktime',
# Web scripts
'js','jscript',
'vbs','jscript',
# Config
'cf','other',
'conf','other',
'css','css',
'ini','other',
'dtd','other',
# Program
'exe','script',
'dll','script',
'jnlp','jnlp',
'bin', 'library',
# Fonts
'ttf','ttf',
'fon','fon',
# Encrypted files
'pgp','encrypt',
'gpg','encrypt',
);


%MimeHashFamily=(
# Text file
'txt','text',
'log','text',
# HTML Static page
'chm','page',
'html','page',
'htm','page',
'mht','page',
'wml','page',
'wmlp','page',
'xhtml','page',
'xml','page',
'vak','page',
'sgm','page',
'sgml','page',
# HTML Dynamic pages or script
'asp','script',
'aspx','dotnet',
'ashx','dotnet',  
'asmx','dotnet', 
'axd', 'dotnet',
'cfm','script',
'jsp','script',
'cgi','script',
'ksh','script',
'php','php',
'php3','php',
'php4','php',
'pl','pl',
'py','script',
'sh','script',
'shtml','script',
'tcl','script',
'xsp','script',
'rss','rss',
# Image
'gif','image',
'png','image',
'bmp','image',
'jpg','image',
'jpeg','image',
'cdr','image',
'ico','image',
'svg','svg',
'psd','phshop',
'ai','ai',
# Document
'doc','document',
'wmz','document',
'rtf','document',
'mso','document',
'pdf','pdf',
'frl','pdf',
'xls','document',
'ppt','document',
'pps','document',
'sxw','ooffice',
'sxc','ooffice',
'sxi','ooffice',
'sxd','ooffice',
'sxm','ooffice',
'sxg','ooffice',
'csv','csv',
'xsl','xsl',
'lit','lit',
'mdb','mdb',
'rpt','crystal',
# Package
'rpm',($LogType eq 'S'?'audio':'package'),
'deb','package',
'msi','package',
# Archive
'7z','archive',
'ace','archive',
'bz2','archive',
'cab','archive',
'emz','archive',
'gz','archive',
'jar','archive',
'lzma','archive',
'rar','archive',
'tar','archive',
'tgz','archive',
'tbz2','archive',
'z','archive',
'zip','archive',
# Audio
'aac','audio',
'flac','audio',
'mp3','audio',
'oga','audio',
'ogg','audio',
'wav','audio',
'wma','audio',
'm4a','audio',
'm3u','audio',
'asf','audio',
# Video
'avi','video',
'divx','video',
'mp4','video',
'm4v','video',
'mpeg','video',
'mpg','video',
'ogv','video',
'ogx','video',
'rm','video',
'swf','swf',
'flv','flv',
'f4v','flv',
'wmv','video',
'wmf','video',
'mov','video',
'qt','video',
# Web scripts
'js','javascript',
'vbs','vbs',
# Config
'cf','conf',
'conf','conf',
'css','css',
'ini','conf',
'dtd','dtd',
# Program
'exe','runtime',
'jnlp','jnlp',
'dll','library',
'bin', 'library',
# Font
'ttf','ttf',
'fon','fon',
# Encrypted files
'pgp','encrypt',
'gpg','encrypt',
);


1;
