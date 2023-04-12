#!/bin/tcsh -xef


# Start from /Volumes/Data2/rchambers/Music/GroupAnalysis
# Analyzed subject files must be copied into this subfolder

# Controls
# gunzip stats.new.9003+tlrc.BRIK.gz
# gunzip stats.new.9006+tlrc.BRIK.gz
# gunzip stats.new.9007+tlrc.BRIK.gz
# gunzip stats.new.9010+tlrc.BRIK.gz
# gunzip stats.new.9016+tlrc.BRIK.gz
# gunzip stats.new.9017+tlrc.BRIK.gz
# gunzip stats.new.9018+tlrc.BRIK.gz
# gunzip stats.new.9019+tlrc.BRIK.gz
# gunzip stats.new.9022+tlrc.BRIK.gz
# gunzip stats.new.9029+tlrc.BRIK.gz
# gunzip stats.new.9032+tlrc.BRIK.gz
# gunzip stats.new.9033+tlrc.BRIK.gz
# gunzip stats.new.9036+tlrc.BRIK.gz
# gunzip stats.new.9037+tlrc.BRIK.gz
# gunzip stats.new.9073+tlrc.BRIK.gz
# gunzip stats.new.9075+tlrc.BRIK.gz
# gunzip stats.new.9077+tlrc.BRIK.gz
# gunzip stats.new.9078+tlrc.BRIK.gz
# gunzip stats.new.9080+tlrc.BRIK.gz
# gunzip stats.new.9081+tlrc.BRIK.gz
# 
# 
# # Depressed
# gunzip stats.new.9015+tlrc.BRIK.gz
# gunzip stats.new.9027+tlrc.BRIK.gz
# gunzip stats.new.9041+tlrc.BRIK.gz
# gunzip stats.new.9047+tlrc.BRIK.gz
# gunzip stats.new.9048+tlrc.BRIK.gz
# gunzip stats.new.9049+tlrc.BRIK.gz
# gunzip stats.new.9050+tlrc.BRIK.gz
# gunzip stats.new.9051+tlrc.BRIK.gz
# gunzip stats.new.9053+tlrc.BRIK.gz
# gunzip stats.new.9054+tlrc.BRIK.gz
# gunzip stats.new.9055+tlrc.BRIK.gz
# gunzip stats.new.9058+tlrc.BRIK.gz
# gunzip stats.new.9060+tlrc.BRIK.gz
# gunzip stats.new.9064+tlrc.BRIK.gz
# gunzip stats.new.9065+tlrc.BRIK.gz
# gunzip stats.new.9067+tlrc.BRIK.gz
# gunzip stats.new.9068+tlrc.BRIK.gz
# gunzip stats.new.9069+tlrc.BRIK.gz
# gunzip stats.new.9071+tlrc.BRIK.gz
# gunzip stats.new.9076+tlrc.BRIK.gz


# Run t-tests for first condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[1]' 9006 'stats.new.9006+tlrc[1]' 9007 'stats.new.9007+tlrc[1]' 9010 'stats.new.9010+tlrc[1]' 9016 'stats.new.9016+tlrc[1]' 9017 'stats.new.9017+tlrc[1]' 9018 'stats.new.9018+tlrc[1]' 9019 'stats.new.9019+tlrc[1]' 9022 'stats.new.9022+tlrc[1]' 9029 'stats.new.9029+tlrc[1]' 9032 'stats.new.9032+tlrc[1]' 9033 'stats.new.9033+tlrc[1]' 9036 'stats.new.9036+tlrc[1]' 9037 'stats.new.9037+tlrc[1]' 9073 'stats.new.9073+tlrc[1]' 9075 'stats.new.9075+tlrc[1]' 9077 'stats.new.9077+tlrc[1]' 9078 'stats.new.9078+tlrc[1]' 9080 'stats.new.9080+tlrc[1]' 9081 'stats.new.9081+tlrc[1]' -setB Dep 9015 'stats.new.9015+tlrc[1]' 9027 'stats.new.9027+tlrc[1]' 9041 'stats.new.9041+tlrc[1]' 9047 'stats.new.9047+tlrc[1]' 9048 'stats.new.9048+tlrc[1]' 9049 'stats.new.9049+tlrc[1]' 9050 'stats.new.9050+tlrc[1]' 9051 'stats.new.9051+tlrc[1]' 9053 'stats.new.9053+tlrc[1]' 9054 'stats.new.9054+tlrc[1]' 9055 'stats.new.9055+tlrc[1]' 9058 'stats.new.9058+tlrc[1]' 9060 'stats.new.9060+tlrc[1]' 9064 'stats.new.9064+tlrc[1]' 9065 'stats.new.9065+tlrc[1]' 9067 'stats.new.9067+tlrc[1]' 9068 'stats.new.9068+tlrc[1]' 9069 'stats.new.9069+tlrc[1]' 9071 'stats.new.9071+tlrc[1]' 9076 'stats.new.9076+tlrc[1]'
# 
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 PosMus_Ctrl-Dep_Mean -sublabel 1 PosMus_Ctrl-Dep_Tstat -sublabel 2 PosMus_Ctrl_Mean -sublabel 3 PosMus_Ctrl_Tstat -sublabel 4 PosMus_Dep_Mean -sublabel 5 PosMus_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_PosMus+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_PosMus+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[4]' 9006 'stats.new.9006+tlrc[4]' 9007 'stats.new.9007+tlrc[4]' 9010 'stats.new.9010+tlrc[4]' 9016 'stats.new.9016+tlrc[4]' 9017 'stats.new.9017+tlrc[4]' 9018 'stats.new.9018+tlrc[4]' 9019 'stats.new.9019+tlrc[4]' 9022 'stats.new.9022+tlrc[4]' 9029 'stats.new.9029+tlrc[4]' 9032 'stats.new.9032+tlrc[4]' 9033 'stats.new.9033+tlrc[4]' 9036 'stats.new.9036+tlrc[4]' 9037 'stats.new.9037+tlrc[4]' 9073 'stats.new.9073+tlrc[4]' 9075 'stats.new.9075+tlrc[4]' 9077 'stats.new.9077+tlrc[4]' 9078 'stats.new.9078+tlrc[4]' 9080 'stats.new.9080+tlrc[4]' 9081 'stats.new.9081+tlrc[4]' -setB Dep 9015 'stats.new.9015+tlrc[4]' 9027 'stats.new.9027+tlrc[4]' 9041 'stats.new.9041+tlrc[4]' 9047 'stats.new.9047+tlrc[4]' 9048 'stats.new.9048+tlrc[4]' 9049 'stats.new.9049+tlrc[4]' 9050 'stats.new.9050+tlrc[4]' 9051 'stats.new.9051+tlrc[4]' 9053 'stats.new.9053+tlrc[4]' 9054 'stats.new.9054+tlrc[4]' 9055 'stats.new.9055+tlrc[4]' 9058 'stats.new.9058+tlrc[4]' 9060 'stats.new.9060+tlrc[4]' 9064 'stats.new.9064+tlrc[4]' 9065 'stats.new.9065+tlrc[4]' 9067 'stats.new.9067+tlrc[4]' 9068 'stats.new.9068+tlrc[4]' 9069 'stats.new.9069+tlrc[4]' 9071 'stats.new.9071+tlrc[4]' 9076 'stats.new.9076+tlrc[4]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 NegMus_Ctrl-Dep_Mean -sublabel 1 NegMus_Ctrl-Dep_Tstat -sublabel 2 NegMus_Ctrl_Mean -sublabel 3 NegMus_Ctrl_Tstat -sublabel 4 NegMus_Dep_Mean -sublabel 5 NegMus_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_NegMus+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_NegMus+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[7]' 9006 'stats.new.9006+tlrc[7]' 9007 'stats.new.9007+tlrc[7]' 9010 'stats.new.9010+tlrc[7]' 9016 'stats.new.9016+tlrc[7]' 9017 'stats.new.9017+tlrc[7]' 9018 'stats.new.9018+tlrc[7]' 9019 'stats.new.9019+tlrc[7]' 9022 'stats.new.9022+tlrc[7]' 9029 'stats.new.9029+tlrc[7]' 9032 'stats.new.9032+tlrc[7]' 9033 'stats.new.9033+tlrc[7]' 9036 'stats.new.9036+tlrc[7]' 9037 'stats.new.9037+tlrc[7]' 9073 'stats.new.9073+tlrc[7]' 9075 'stats.new.9075+tlrc[7]' 9077 'stats.new.9077+tlrc[7]' 9078 'stats.new.9078+tlrc[7]' 9080 'stats.new.9080+tlrc[7]' 9081 'stats.new.9081+tlrc[7]' -setB Dep 9015 'stats.new.9015+tlrc[7]' 9027 'stats.new.9027+tlrc[7]' 9041 'stats.new.9041+tlrc[7]' 9047 'stats.new.9047+tlrc[7]' 9048 'stats.new.9048+tlrc[7]' 9049 'stats.new.9049+tlrc[7]' 9050 'stats.new.9050+tlrc[7]' 9051 'stats.new.9051+tlrc[7]' 9053 'stats.new.9053+tlrc[7]' 9054 'stats.new.9054+tlrc[7]' 9055 'stats.new.9055+tlrc[7]' 9058 'stats.new.9058+tlrc[7]' 9060 'stats.new.9060+tlrc[7]' 9064 'stats.new.9064+tlrc[7]' 9065 'stats.new.9065+tlrc[7]' 9067 'stats.new.9067+tlrc[7]' 9068 'stats.new.9068+tlrc[7]' 9069 'stats.new.9069+tlrc[7]' 9071 'stats.new.9071+tlrc[7]' 9076 'stats.new.9076+tlrc[7]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 PosIADS_Ctrl-Dep_Mean -sublabel 1 PosIADS_Ctrl-Dep_Tstat -sublabel 2 PosIADS_Ctrl_Mean -sublabel 3 PosIADS_Ctrl_Tstat -sublabel 4 PosIADS_Dep_Mean -sublabel 5 PosIADS_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_PosIADS+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_PosIADS+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[10]' 9006 'stats.new.9006+tlrc[10]' 9007 'stats.new.9007+tlrc[10]' 9010 'stats.new.9010+tlrc[10]' 9016 'stats.new.9016+tlrc[10]' 9017 'stats.new.9017+tlrc[10]' 9018 'stats.new.9018+tlrc[10]' 9019 'stats.new.9019+tlrc[10]' 9022 'stats.new.9022+tlrc[10]' 9029 'stats.new.9029+tlrc[10]' 9032 'stats.new.9032+tlrc[10]' 9033 'stats.new.9033+tlrc[10]' 9036 'stats.new.9036+tlrc[10]' 9037 'stats.new.9037+tlrc[10]' 9073 'stats.new.9073+tlrc[10]' 9075 'stats.new.9075+tlrc[10]' 9077 'stats.new.9077+tlrc[10]' 9078 'stats.new.9078+tlrc[10]' 9080 'stats.new.9080+tlrc[10]' 9081 'stats.new.9081+tlrc[10]' -setB Dep 9015 'stats.new.9015+tlrc[10]' 9027 'stats.new.9027+tlrc[10]' 9041 'stats.new.9041+tlrc[10]' 9047 'stats.new.9047+tlrc[10]' 9048 'stats.new.9048+tlrc[10]' 9049 'stats.new.9049+tlrc[10]' 9050 'stats.new.9050+tlrc[10]' 9051 'stats.new.9051+tlrc[10]' 9053 'stats.new.9053+tlrc[10]' 9054 'stats.new.9054+tlrc[10]' 9055 'stats.new.9055+tlrc[10]' 9058 'stats.new.9058+tlrc[10]' 9060 'stats.new.9060+tlrc[10]' 9064 'stats.new.9064+tlrc[10]' 9065 'stats.new.9065+tlrc[10]' 9067 'stats.new.9067+tlrc[10]' 9068 'stats.new.9068+tlrc[10]' 9069 'stats.new.9069+tlrc[10]' 9071 'stats.new.9071+tlrc[10]' 9076 'stats.new.9076+tlrc[10]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 NegIADS_Ctrl-Dep_Mean -sublabel 1 NegIADS_Ctrl-Dep_Tstat -sublabel 2 NegIADS_Ctrl_Mean -sublabel 3 NegIADS_Ctrl_Tstat -sublabel 4 NegIADS_Dep_Mean -sublabel 5 NegIADS_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_NegIADS+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_NegIADS+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[16]' 9006 'stats.new.9006+tlrc[16]' 9007 'stats.new.9007+tlrc[16]' 9010 'stats.new.9010+tlrc[16]' 9016 'stats.new.9016+tlrc[16]' 9017 'stats.new.9017+tlrc[16]' 9018 'stats.new.9018+tlrc[16]' 9019 'stats.new.9019+tlrc[16]' 9022 'stats.new.9022+tlrc[16]' 9029 'stats.new.9029+tlrc[16]' 9032 'stats.new.9032+tlrc[16]' 9033 'stats.new.9033+tlrc[16]' 9036 'stats.new.9036+tlrc[16]' 9037 'stats.new.9037+tlrc[16]' 9073 'stats.new.9073+tlrc[16]' 9075 'stats.new.9075+tlrc[16]' 9077 'stats.new.9077+tlrc[16]' 9078 'stats.new.9078+tlrc[16]' 9080 'stats.new.9080+tlrc[16]' 9081 'stats.new.9081+tlrc[16]' -setB Dep 9015 'stats.new.9015+tlrc[16]' 9027 'stats.new.9027+tlrc[16]' 9041 'stats.new.9041+tlrc[16]' 9047 'stats.new.9047+tlrc[16]' 9048 'stats.new.9048+tlrc[16]' 9049 'stats.new.9049+tlrc[16]' 9050 'stats.new.9050+tlrc[16]' 9051 'stats.new.9051+tlrc[16]' 9053 'stats.new.9053+tlrc[16]' 9054 'stats.new.9054+tlrc[16]' 9055 'stats.new.9055+tlrc[16]' 9058 'stats.new.9058+tlrc[16]' 9060 'stats.new.9060+tlrc[16]' 9064 'stats.new.9064+tlrc[16]' 9065 'stats.new.9065+tlrc[16]' 9067 'stats.new.9067+tlrc[16]' 9068 'stats.new.9068+tlrc[16]' 9069 'stats.new.9069+tlrc[16]' 9071 'stats.new.9071+tlrc[16]' 9076 'stats.new.9076+tlrc[16]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 AllAud_Ctrl-Dep_Mean -sublabel 1 AllAud_Ctrl-Dep_Tstat -sublabel 2 AllAud_Ctrl_Mean -sublabel 3 AllAud_Ctrl_Tstat -sublabel 4 AllAud_Dep_Mean -sublabel 5 AllAud_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_AllAud+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_AllAud+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[19]' 9006 'stats.new.9006+tlrc[19]' 9007 'stats.new.9007+tlrc[19]' 9010 'stats.new.9010+tlrc[19]' 9016 'stats.new.9016+tlrc[19]' 9017 'stats.new.9017+tlrc[19]' 9018 'stats.new.9018+tlrc[19]' 9019 'stats.new.9019+tlrc[19]' 9022 'stats.new.9022+tlrc[19]' 9029 'stats.new.9029+tlrc[19]' 9032 'stats.new.9032+tlrc[19]' 9033 'stats.new.9033+tlrc[19]' 9036 'stats.new.9036+tlrc[19]' 9037 'stats.new.9037+tlrc[19]' 9073 'stats.new.9073+tlrc[19]' 9075 'stats.new.9075+tlrc[19]' 9077 'stats.new.9077+tlrc[19]' 9078 'stats.new.9078+tlrc[19]' 9080 'stats.new.9080+tlrc[19]' 9081 'stats.new.9081+tlrc[19]' -setB Dep 9015 'stats.new.9015+tlrc[19]' 9027 'stats.new.9027+tlrc[19]' 9041 'stats.new.9041+tlrc[19]' 9047 'stats.new.9047+tlrc[19]' 9048 'stats.new.9048+tlrc[19]' 9049 'stats.new.9049+tlrc[19]' 9050 'stats.new.9050+tlrc[19]' 9051 'stats.new.9051+tlrc[19]' 9053 'stats.new.9053+tlrc[19]' 9054 'stats.new.9054+tlrc[19]' 9055 'stats.new.9055+tlrc[19]' 9058 'stats.new.9058+tlrc[19]' 9060 'stats.new.9060+tlrc[19]' 9064 'stats.new.9064+tlrc[19]' 9065 'stats.new.9065+tlrc[19]' 9067 'stats.new.9067+tlrc[19]' 9068 'stats.new.9068+tlrc[19]' 9069 'stats.new.9069+tlrc[19]' 9071 'stats.new.9071+tlrc[19]' 9076 'stats.new.9076+tlrc[19]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 MusAll_Ctrl-Dep_Mean -sublabel 1 MusAll_Ctrl-Dep_Tstat -sublabel 2 MusAll_Ctrl_Mean -sublabel 3 MusAll_Ctrl_Tstat -sublabel 4 MusAll_Dep_Mean -sublabel 5 MusAll_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_MusAll+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_MusAll+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[22]' 9006 'stats.new.9006+tlrc[22]' 9007 'stats.new.9007+tlrc[22]' 9010 'stats.new.9010+tlrc[22]' 9016 'stats.new.9016+tlrc[22]' 9017 'stats.new.9017+tlrc[22]' 9018 'stats.new.9018+tlrc[22]' 9019 'stats.new.9019+tlrc[22]' 9022 'stats.new.9022+tlrc[22]' 9029 'stats.new.9029+tlrc[22]' 9032 'stats.new.9032+tlrc[22]' 9033 'stats.new.9033+tlrc[22]' 9036 'stats.new.9036+tlrc[22]' 9037 'stats.new.9037+tlrc[22]' 9073 'stats.new.9073+tlrc[22]' 9075 'stats.new.9075+tlrc[22]' 9077 'stats.new.9077+tlrc[22]' 9078 'stats.new.9078+tlrc[22]' 9080 'stats.new.9080+tlrc[22]' 9081 'stats.new.9081+tlrc[22]' -setB Dep 9015 'stats.new.9015+tlrc[22]' 9027 'stats.new.9027+tlrc[22]' 9041 'stats.new.9041+tlrc[22]' 9047 'stats.new.9047+tlrc[22]' 9048 'stats.new.9048+tlrc[22]' 9049 'stats.new.9049+tlrc[22]' 9050 'stats.new.9050+tlrc[22]' 9051 'stats.new.9051+tlrc[22]' 9053 'stats.new.9053+tlrc[22]' 9054 'stats.new.9054+tlrc[22]' 9055 'stats.new.9055+tlrc[22]' 9058 'stats.new.9058+tlrc[22]' 9060 'stats.new.9060+tlrc[22]' 9064 'stats.new.9064+tlrc[22]' 9065 'stats.new.9065+tlrc[22]' 9067 'stats.new.9067+tlrc[22]' 9068 'stats.new.9068+tlrc[22]' 9069 'stats.new.9069+tlrc[22]' 9071 'stats.new.9071+tlrc[22]' 9076 'stats.new.9076+tlrc[22]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 IADSAll_Ctrl-Dep_Mean -sublabel 1 IADSAll_Ctrl-Dep_Tstat -sublabel 2 IADSAll_Ctrl_Mean -sublabel 3 IADSAll_Ctrl_Tstat -sublabel 4 IADSAll_Dep_Mean -sublabel 5 IADSAll_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_IADSAll+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_IADSAll+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[25]' 9006 'stats.new.9006+tlrc[25]' 9007 'stats.new.9007+tlrc[25]' 9010 'stats.new.9010+tlrc[25]' 9016 'stats.new.9016+tlrc[25]' 9017 'stats.new.9017+tlrc[25]' 9018 'stats.new.9018+tlrc[25]' 9019 'stats.new.9019+tlrc[25]' 9022 'stats.new.9022+tlrc[25]' 9029 'stats.new.9029+tlrc[25]' 9032 'stats.new.9032+tlrc[25]' 9033 'stats.new.9033+tlrc[25]' 9036 'stats.new.9036+tlrc[25]' 9037 'stats.new.9037+tlrc[25]' 9037 'stats.new.9037+tlrc[25]' 9075 'stats.new.9075+tlrc[25]' 9077 'stats.new.9077+tlrc[25]' 9078 'stats.new.9078+tlrc[25]' 9080 'stats.new.9080+tlrc[25]' 9081 'stats.new.9081+tlrc[25]' -setB Dep 9015 'stats.new.9015+tlrc[25]' 9027 'stats.new.9027+tlrc[25]' 9041 'stats.new.9041+tlrc[25]' 9047 'stats.new.9047+tlrc[25]' 9048 'stats.new.9048+tlrc[25]' 9049 'stats.new.9049+tlrc[25]' 9050 'stats.new.9050+tlrc[25]' 9051 'stats.new.9051+tlrc[25]' 9053 'stats.new.9053+tlrc[25]' 9054 'stats.new.9054+tlrc[25]' 9055 'stats.new.9055+tlrc[25]' 9058 'stats.new.9058+tlrc[25]' 9060 'stats.new.9060+tlrc[25]' 9064 'stats.new.9064+tlrc[25]' 9065 'stats.new.9065+tlrc[25]' 9067 'stats.new.9067+tlrc[25]' 9068 'stats.new.9068+tlrc[25]' 9069 'stats.new.9069+tlrc[25]' 9071 'stats.new.9071+tlrc[25]' 9076 'stats.new.9076+tlrc[25]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 PosM-NegM_Ctrl-Dep_Mean -sublabel 1 PosM-NegM_Ctrl-Dep_Tstat -sublabel 2 PosM-NegM_Ctrl_Mean -sublabel 3 PosM-NegM_Ctrl_Tstat -sublabel 4 PosM-NegM_Dep_Mean -sublabel 5 PosM-NegM_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_PosM-NegM+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_PosM-NegM+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[28]' 9006 'stats.new.9006+tlrc[28]' 9007 'stats.new.9007+tlrc[28]' 9010 'stats.new.9010+tlrc[28]' 9016 'stats.new.9016+tlrc[28]' 9017 'stats.new.9017+tlrc[28]' 9018 'stats.new.9018+tlrc[28]' 9019 'stats.new.9019+tlrc[28]' 9022 'stats.new.9022+tlrc[28]' 9029 'stats.new.9029+tlrc[28]' 9032 'stats.new.9032+tlrc[28]' 9033 'stats.new.9033+tlrc[28]' 9036 'stats.new.9036+tlrc[28]' 9037 'stats.new.9037+tlrc[28]' 9073 'stats.new.9073+tlrc[28]' 9075 'stats.new.9075+tlrc[28]' 9077 'stats.new.9077+tlrc[28]' 9078 'stats.new.9078+tlrc[28]' 9080 'stats.new.9080+tlrc[28]' 9081 'stats.new.9081+tlrc[28]' -setB Dep 9015 'stats.new.9015+tlrc[28]' 9027 'stats.new.9027+tlrc[28]' 9041 'stats.new.9041+tlrc[28]' 9047 'stats.new.9047+tlrc[28]' 9048 'stats.new.9048+tlrc[28]' 9049 'stats.new.9049+tlrc[28]' 9050 'stats.new.9050+tlrc[28]' 9051 'stats.new.9051+tlrc[28]' 9053 'stats.new.9053+tlrc[28]' 9054 'stats.new.9054+tlrc[28]' 9055 'stats.new.9055+tlrc[28]' 9058 'stats.new.9058+tlrc[28]' 9060 'stats.new.9060+tlrc[28]' 9064 'stats.new.9064+tlrc[28]' 9065 'stats.new.9065+tlrc[28]' 9067 'stats.new.9067+tlrc[28]' 9068 'stats.new.9068+tlrc[28]' 9069 'stats.new.9069+tlrc[28]' 9071 'stats.new.9071+tlrc[28]' 9076 'stats.new.9076+tlrc[28]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 PosI-NegI_Ctrl-Dep_Mean -sublabel 1 PosI-NegI_Ctrl-Dep_Tstat -sublabel 2 PosI-NegI_Ctrl_Mean -sublabel 3 PosI-NegI_Ctrl_Tstat -sublabel 4 PosI-NegI_Dep_Mean -sublabel 5 PosI-NegI_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_PosI-NegI+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_PosI-NegI+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[31]' 9006 'stats.new.9006+tlrc[31]' 9007 'stats.new.9007+tlrc[31]' 9010 'stats.new.9010+tlrc[31]' 9016 'stats.new.9016+tlrc[31]' 9017 'stats.new.9017+tlrc[31]' 9018 'stats.new.9018+tlrc[31]' 9019 'stats.new.9019+tlrc[31]' 9022 'stats.new.9022+tlrc[31]' 9029 'stats.new.9029+tlrc[31]' 9032 'stats.new.9032+tlrc[31]' 9033 'stats.new.9033+tlrc[31]' 9036 'stats.new.9036+tlrc[31]' 9037 'stats.new.9037+tlrc[31]' 9073 'stats.new.9073+tlrc[31]' 9075 'stats.new.9075+tlrc[31]' 9077 'stats.new.9077+tlrc[31]' 9078 'stats.new.9078+tlrc[31]' 9080 'stats.new.9080+tlrc[31]' 9081 'stats.new.9081+tlrc[31]' -setB Dep 9015 'stats.new.9015+tlrc[31]' 9027 'stats.new.9027+tlrc[31]' 9041 'stats.new.9041+tlrc[31]' 9047 'stats.new.9047+tlrc[31]' 9048 'stats.new.9048+tlrc[31]' 9049 'stats.new.9049+tlrc[31]' 9050 'stats.new.9050+tlrc[31]' 9051 'stats.new.9051+tlrc[31]' 9053 'stats.new.9053+tlrc[31]' 9054 'stats.new.9054+tlrc[31]' 9055 'stats.new.9055+tlrc[31]' 9058 'stats.new.9058+tlrc[31]' 9060 'stats.new.9060+tlrc[31]' 9064 'stats.new.9064+tlrc[31]' 9065 'stats.new.9065+tlrc[31]' 9067 'stats.new.9067+tlrc[31]' 9068 'stats.new.9068+tlrc[31]' 9069 'stats.new.9069+tlrc[31]' 9071 'stats.new.9071+tlrc[31]' 9076 'stats.new.9076+tlrc[31]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 PosM-PosI_Ctrl-Dep_Mean -sublabel 1 PosM-PosI_Ctrl-Dep_Tstat -sublabel 2 PosM-PosI_Ctrl_Mean -sublabel 3 PosM-PosI_Ctrl_Tstat -sublabel 4 PosM-PosI_Dep_Mean -sublabel 5 PosM-PosI_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_PosM-PosI+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_PosM-PosI+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[34]' 9006 'stats.new.9006+tlrc[34]' 9007 'stats.new.9007+tlrc[34]' 9010 'stats.new.9010+tlrc[34]' 9016 'stats.new.9016+tlrc[34]' 9017 'stats.new.9017+tlrc[34]' 9018 'stats.new.9018+tlrc[34]' 9019 'stats.new.9019+tlrc[34]' 9022 'stats.new.9022+tlrc[34]' 9029 'stats.new.9029+tlrc[34]' 9032 'stats.new.9032+tlrc[34]' 9033 'stats.new.9033+tlrc[34]' 9036 'stats.new.9036+tlrc[34]' 9037 'stats.new.9037+tlrc[34]' 9073 'stats.new.9073+tlrc[34]' 9075 'stats.new.9075+tlrc[34]' 9077 'stats.new.9077+tlrc[34]' 9078 'stats.new.9078+tlrc[34]' 9080 'stats.new.9080+tlrc[34]' 9081 'stats.new.9081+tlrc[34]' -setB Dep 9015 'stats.new.9015+tlrc[34]' 9027 'stats.new.9027+tlrc[34]' 9041 'stats.new.9041+tlrc[34]' 9047 'stats.new.9047+tlrc[34]' 9048 'stats.new.9048+tlrc[34]' 9049 'stats.new.9049+tlrc[34]' 9050 'stats.new.9050+tlrc[34]' 9051 'stats.new.9051+tlrc[34]' 9053 'stats.new.9053+tlrc[34]' 9054 'stats.new.9054+tlrc[34]' 9055 'stats.new.9055+tlrc[34]' 9058 'stats.new.9058+tlrc[34]' 9060 'stats.new.9060+tlrc[34]' 9064 'stats.new.9064+tlrc[34]' 9065 'stats.new.9065+tlrc[34]' 9067 'stats.new.9067+tlrc[34]' 9068 'stats.new.9068+tlrc[34]' 9069 'stats.new.9069+tlrc[34]' 9071 'stats.new.9071+tlrc[34]' 9076 'stats.new.9076+tlrc[34]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 NegM-NegI_Ctrl-Dep_Mean -sublabel 1 NegM-NegI_Ctrl-Dep_Tstat -sublabel 2 NegM-NegI_Ctrl_Mean -sublabel 3 NegM-NegI_Ctrl_Tstat -sublabel 4 NegM-NegI_Dep_Mean -sublabel 5 NegM-NegI_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_NegM-NegI+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_NegM-NegI+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[37]' 9006 'stats.new.9006+tlrc[37]' 9007 'stats.new.9007+tlrc[37]' 9010 'stats.new.9010+tlrc[37]' 9016 'stats.new.9016+tlrc[37]' 9017 'stats.new.9017+tlrc[37]' 9018 'stats.new.9018+tlrc[37]' 9019 'stats.new.9019+tlrc[37]' 9022 'stats.new.9022+tlrc[37]' 9029 'stats.new.9029+tlrc[37]' 9032 'stats.new.9032+tlrc[37]' 9033 'stats.new.9033+tlrc[37]' 9036 'stats.new.9036+tlrc[37]' 9037 'stats.new.9037+tlrc[37]' 9073 'stats.new.9073+tlrc[37]' 9075 'stats.new.9075+tlrc[37]' 9077 'stats.new.9077+tlrc[37]' 9078 'stats.new.9078+tlrc[37]' 9080 'stats.new.9080+tlrc[37]' 9081 'stats.new.9081+tlrc[37]' -setB Dep 9015 'stats.new.9015+tlrc[37]' 9027 'stats.new.9027+tlrc[37]' 9041 'stats.new.9041+tlrc[37]' 9047 'stats.new.9047+tlrc[37]' 9048 'stats.new.9048+tlrc[37]' 9049 'stats.new.9049+tlrc[37]' 9050 'stats.new.9050+tlrc[37]' 9051 'stats.new.9051+tlrc[37]' 9053 'stats.new.9053+tlrc[37]' 9054 'stats.new.9054+tlrc[37]' 9055 'stats.new.9055+tlrc[37]' 9058 'stats.new.9058+tlrc[37]' 9060 'stats.new.9060+tlrc[37]' 9064 'stats.new.9064+tlrc[37]' 9065 'stats.new.9065+tlrc[37]' 9067 'stats.new.9067+tlrc[37]' 9068 'stats.new.9068+tlrc[37]' 9069 'stats.new.9069+tlrc[37]' 9071 'stats.new.9071+tlrc[37]' 9076 'stats.new.9076+tlrc[37]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 PosAll-NegAll_Ctrl-Dep_Mean -sublabel 1 PosAll-NegAll_Ctrl-Dep_Tstat -sublabel 2 PosAll-NegAll_Ctrl_Mean -sublabel 3 PosAll-NegAll_Ctrl_Tstat -sublabel 4 PosAll-NegAll_Dep_Mean -sublabel 5 PosAll-NegAll_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_PosAll-NegAll+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_PosAll-NegAll+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[40]' 9006 'stats.new.9006+tlrc[40]' 9007 'stats.new.9007+tlrc[40]' 9010 'stats.new.9010+tlrc[40]' 9016 'stats.new.9016+tlrc[40]' 9017 'stats.new.9017+tlrc[40]' 9018 'stats.new.9018+tlrc[40]' 9019 'stats.new.9019+tlrc[40]' 9022 'stats.new.9022+tlrc[40]' 9029 'stats.new.9029+tlrc[40]' 9032 'stats.new.9032+tlrc[40]' 9033 'stats.new.9033+tlrc[40]' 9036 'stats.new.9036+tlrc[40]' 9037 'stats.new.9037+tlrc[40]' 9073 'stats.new.9073+tlrc[40]' 9075 'stats.new.9075+tlrc[40]' 9077 'stats.new.9077+tlrc[40]' 9078 'stats.new.9078+tlrc[40]' 9080 'stats.new.9080+tlrc[40]' 9081 'stats.new.9081+tlrc[40]' -setB Dep 9015 'stats.new.9015+tlrc[40]' 9027 'stats.new.9027+tlrc[40]' 9041 'stats.new.9041+tlrc[40]' 9047 'stats.new.9047+tlrc[40]' 9048 'stats.new.9048+tlrc[40]' 9049 'stats.new.9049+tlrc[40]' 9050 'stats.new.9050+tlrc[40]' 9051 'stats.new.9051+tlrc[40]' 9053 'stats.new.9053+tlrc[40]' 9054 'stats.new.9054+tlrc[40]' 9055 'stats.new.9055+tlrc[40]' 9058 'stats.new.9058+tlrc[40]' 9060 'stats.new.9060+tlrc[40]' 9064 'stats.new.9064+tlrc[40]' 9065 'stats.new.9065+tlrc[40]' 9067 'stats.new.9067+tlrc[40]' 9068 'stats.new.9068+tlrc[40]' 9069 'stats.new.9069+tlrc[40]' 9071 'stats.new.9071+tlrc[40]' 9076 'stats.new.9076+tlrc[40]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 MusAll-IADSAll_Ctrl-Dep_Mean -sublabel 1 MusAll-IADSAll_Ctrl-Dep_Tstat -sublabel 2 MusAll-IADSAll_Ctrl_Mean -sublabel 3 MusAll-IADSAll_Ctrl_Tstat -sublabel 4 MusAll-IADSAll_Dep_Mean -sublabel 5 MusAll-IADSAll_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_MusAll-IADSAll+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_MusAll-IADSAll+tlrc.HEAD'
# 
# Run t-tests for next condition of interest
# 3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[43]' 9006 'stats.new.9006+tlrc[43]' 9007 'stats.new.9007+tlrc[43]' 9010 'stats.new.9010+tlrc[43]' 9016 'stats.new.9016+tlrc[43]' 9017 'stats.new.9017+tlrc[43]' 9018 'stats.new.9018+tlrc[43]' 9019 'stats.new.9019+tlrc[43]' 9022 'stats.new.9022+tlrc[43]' 9029 'stats.new.9029+tlrc[43]' 9032 'stats.new.9032+tlrc[43]' 9033 'stats.new.9033+tlrc[43]' 9036 'stats.new.9036+tlrc[43]' 9037 'stats.new.9037+tlrc[43]' 9073 'stats.new.9073+tlrc[43]' 9075 'stats.new.9075+tlrc[43]' 9077 'stats.new.9077+tlrc[43]' 9078 'stats.new.9078+tlrc[43]' 9080 'stats.new.9080+tlrc[43]' 9081 'stats.new.9081+tlrc[43]' -setB Dep 9015 'stats.new.9015+tlrc[43]' 9027 'stats.new.9027+tlrc[43]' 9041 'stats.new.9041+tlrc[43]' 9047 'stats.new.9047+tlrc[43]' 9048 'stats.new.9048+tlrc[43]' 9049 'stats.new.9049+tlrc[43]' 9050 'stats.new.9050+tlrc[43]' 9051 'stats.new.9051+tlrc[43]' 9053 'stats.new.9053+tlrc[43]' 9054 'stats.new.9054+tlrc[43]' 9055 'stats.new.9055+tlrc[43]' 9058 'stats.new.9058+tlrc[43]' 9060 'stats.new.9060+tlrc[43]' 9064 'stats.new.9064+tlrc[43]' 9065 'stats.new.9065+tlrc[43]' 9067 'stats.new.9067+tlrc[43]' 9068 'stats.new.9068+tlrc[43]' 9069 'stats.new.9069+tlrc[43]' 9071 'stats.new.9071+tlrc[43]' 9076 'stats.new.9076+tlrc[43]'
# 
# Relabel sub-bricks so they can be identified when collapsed into a single file
# 3drefit -sublabel 0 FullIX_Ctrl-Dep_Mean -sublabel 1 FullIX_Ctrl-Dep_Tstat -sublabel 2 FullIX_Ctrl_Mean -sublabel 3 FullIX_Ctrl_Tstat -sublabel 4 FullIX_Dep_Mean -sublabel 5 FullIX_Dep_Tstat TTnew+tlrc.
# 
# Rename output file
# mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_FullIX+tlrc.BRIK'
# mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_FullIX+tlrc.HEAD'

# Did not include simple effects of Positive and Negative separately - RL 5-5-14
# Had to rerun 3ddeconvolve, so subbrick numbers are different
# Run t-tests for next condition of interest
3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[25]' 9006 'stats.new.9006+tlrc[25]' 9007 'stats.new.9007+tlrc[25]' 9010 'stats.new.9010+tlrc[25]' 9016 'stats.new.9016+tlrc[25]' 9017 'stats.new.9017+tlrc[25]' 9018 'stats.new.9018+tlrc[25]' 9019 'stats.new.9019+tlrc[25]' 9022 'stats.new.9022+tlrc[25]' 9029 'stats.new.9029+tlrc[25]' 9032 'stats.new.9032+tlrc[25]' 9033 'stats.new.9033+tlrc[25]' 9036 'stats.new.9036+tlrc[25]' 9037 'stats.new.9037+tlrc[25]' 9073 'stats.new.9073+tlrc[25]' 9075 'stats.new.9075+tlrc[25]' 9077 'stats.new.9077+tlrc[25]' 9078 'stats.new.9078+tlrc[25]' 9080 'stats.new.9080+tlrc[25]' 9081 'stats.new.9081+tlrc[25]' -setB Dep 9015 'stats.new.9015+tlrc[25]' 9027 'stats.new.9027+tlrc[25]' 9041 'stats.new.9041+tlrc[25]' 9047 'stats.new.9047+tlrc[25]' 9048 'stats.new.9048+tlrc[25]' 9049 'stats.new.9049+tlrc[25]' 9050 'stats.new.9050+tlrc[25]' 9051 'stats.new.9051+tlrc[25]' 9053 'stats.new.9053+tlrc[25]' 9054 'stats.new.9054+tlrc[25]' 9055 'stats.new.9055+tlrc[25]' 9058 'stats.new.9058+tlrc[25]' 9060 'stats.new.9060+tlrc[25]' 9064 'stats.new.9064+tlrc[25]' 9065 'stats.new.9065+tlrc[25]' 9067 'stats.new.9067+tlrc[25]' 9068 'stats.new.9068+tlrc[25]' 9069 'stats.new.9069+tlrc[25]' 9071 'stats.new.9071+tlrc[25]' 9076 'stats.new.9076+tlrc[25]'

# Relabel sub-bricks so they can be identified when collapsed into a single file
3drefit -sublabel 0 PosAll_Ctrl-Dep_Mean -sublabel 1 PosAll_Ctrl-Dep_Tstat -sublabel 2 PosAll_Ctrl_Mean -sublabel 3 PosAll_Ctrl_Tstat -sublabel 4 PosAll_Dep_Mean -sublabel 5 PosAll_Dep_Tstat TTnew+tlrc.

# Rename output file
mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_PosAll+tlrc.BRIK'
mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_PosAll+tlrc.HEAD'

# Run t-tests for next condition of interest
3dttest++ -setA Ctrl 9003 'stats.new.9003+tlrc[28]' 9006 'stats.new.9006+tlrc[28]' 9007 'stats.new.9007+tlrc[28]' 9010 'stats.new.9010+tlrc[28]' 9016 'stats.new.9016+tlrc[28]' 9017 'stats.new.9017+tlrc[28]' 9018 'stats.new.9018+tlrc[28]' 9019 'stats.new.9019+tlrc[28]' 9022 'stats.new.9022+tlrc[28]' 9029 'stats.new.9029+tlrc[28]' 9032 'stats.new.9032+tlrc[28]' 9033 'stats.new.9033+tlrc[28]' 9036 'stats.new.9036+tlrc[28]' 9037 'stats.new.9037+tlrc[28]' 9073 'stats.new.9073+tlrc[28]' 9075 'stats.new.9075+tlrc[28]' 9077 'stats.new.9077+tlrc[28]' 9078 'stats.new.9078+tlrc[28]' 9080 'stats.new.9080+tlrc[28]' 9081 'stats.new.9081+tlrc[28]' -setB Dep 9015 'stats.new.9015+tlrc[28]' 9027 'stats.new.9027+tlrc[28]' 9041 'stats.new.9041+tlrc[28]' 9047 'stats.new.9047+tlrc[28]' 9048 'stats.new.9048+tlrc[28]' 9049 'stats.new.9049+tlrc[28]' 9050 'stats.new.9050+tlrc[28]' 9051 'stats.new.9051+tlrc[28]' 9053 'stats.new.9053+tlrc[28]' 9054 'stats.new.9054+tlrc[28]' 9055 'stats.new.9055+tlrc[28]' 9058 'stats.new.9058+tlrc[28]' 9060 'stats.new.9060+tlrc[28]' 9064 'stats.new.9064+tlrc[28]' 9065 'stats.new.9065+tlrc[28]' 9067 'stats.new.9067+tlrc[28]' 9068 'stats.new.9068+tlrc[28]' 9069 'stats.new.9069+tlrc[28]' 9071 'stats.new.9071+tlrc[28]' 9076 'stats.new.9076+tlrc[28]'

# Relabel sub-bricks so they can be identified when collapsed into a single file
3drefit -sublabel 0 NegAll_Ctrl-Dep_Mean -sublabel 1 NegAll_Ctrl-Dep_Tstat -sublabel 2 NegAll_Ctrl_Mean -sublabel 3 NegAll_Ctrl_Tstat -sublabel 4 NegAll_Dep_Mean -sublabel 5 NegAll_Dep_Tstat TTnew+tlrc.

# Rename output file
mv 'TTnew+tlrc.BRIK' 'TT_20C-20D_NegAll+tlrc.BRIK'
mv 'TTnew+tlrc.HEAD' 'TT_20C-20D_NegAll+tlrc.HEAD'

# Put output files into a bucket file
3dbucket -prefix TT_20C-20D_Results_New_050614 				'TT_20C-20D_PosMus+tlrc[0..$]' 			\
								'TT_20C-20D_NegMus+tlrc[0..$]' 			\
								'TT_20C-20D_PosIADS+tlrc[0..$]' 		\
								'TT_20C-20D_NegIADS+tlrc[0..$]' 		\
								'TT_20C-20D_AllAud+tlrc[0..$]' 			\
								'TT_20C-20D_MusAll+tlrc[0..$]' 			\
								'TT_20C-20D_IADSAll+tlrc[0..$]' 		\
								'TT_20C-20D_PosAll+tlrc[0..$]' 		\
								'TT_20C-20D_NegAll+tlrc[0..$]' 		\
								'TT_20C-20D_PosM-NegM+tlrc[0..$]' 		\
								'TT_20C-20D_PosI-NegI+tlrc[0..$]' 		\
								'TT_20C-20D_PosM-PosI+tlrc[0..$]' 		\
								'TT_20C-20D_NegM-NegI+tlrc[0..$]' 		\
								'TT_20C-20D_PosAll-NegAll+tlrc[0..$]' 		\
								'TT_20C-20D_MusAll-IADSAll+tlrc[0..$]' 		\
								'TT_20C-20D_FullIX+tlrc[0..$]'

# Controls
gzip stats.new.9003+tlrc.BRIK
gzip stats.new.9006+tlrc.BRIK
gzip stats.new.9007+tlrc.BRIK
gzip stats.new.9010+tlrc.BRIK
gzip stats.new.9016+tlrc.BRIK
gzip stats.new.9017+tlrc.BRIK
gzip stats.new.9018+tlrc.BRIK
gzip stats.new.9019+tlrc.BRIK
gzip stats.new.9022+tlrc.BRIK
gzip stats.new.9029+tlrc.BRIK
gzip stats.new.9032+tlrc.BRIK
gzip stats.new.9033+tlrc.BRIK
gzip stats.new.9036+tlrc.BRIK
gzip stats.new.9037+tlrc.BRIK
gzip stats.new.9073+tlrc.BRIK
gzip stats.new.9075+tlrc.BRIK
gzip stats.new.9077+tlrc.BRIK
gzip stats.new.9078+tlrc.BRIK
gzip stats.new.9080+tlrc.BRIK
gzip stats.new.9081+tlrc.BRIK


# Depressed
gzip stats.new.9015+tlrc.BRIK
gzip stats.new.9027+tlrc.BRIK
gzip stats.new.9041+tlrc.BRIK
gzip stats.new.9047+tlrc.BRIK
gzip stats.new.9048+tlrc.BRIK
gzip stats.new.9049+tlrc.BRIK
gzip stats.new.9050+tlrc.BRIK
gzip stats.new.9051+tlrc.BRIK
gzip stats.new.9053+tlrc.BRIK
gzip stats.new.9054+tlrc.BRIK
gzip stats.new.9055+tlrc.BRIK
gzip stats.new.9058+tlrc.BRIK
gzip stats.new.9060+tlrc.BRIK
gzip stats.new.9064+tlrc.BRIK
gzip stats.new.9065+tlrc.BRIK
gzip stats.new.9067+tlrc.BRIK
gzip stats.new.9068+tlrc.BRIK
gzip stats.new.9069+tlrc.BRIK
gzip stats.new.9071+tlrc.BRIK
gzip stats.new.9076+tlrc.BRIK

