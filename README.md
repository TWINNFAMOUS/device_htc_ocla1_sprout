# device_htc_ocla1_sprout
device tree for building twrp for htc u11 life android one edition

Device source cloned from @captain_throwback here https://github.com/CaptainThrowback/android_device_htc_ime and modified using files from ocla1_sprout
More changes are needed.




htc_ocla1_sprout:/ # cat /proc/partitions                         
major minor  #blocks  name

   1        0       8192 ram0
   1        1       8192 ram1
   1        2       8192 ram2
   1        3       8192 ram3
   1        4       8192 ram4
   1        5       8192 ram5
   1        6       8192 ram6
   1        7       8192 ram7
   1        8       8192 ram8
   1        9       8192 ram9
   1       10       8192 ram10
   1       11       8192 ram11
   1       12       8192 ram12
   1       13       8192 ram13
   1       14       8192 ram14
   1       15       8192 ram15
 253        0    1914328 zram0
 179        0   61071360 mmcblk0
 179        1         16 mmcblk0p1
 179        2        256 mmcblk0p2
 179        3       4096 mmcblk0p3
 179        4      24255 mmcblk0p4
 179        5       3584 mmcblk0p5
 179        6       4096 mmcblk0p6
 179        7        512 mmcblk0p7
 179        8        512 mmcblk0p8
 179        9        512 mmcblk0p9
 179       10       4096 mmcblk0p10
 179       11      65536 mmcblk0p11
 179       12      10240 mmcblk0p12
 179       13          1 mmcblk0p13
 179       14       1024 mmcblk0p14
 179       15       1024 mmcblk0p15
 179       16       1024 mmcblk0p16
 179       17        256 mmcblk0p17
 179       18        256 mmcblk0p18
 179       19          1 mmcblk0p19
 179       20      10240 mmcblk0p20
 179       21       1024 mmcblk0p21
 179       22       1024 mmcblk0p22
 179       23     112640 mmcblk0p23
 179       24       2048 mmcblk0p24
 179       25      20480 mmcblk0p25
 179       26       1024 mmcblk0p26
 179       27       8733 mmcblk0p27
 179       28          4 mmcblk0p28
 179       29       1024 mmcblk0p29
 179       30       8192 mmcblk0p30
 179       31      65536 mmcblk0p31
 259        0       2048 mmcblk0p32
 259        1       1024 mmcblk0p33
 259        2       1277 mmcblk0p34
 259        3       2048 mmcblk0p35
 259        4       2048 mmcblk0p36
 259        5      20480 mmcblk0p37
 259        6      30720 mmcblk0p38
 259        7       1281 mmcblk0p39
 259        8         64 mmcblk0p40
 259        9       1024 mmcblk0p41
 259       10          8 mmcblk0p42
 259       11      32768 mmcblk0p43
 259       12         16 mmcblk0p44
 259       13        512 mmcblk0p45
 259       14      10240 mmcblk0p46
 259       15      46080 mmcblk0p47
 259       16        512 mmcblk0p48
 259       17       1024 mmcblk0p49
 259       18      16384 mmcblk0p50
 259       19         16 mmcblk0p51
 259       20      20480 mmcblk0p52
 259       21       1431 mmcblk0p53
 259       22      65536 mmcblk0p54
 259       23    2998272 mmcblk0p55
 259       24       3584 mmcblk0p56
 259       25       4096 mmcblk0p57
 259       26        512 mmcblk0p58
 259       27        512 mmcblk0p59
 259       28        512 mmcblk0p60
 259       29       4096 mmcblk0p61
 259       30      65536 mmcblk0p62
 259       31       1024 mmcblk0p63
 259       32       1024 mmcblk0p64
 259       33       1024 mmcblk0p65
 259       34       1024 mmcblk0p66
 259       35     112640 mmcblk0p67
 259       36      20480 mmcblk0p68
 259       37       1024 mmcblk0p69
 259       38        512 mmcblk0p70
 259       39       1024 mmcblk0p71
 259       40      16384 mmcblk0p72
 259       41        256 mmcblk0p73
 259       42          1 mmcblk0p74
 259       43        128 mmcblk0p75
 259       44         64 mmcblk0p76
 259       45     819200 mmcblk0p77
 259       46       8192 mmcblk0p78
 259       47        128 mmcblk0p79
 259       48         64 mmcblk0p80
 259       49     819200 mmcblk0p81
 259       50       8192 mmcblk0p82
 259       51        127 mmcblk0p83
 259       52      65536 mmcblk0p84
 259       53    2998272 mmcblk0p85
 259       54   52502528 mmcblk0p86
 179       32       4096 mmcblk0rpmb
 252        0   52502528 dm-0
   7       64      65536 loop64
 179       64   15159296 mmcblk1
 179       65   15155200 mmcblk1p1
htc_ocla1_sprout:/ # cat /proc/filesystems
nodev   sysfs
nodev   rootfs
nodev   ramfs
nodev   bdev
nodev   proc
nodev   cpuset
nodev   cgroup
nodev   cgroup2
nodev   tmpfs
nodev   configfs
nodev   debugfs
nodev   tracefs
nodev   sockfs
nodev   pipefs
nodev   devpts
        ext3
        ext2
        ext4
        vfat
        msdos
nodev   ecryptfs
nodev   sdcardfs
        fuseblk
nodev   fuse
nodev   fusectl
nodev   pstore
nodev   selinuxfs
nodev   functionfs
        texfat
