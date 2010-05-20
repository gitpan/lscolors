# doc colorscheme for bash ls listing
# syntax: 
# export LS_COLORS='pattern=num;num;num:pattern=num;num;num'

# to transform into the LS_COLORS value string..
# cat ~/.lscolorscheme-docs | grep '\w' | grep -v '^#' | sed 's/#.\+//' | perl -lane 'printf "%s=%s:", shift @F, join ";", @F;'

# to enable this colorscheme, in your shell run the command '. ~/path/to/thisfile'
# then try ls ~/
export LS_COLORS=$( \
( grep '\w' | grep -v '^#' | sed 's/#.\+//' | perl -lane 'printf "%s=%s:", shift @F, join ";", @F;' ) <<< "

# HUMAN_FORMATTED_DATA
# list one per line

# these are basic filesystem items
no 00          # normal
fi 00          # file
di 00 34       # directory
ln 00 36       # link
pi 40 33       # pipe
so 00 35       # 
bd 40 33 01 
cd 40 33 01 
or 01 05 37 41 
mi 01 05 37 41 
ex 00 91       # executable



*.cmd 00 32 
*.exe 00 32 

# archive, compressed things etc
*.gz  00 90
*.bz2 00 90
*.bz  00 90
*.tz  00 90
*.rpm 00 90
*.rar 00 90
*.zip 00 90
*.iso 00 90


*.cpio 00 31 



# perl & CODE
*.c      33
*.h      33
*.sh     33
*.t      33
*.pm     33
*.pl     33
*.cgi    33
*.pod    33
*.PL     33
*.js     33
*.php    33
#*.xs

# strikethrough
*.off 00 9 
*.bak 00 9
*.old 00 9


# documents misc, html webstuff
# really TEXT
*.htm    94
*.html   94
*.txt    94
*.text   94
*.css    94


# MOVIE
*.avi    96
*.wmv    96
*.mpeg   96
*.mpg    96
*.mov    96
*.AVI    96
*.WMV    96
*.mkv    96

# images & pdf
*.jpg    96
*.jpeg   96
*.png    96
*.xcf    96
*.JPG    96
*.gif    96
*.svg    96
*.eps 00 96
*.pdf 00 96
*.PDF 00 96
*.ps  00 96

*.ai  00 91 # adobe ill
*.doc 00 91 # msword shit

# data, such as .db, .csv
*.csv    95
*.dsv    95
*.db     95
*.sql    95
*.meta   95
# CONFS
*.xml    95
*.yaml   95
*.yml    95
*.conf   95
# [a-z0-9]*rc
")

#echo GOT: $LS_COLORS
#export LS_COLORS

# The codes are:
# code  0 = default colour
# code  1 = bold
# code  4 = underlined
# code  5 = flashing text
# code  6 = no change
# code  7  = reverse field
# code  8 = black
# code  9 = strikethrough (cool!)
# code  10 - 29= no change
# code  30  = light green
# code  31  = red
# code  32  = green
# code  33  = orange
# code  34  = blue
# code  35  = purple
# code  36  = cyan
# code  37  = grey
# code  38 = underline
# code  39 = no change
# code  40  = black background
# code  41  = red background
# code  42  = green background
# code  43  = orange background
# code  44  = blue background
# code  45  = purple background
# code  46  = cyan background
# code  47  = grey background
# code  90  = dark grey
# code  91  = light red
# code  92  = light green
# code  93  = yellow
# code  94  = light blue
# code  95  = light purple
# code  96  = turquoise
# code  100 = dark grey background
# code  101 = light red background
# code  102 = light green background
# code  103 = yellow background
# code  104 = light blue background
# code  105 = light purple background
# code  106 = turquoise background
