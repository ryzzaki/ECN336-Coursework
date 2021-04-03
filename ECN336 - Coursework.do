cd "/Users/vcn/Desktop/tststsf"

insheet using "converted_data.csv", c

//not related to social media
drop new_device_type_w19 language_w19 onlsell1_w19 onlsell2_a_w19 onlsell2_b_w19 onlsell2_c_w19 onlsell2_d_w19 onlsell2ref_w19 onlsell3_w19 onlsell4_w19 gigwork1_w19 rideshr_w19 gigwork2_a_w19 gigwork2_b_w19 gigwork2_c_w19 gigwork2_d_w19 gigwork2_e_w19 gigwork2ref_w19 gigwork3_w19 gigwork4_a_w19 gigwork4_b_w19 gigwork4_c_w19 gigwork4_d_w19 gigwork4_e_w19 gigwork4_f_w19 gigwork4ref_w19 gigwork5_w19 gigwork6_w19 homeshr1_w19 homeshr2_a_w19 homeshr2_b_w19 homeshr2_c_w19 homeshr2_d_w19 homeshr2_e_w19 homeshr2ref_w19 homeshr3_w19  extrainc_a_w19 extrainc_b_w19 extrainc_c_w19 extrainc_d_w19 extrainc_e_w19 extraincref_w19 

//related to social media but not relevent
drop campfeel_1_w19 campfeel_2_w19 campfeel_3_w19 campfeel_4_w19 campfeel_5_w19 campfeel_6_w19 campfeel_7_w19 campfeel_8_w19 campfeelref_w19 fbknow_w19 twknow_w19 igknow_w19 electftgsnsint_w19 talkdisasnsint_w19 talkcmnsnsint_w19 qual1_w19 qual2_w19 qual3_w19 qual4_w19 qual5_w19 qual6_w19 qual7_w19 qchange5_w19 qdisagree1_w19 response_exp_w19 qdisagree2_w19 qdisagree3_w19 qdisagree4_a_w19 qdisagree4_b_w19 qdisagree4_c_w19 qdisagree4_d_w19 qdisagree4_e_w19 qfollow3_a_w19 qfollow3_b_w19 qfollow3_c_w19 qfollow3_d_w19 qfollow3_e_w19 qfollow3ref_w19

// background info that is not needed
drop f_educcat_final f_racecmb_recruitment f_racethn_recruitment f_citizen_recode_recruitment f_marital_final f_relig_final f_born_final f_attend_final f_partyln_final f_partysum_final f_income_final f_reg_final f_ideo_final f_insurance_final f_int_freq1_final f_int_freqcomb_final  f_bbint_rf1

//Destringing required variables 
local group votegen2_w19 votegen3_w19 snsintref_w19 fbpost1_w19 twpost1_w19 igpost1_w19 fbpost2_w19 twpost2_w19 igpost2_w19 qbelief2_w19 qbelief3_w19 qbelief4_w19 qimpacta_w19 qimpactb_w19 qimpactc_w19 qimpactd_w19 qimpacte_w19 qchange1_w19 qchange3_w19 qfollow1_w19 qfollow2_w19 tenure_w19 f_agecat_final f_party_final f_snsuser_final 

foreach c of local group {
    destring `c', replace force
}