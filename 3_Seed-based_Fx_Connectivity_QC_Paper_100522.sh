#!/bin/tcsh

# This script runs a seed-based correlation analysis for each subject, and then runs the group comparison.
# The seed was placed in the anterior cingulate or ACC, determined as optimally reliable by Whitfiled-Gabrieli, S. & Nieto-Castanon, A. (2012). Conn
# : A Functional Connectivity Toolbox for Correlated and Anticorrelated Brain Networks. Brain Connectivity, 2(3). doi: 10.1089/brain.2012.0073
# The ACC was selected to examine differences in functional connectivity associated with cognitive control

# Edited by Rebecca Lepping and Sarah Jazaerly, 2-10-14. Based on a script for processing the SEED Music and Depression data edited by Rebecca Lepping, which was in turn based on a script for the Savage Diet Study Resting State Analysis by W. Kyle Simmons and Josh Powell
# Edited to include attention network, DMN, and visual network seeds by RL 12-11-14

##################################################################################################################
# SECTION I --  Individual Subject Analyses
# This section of the script will implement the subject-level functional connectivity analysis
##################################################################################################################


##################################################################
# Set some useful variables for later
##################################################################


set subjects = (101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 401 402 403 404 406 407 408 410 411 412 413 414 415 416 417 418 419 420 421 422 423 501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 516 517 520 601 602 603 604 605 606 607 608 609 610 611 612 613 614 615 616 617 618 619 620 701 702 703 704 705 706 707 708 709 710 711 712 713 714 715 716 717 718 719 720)
#Exclude 405 409 due to potential incidental findings; Exclude 518 and 519 due to unresolved alignment issues

# DMN Probe
# PCC
# MNI 0 -56 28
# TLRC -1.49	-56.38	24.14
#    3dcalc -a MNI_EPI+tlrc -expr 'step(25-(x+0)*(x+0)-(y-56)*(y-56)-(z-28)*(z-28))' -prefix mask.PCC.MNI.ball
#    3dcalc -a TT_N27+tlrc -expr 'step(25-(x-1)*(x-1)-(y-56)*(y-56)-(z-24)*(z-24))' -prefix PCC.ball
#    3dresample -prefix mask.PCC.MNI.ball_rs -master 101.results/errts.101.fanaticor+tlrc. -input mask.PCC.MNI.ball+tlrc

##################################################################
# For each subject and run, calculate the timecourse correlation between each voxel and a given seed region
##################################################################




foreach subj ($subjects)
# move to the clean_data directory
cd ../Group/CleanData/
      # Extract the average timecourse from the seed region of interest
      3dmaskave -quiet -mask ../../scripts/mask.PCC.MNI.ball_rs+tlrc. ../../scripts/{$subj}.results/errts.{$subj}.fanaticor+tlrc > {$subj}_PCC.rest.clean_data.1D

      # Regression to calculate correlation at each voxel with the seed
      # Removed the censoring option - cleanEPI files have already been censored with the Union - RL Still true today!
      3dDeconvolve \
          -input ../../scripts/{$subj}.results/errts.{$subj}.fanaticor+tlrc \
          -float \
          -num_stimts 1 \
          -stim_label 1 CorrCoef \
          -stim_file 1 {$subj}_PCC.rest.clean_data.1D  \
          -polort A \
          -jobs 8 \
          -x1D {$subj}_PCC.rest.clean_data.X.mat.1D     \
          -tout -rout -fitts model_fit.{$subj}_rest.clean_data.PCC \
          -bucket Correlation.{$subj}_rest.clean_data.PCC
    
      # Convert the R-squared valued to an pearson correlation with the sign of the correlation intact
      3dcalc -a Correlation.{$subj}_rest.clean_data.PCC+tlrc'[2]' \
        -b Correlation.{$subj}_rest.clean_data.PCC+tlrc'[4]' \
        -prefix r.{$subj}_rest.clean_data.PCC \
        -expr 'sqrt(b)*(a/abs(a))'

      # Convert the r-value to a Z-score, this is important for subsequent group analyses e.g., t-tests or ANVOVA
      3dcalc -a r.{$subj}_rest.clean_data.PCC+tlrc \
        -prefix z.{$subj}_rest.clean_data.PCC \
        -expr 'log((1+a)/(1-a))/2'

      # Stick both the r and z maps in a single bucket for convenience
      3dbucket -prefix r.z.{$subj}_rest.clean_data.PCC \
        r.{$subj}_rest.clean_data.PCC+tlrc \
        z.{$subj}_rest.clean_data.PCC+tlrc

      # rename the sub-bricks in the files, again, for convenience
      3drefit -sublabel 0 r-value -sublabel 1 z-score r.z.{$subj}_rest.clean_data.PCC+tlrc

cd ../../scripts
      
  end


#mkdir $study_dir/Seed-based_Group_Analysis_new_030515
# cd $study_dir/

##################################################################
# Clean up files and change directories
##################################################################
# First, outside the clean data directory run the following
# mkdir Connectivity_analyses
# cd Connectivity_analyses
# mkdir Correlation_files
# mkdir r_files
# mkdir r.z_files
# mkdir z_files
# mkdir model_fits
# mkdir seed.1D_files
# mkdir Xmatrices
# cd ../ # move back out of the Group Analysis directory

# Then move to the clean_data directory and copy the files into the respective Results directories
# first for the IA files...
#cd $study_dir/CleanData
#foreach cond ( ACC )
#foreach cond ( LS1back.ball LS1finger.ball RS1back.ball RS1finger.ball )

#  mv -f r.z.*.rest.clean_data.*{$cond}* ../Connectivity_analyses/r.z_files/
#  mv -f Correlation.*.rest.clean_data.*{$cond}* ../Connectivity_analyses/Correlation_files/
#  mv -f model_fit.*.rest.clean_data.*{$cond}* ../Connectivity_analyses/model_fits/  
#  mv -f *.rest.clean_data.*{$cond}*.X.mat.1D ../Connectivity_analyses/Xmatrices/
#  mv -f *.*{$cond}*.rest.clean_data.1D ../Connectivity_analyses/seed.1D_files/
#  mv -f r.*{$cond}*+tlrc* ../Connectivity_analyses/r_files/
#  mv -f z.*{$cond}*+tlrc* ../Connectivity_analyses/z_files/
  # not sure where this sum mask should come from...GM sum mask? wrong file name JNP 31jul13
  # cp GM.mask.sum_allsubs* ../Seed-based_Group_Analysis/Connectivity_analyses/
end




##################################################################################################################
# SECTION II -- Group Analyses
# This section of the script describes all the commands used once the top half of this script has already been run.
# To implement the group analyses, all the files are moved into separate sub-directories, then t-tests were run 
#  on the z-score maps of the subjects
##################################################################################################################


##################################################################
# Calculate regions showing a differnce between the CONTROL and DEPRESSED groups for each ROI
##################################################################
#cd ../Connectivity_analyses/z_files/ # Move into the directory with the z files

#foreach roi ( $roi_list )
    # construct 3dttest++ command in a temporary file 
    #echo 3dttest++ \
    #-mask ../lowres.brainmask+tlrc \
    #-prefix t.{$roi}.Dep-Ctrl.clean_data \
    #-BminusA \\ > rm_command_3dtt_${roi}_Dep-Ctrl

    # These are the lines for set A
    #echo \
    #-labelA Dep \
    #-setA \\ >> rm_command_3dtt_${roi}_Dep-Ctrl
    #foreach subj ($depressed_subjects)
        #echo z.${subj}.rest.clean_data.{$roi}+tlrc.HEAD \\ >> rm_command_3dtt_${roi}_Dep-Ctrl
    #end
    
    # These are the lines for set B    
    #echo -labelB Ctrl \
    #-setB \\ >> rm_command_3dtt_${roi}_Dep-Ctrl
    #foreach subj ($control_subjects)
        #echo z.${subj}.rest.clean_data.{$roi}+tlrc.HEAD \\ >> rm_command_3dtt_${roi}_Dep-Ctrl
    #end
    # add a blank line at the end so the command will run
    #echo >> rm_command_3dtt_${roi}_Dep-Ctrl
    # run the 3dttest++ command
    #source rm_command_3dtt_${roi}_Dep-Ctrl
#end

#3drefit -atrstring AFNI_CLUSTSIM_NN1 file:CStemp3.NN1.niml -atrstring AFNI_CLUSTSIM_MASK file:CStemp3.mask -atrstring AFNI_CLUSTSIM_NN2 file:CStemp3.NN2.niml -atrstring AFNI_CLUSTSIM_NN3 file:CStemp3.NN3.niml t.*



