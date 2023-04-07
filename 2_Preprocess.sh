#!/bin/tcsh
# Created preprocessing script from afni.proc.py Example 11b August 2022
# https://afni.nimh.nih.gov/pub/dist/doc/program_help/afni_proc.py.html

foreach subj (104)

 # set data directories
set top_dir = /home/lmartin2/R-Drive/Martin_L/QC_Methods_Paper/MR_Data/fmri-open-qc-rest
set epi_dir = $top_dir/sub-{$subj}/ses-01/func
set SSW_dir = /home/lmartin2/R-Drive/Martin_L/QC_Methods_Paper/MR_Data/scripts/SS_Warper         

#3dcopy aparc.a2009s+aseg_REN_vent_2.5+tlrc  {$subj}.aparc.a2009s+aseg_REN_vent_2.5+tlrc 

#@Align_Centers -prefix $SSW_dir/anatSS.{$subj}_align -base aparc.a2009s+aseg_REN_vent_2.5+tlrc -dset $SSW_dir/anatSS.{$subj}.nii
              afni_proc.py                                                 \
                 -subj_id {$subj}                                   \
 #                -script $epi_dir/{$subj}_rs_script \
                 -blocks despike tshift align tlrc volreg blur mask scale  \
                     regress                                               \
				-copy_anat $SSW_dir/anatSS.{$subj}.nii                        \
        		-anat_has_skull no                                \
                 -dsets $top_dir/sub-{$subj}/ses-01/func/sub-{$subj}_ses-01_task-rest_run-01_bold.nii.gz                              \
                 -tcat_remove_first_trs 2                                  \
                 -align_opts_aea -cost lpc+ZZ                              \
				-tlrc_base MNI152_2009_template_SSW.nii.gz                 \
        		-tlrc_NL_warp                                              \
        		-tlrc_NL_warped_dsets                                      \
         			$SSW_dir/anatQQ.{$subj}.nii                			   \
         			$SSW_dir/anatQQ.{$subj}.aff12.1D            			   \
         			$SSW_dir/anatQQ.{$subj}_WARP.nii			 			   \
                 -volreg_align_to MIN_OUTLIER                              \
                 -volreg_align_e2a                                         \
                 -volreg_tlrc_warp                                         \
                 -volreg_warp_dxyz 2.5                                     \
                 -blur_size 4                                              \
                 -mask_segment_anat yes                                    \
                 -mask_segment_erode yes                                   \
                 -mask_import Tvent aparc.a2009s+aseg_REN_vent_resam_2.5+tlrc         \
                 -mask_intersect Svent CSFe Tvent                          \
                 -mask_epi_anat yes                                        \
                 -regress_motion_per_run                                   \
                 -regress_ROI_PC Svent 3                                   \
                 -regress_ROI_PC_per_run Svent                             \
                 -regress_make_corr_vols WMe Svent                         \
                 -regress_anaticor_fast                                    \
                 -regress_censor_motion 0.2                                \
                 -regress_censor_outliers 0.05                             \
                 -regress_apply_mot_types demean deriv                     \
                 -regress_est_blur_epits                                   \
                 -regress_est_blur_errts                                   \
                 -regress_run_clustsim yes  \
                 -html_review_style pythonic
 
#tcsh -xef {$subj}_rs_script |& tee output.proc.{$subj}

cd /home/lmartin2/R-Drive/Martin_L/QC_Methods_Paper/MR_Data/scripts 
 end        
 


