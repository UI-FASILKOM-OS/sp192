#!/bin/bash
input="test-filed.txt"
while IFS= read -r line
do
  eval "$line"
done < "$input"

# cat - << NNNN
# 01 START START START START START START START START START START START START START
# 12345678911234567892123456789312345678941234567895123456789612345678971234567898
#          10        20        30        40        50        60        70       79

# 12345678911234567892123456789312345678941234567895123456789612345678971234567898

#          10        20        30        40        50        60        70       79
# 12345678911234567892123456789312345678941234567895123456789612345678971234567898
# 09 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

# XXXXX                           TEST FOR 80 x 23                           XXXXX

# XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# 12345678911234567892123456789312345678941234567895123456789612345678971234567898
#          10        20        30        40        50        60        70       79

#          10        20        30        40        50        60        70       79
# 12345678911234567892123456789312345678941234567895123456789612345678971234567898
# 19 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

#          10        20        30        40        50        60        70       79
# 12345678911234567892123456789312345678941234567895123456789612345678971234567898
# 23 END END END END END END END END END  ====   H I T   E N T E R   K E Y   =====
# NNNN
# read YY