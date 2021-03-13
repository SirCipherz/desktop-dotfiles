#!/usr/bin/python3
# stollen from here : https://github.com/alexanderjeurissen/ranger_devicons
# and modified a little bit
import re;
import os;

file_node_extensions = {
    '7z'       : '',
    'apk'      : '',
    'aup'      : '',
    'avi'      : '',
    'bz2'      : '',
    'db'       : '',
    'deb'      : '',
    'doc'      : '',
    'docx'     : '',
    'epub'     : '',
    'flac'     : '',
    'flv'      : '',
    'gif'      : '🖻',
    'gz'       : '',
    'gzip'     : '',
    'jpeg'     : '🖻',
    'jpg'      : '🖻',
    'log'      : '',
    'm4a'      : '',
    'm4v'      : '',
    'markdown' : '🖹',
    'md'       : '🖹',
    'mkv'      : '',
    'mov'      : '',
    'mp3'      : '',
    'mp4'      : '',
    'mpeg'     : '',
    'mpg'      : '',
    'ogg'      : '',
    'pdf'      : '',
    'png'      : '🖻',
    'rar'      : '',
    'rpm'      : '',
    'rtf'      : '',
    'tar'      : '',
    'tex'      : '',
    'tgz'      : '',
    'wav'      : '',
    'webm'     : '',
    'webp'     : '🖻',
    'zip'      : '',
    'py'       : '⛭',
    'c'        : '⛭',
    'cpp'      : '⛭',
    'h'        : '⛭',
    'hpp'      : '⛭',
    'asm'      : '⛭',
    'cxx'      : '⛭',
    'js'       : '⛭',
    'lue'      : '⛭',
    'o'        : '⛭',
    'jar'      : '⛭',
    'pyc'      : '⛭',
    'out'      : '⛭',
    'bin'      : '⛭',
    'sh'       : '⛭',
}

dir_node_exact_matches = {
    'docs'                             : '',
    'dl'                               : '',
    'music'                            : '',
    'pics'                             : '🖻',
    'vids'                             : '',
}

file_node_exact_matches = {
    'license'                          : '🖹',
    'LICENSE'                          : '🖹',
    'LICENSE.md'                       : '🖹',
    'LICENSE.txt'                      : '🖹',
}

def devicon(file):
  if file.is_directory: return dir_node_exact_matches.get(file.relative_path, '🖿')
  return file_node_exact_matches.get(os.path.basename(file.relative_path), file_node_extensions.get(file.extension, '🗌'))
