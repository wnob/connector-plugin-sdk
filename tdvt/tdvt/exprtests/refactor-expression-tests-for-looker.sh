# This script automatically refactors the expression tests to use Looker's column format
# e.g. `calcs`.`calcs.bool0` instead of just `calcs`.`bool0`.

for field in \
    bool0 bool1 bool2 bool3 \
    date0 date1 date2 date3 \
    datetime0 datetime1 \
    int0 int1 int2 int3 \
    num0 num1 num2 num3 num4 \
    str0 str1 str2 str3 \
    time0 time1 \
    key zzz
do
    find . -name 'setup.*.txt' | xargs sed -i "s/\[${field}\]/[calcs.${field}]/g"
done
