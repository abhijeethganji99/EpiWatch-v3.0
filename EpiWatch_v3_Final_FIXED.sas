/* ================================================================
   PROJECT    : EpiWatch v3.0 — FINAL Epidemiology Surveillance
                & Experimental Intelligence Platform
   AUTHOR     : Abhijeeth Ganji
   VERSION    : 3.0 — Complete Research-Grade Portfolio Capstone
   PLATFORM   : SAS OnDemand for Academics (zero setup)
   DATE       : 2024

   ════════════════════════════════════════════════════════════════
   INHERITED CONCEPTS — ALL COURSEWORK (Assignments 1–7 + Midterm
   + Final Projects 1 & 2)
   ════════════════════════════════════════════════════════════════

   FROM ASSIGNMENT 1 (Sampling & Power):
     PROC SURVEYSELECT  : Simple random sampling (SRS)
     PROC UNIVARIATE    : Normality, QQ plots, moments, quantiles
     PROC POWER         : Sample size & power for one-sample t-test
     95% Confidence Intervals for means
     Student's t / Sign / Signed Rank tests (Mu0 hypothesis)
     Extreme Observations tables

   FROM ASSIGNMENT 2 (CLT):
     Non-normal source distribution (Poisson / exponential)
     Distribution of Sample Means (n=3, n=6, n=9)
     Central Limit Theorem demonstration via %clt_demo macro
     PROC SURVEYSELECT repeated sampling (URS method)
     Kernel density estimation, normality of sample means
     Z-score outlier flagging (%flag_outliers macro)

   FROM ASSIGNMENT 3 (t-Tests & Repeated Measures):
     PROC TTEST         : One-sample, two-sample, paired
     Paired profiles plot, Agreement plot, Q-Q of differences
     GLM Repeated Measures (MANOVA, Wilks' Lambda)
     Greenhouse-Geisser / Huynh-Feldt epsilon corrections
     Contrast variables for repeated measures
     Folded F test, Shapiro-Wilk, K-S, CvM, Anderson-Darling

   FROM ASSIGNMENT 4 (GLM / One-Way ANOVA):
     PROC GLM           : One-way ANOVA, multiple comparisons
     LSD (Least Significant Difference) pairwise test
     Dunnett's test with control group
     CONTRAST statement : Custom a priori contrasts
     ESTIMATE statement : Parameter magnitude estimation
     LSMEANS with Tukey adjustment
     Box plots with F statistic overlay
     LS-Means diffogram (StemLength style)

   FROM ASSIGNMENT 5 (RCBD & PROC MIXED):
     PROC IMPORT        : Reading CSV data files
     RCBD vs CRD comparison (MSE, R-squared)
     PROC MIXED (REML)  : Block as random effect
     Sub-sampling model : random block variety*replication
     LSMEANS pdiff=all cl, Part C vs Part D comparison
     Covariance parameter estimates, AIC comparison
     Interaction plots (vline / group), Boxplots / histograms

   FROM ASSIGNMENT 6 (Gasoline Additives — Latin Square / GLM):
     Balanced factorial design (4 Cars × 4 Drivers × 4 Additives)
     GLM with three-way crossed classification
     LSMeans for additives with Tukey & pairwise p-value matrix
     Distribution of Emission boxplots by additive
     CONTRAST A vs B, A vs C, A vs D
     R² = 0.918 style high model fit reporting

   FROM ASSIGNMENT 7 (Broad Bean Factorial / RCBD):
     Full factorial set of combinations (2 × 3 = 6)
     Field layout generation (4 blocks × 6 plots = 24 obs)
     Two-Way ANOVA with interaction: type × ph × block
     Tukey grouping for ph means, scatter plot of block layout
     Interaction significance: type*ph p < .0001

   FROM MIDTERM (Cereal Weight — Hypothesis Testing):
     Type I Error (α), Type II Error (β), Power = 1−β
     H₀ vs H₁ formulation, two-tailed vs one-tailed choice
     PROC TTEST H0=15 alpha=0.05 (one-sample)
     PROC UNIVARIATE with QQPLOT / HISTOGRAM / NORMAL(MU=EST)
     PROC GLM: CONTRAST, ESTIMATE (sample1 vs sample3, etc.)
     ANOVA table decomposition (DF, SS, MS, F, critical value)
     Detergent study ANOVA: F=11.69 > F_crit=4.76 → reject H₀
     Fixed vs Random effects concept table
     T-test / CRD / RCBD / Latin Square / BIBD design review

   FROM FINAL PROJECT 1 (Crop Yield — Factorial GLM):
     YieldDF dataset: hg/ha_yield, rainfall, pesticides, avg_temp
     PROC CONTENTS, PROC MEANS, PROC FREQ (Item)
     Categorization of continuous variables (Low/Med/High)
     Two-way GLM with all two-way interactions
     Post-hoc Tukey for Rainfall_Category
     Crop-specific ANOVA: Item * Rainfall * Pesticides
     Homogeneity of variance: HOVTEST=BARTLETT
     Custom contrast: Medium vs Low Rainfall (F=1.32, p=0.2512)

   FROM FINAL PROJECT 2 (Wheat Yield — Multi-location GLM):
     Wheat dataset: loc, Rep, Trt (C/F/S), Y (yield), X (height)
     PROC CONTENTS, descriptive stats by Trt × loc
     Two-Way GLM: Trt + loc + loc*Trt (R²=0.982, overall p<.0001)
     LSMEANS Trt: S(15.83) > C(12.13) > F(9.41), all p<.0001
     Tukey groupings: all three treatments distinct (A, B, C)
     Interaction plot: loc × Trt (nearly parallel → no interaction)
     Residual analysis: PROC UNIVARIATE on resid, Q-Q plot
     Levene's test for equal variance across groups
     Goodness-of-fit: K-S p>0.150, CvM p>0.250, AD p>0.250

   ════════════════════════════════════════════════════════════════
   DISEASE DOMAINS: AMR + Respiratory + Foodborne
   DATA SOURCES: NNDSS, NHSN, FluView, FoodNet, COVID, ACS, CMS
   ════════════════════════════════════════════════════════════════

   15-STEP RESEARCH PIPELINE:
     STEP 0  → FRAMEWORK    : Setup, macros, formats, ODS
     STEP 1  → GATHERING    : 7-source multi-disease simulation
     STEP 2  → CLEANING     : QC, validation, suppression
     STEP 3  → SAMPLING     : SURVEYSELECT + CLT (Assn 1 & 2)
     STEP 4  → NORMALITY    : UNIVARIATE + POWER (Assn 1 & 2)
     STEP 5  → T-TESTS      : One-sample, paired, two-sample
     STEP 6  → ENGINEERING  : Rt, CUSUM, SDOH, NLP flags
     STEP 7  → ANOVA/GLM    : One-way, two-way, RCBD, CRD
     STEP 8  → MIXED/RCBD   : REML, sub-sampling (Assn 5)
     STEP 9  → FACTORIAL    : Assn 6 (additives), Assn 7 (beans)
     STEP 10 → HYPOTHESIS   : Midterm framework + contrasts
     STEP 11 → ADVANCED     : Logistic, RF, Survival, ITS, NegBin
     STEP 12 → CROP/YIELD   : Final Project 1 & 2 analogs
     STEP 13 → VISUALIZING  : 25 professional charts
     STEP 14 → REPORTING    : PDF + HTML5 + Excel tri-output

   ADVANCED SAS TECHNIQUES (60+):
     All Assignment 1-7, Midterm, Final Project 1-2 PLUS:
     PROC GENMOD, PROC PHREG, PROC LIFETEST, PROC HPFOREST
     PROC LOGISTIC, PROC SURVEYREG, PROC CLUSTER, PROC FASTCLUS
     PROC CORR, PROC TABULATE, PROC STDIZE, PROC RANK
     PROC TRANSPOSE, PROC FREQ (CMH), PROC FORMAT
     PROC SGPLOT (15+ chart types), PROC SGPANEL
     Hash Objects, Arrays, Macro Framework (8 macros)
     LAG(), RETAIN, FIRST./LAST., CALL SYMPUTX
     ODS PDF / HTML5 / EXCEL (tri-format output)
================================================================ */


/* ════════════════════════════════════════════════════════════
   STEP 0 — GLOBAL FRAMEWORK
   Setup, macros, formats, ODS destinations
   ════════════════════════════════════════════════════════════ */

options
    nofmterr mergenoby=warn msglevel=i
    mprint mlogic symbolgen fullstimer
    formchar="|----|+|---+=|-/\<>*";

/* ── 0a. Audit log (full execution trace) ────────────────── */
data epi_audit_log;
    length step $50 note $300 ts $22 records_out 8;
    stop;
run;

%macro audit(step=, note=, ds=);
    %local _ts _nobs;
    %let _ts = %sysfunc(datetime(), datetime22.);
    %if %length(&ds.) > 0 %then
        %let _nobs=%sysfunc(attrn(%sysfunc(open(&ds.)),nobs));
    %else %let _nobs=.;
    %put ══ EPIWATCH AUDIT [&_ts.] STEP=&step. | &note. ══;
    data _audit_tmp_;
        step="&step."; note="&note.";
        ts="&_ts."; records_out=&_nobs.;
    run;
    proc append base=epi_audit_log data=_audit_tmp_ force; run;
    proc datasets lib=work nolist; delete _audit_tmp_; quit;
%mend audit;

%audit(step=0-INIT, note=EpiWatch v3.0 Final Platform started);

/* ── 0b. Small-cell suppression (HIPAA §164.514) ─────────── */
%macro suppress_cells(ds=, countvar=, threshold=11);
    data &ds.;
        set &ds.;
        if 0 < &countvar. < &threshold. then do;
            &countvar.=.S; _suppressed_=1;
        end;
        else _suppressed_=0;
    run;
    %put NOTE: Cell suppression applied to &ds. (n<&threshold.);
%mend suppress_cells;

/* ── 0c. Z-score outlier flagging (Assignment 2 CLT) ─────── */
%macro flag_outliers(ds=, var=, out=, zscore_thresh=3);
    proc means data=&ds. noprint;
        var &var.;
        output out=_stats_ mean= std= / autoname;
    run;
    data _null_;
        set _stats_;
        call symputx('_mean_', &var._Mean);
        call symputx('_std_',  &var._StdDev);
    run;
    data &out.;
        set &ds.;
        &var._zscore  = (&var. - &_mean_.) / max(&_std_., 0.001);
        &var._outlier = (abs(&var._zscore) > &zscore_thresh.);
    run;
    proc datasets lib=work nolist; delete _stats_; quit;
%mend flag_outliers;

/* ── 0d. Alert narrative generation (NLP) ───────────────── */
%macro gen_alert_narrative(ds=, out=);
    data &out.;
        set &ds.;
        length alert_narrative $300;
        select;
            when (alert_level="RED" and peak_season_flag=1)
                alert_narrative=catx(" ","URGENT: Peak-season outbreak of",
                    disease,"in",state,"Wk",put(epi_week,2.),
                    "CUSUM=",put(cusum_stat,6.2),
                    "Z=",put(z_score,5.2),
                    "Immediate investigation required.");
            when (alert_level="RED")
                alert_narrative=catx(" ","ALERT: Off-season outbreak of",
                    disease,"in",state,"- Unusual timing.",
                    "CUSUM=",put(cusum_stat,6.2));
            when (alert_level="ORANGE")
                alert_narrative=catx(" ","WARNING:",disease,
                    "elevated in",state,
                    "- Monitor closely. Z=",put(z_score,5.2));
            when (rt_approx>2.0)
                alert_narrative=catx(" ","RAPID GROWTH:",disease,
                    "Rt=",put(rt_approx,4.2),"in",state);
            otherwise
                alert_narrative="Within expected surveillance range.";
        end;
    run;
%mend gen_alert_narrative;

/* ── 0e. Pathogen NLP classifier ────────────────────────── */
%macro classify_pathogen_nlp(ds=, out=);
    data &out.;
        set &ds.;
        length pathogen_risk_class $30 action_needed $80;
        if      index(upcase(pathogen),"CARBAPENEM") > 0 then do;
            pathogen_risk_class="CRITICAL MDR PATHOGEN";
            action_needed="Immediate infection control + ID consult";
        end;
        else if index(upcase(pathogen),"MRSA") > 0 or
                index(upcase(pathogen),"VRE")  > 0 then do;
            pathogen_risk_class="HIGH MDR PATHOGEN";
            action_needed="Contact precautions + antimicrobial review";
        end;
        else if index(upcase(pathogen),"LISTERIA") > 0 then do;
            pathogen_risk_class="HIGH RISK FOODBORNE";
            action_needed="Outbreak investigation + food recall check";
        end;
        else if index(upcase(pathogen),"O157") > 0 or
                index(upcase(pathogen),"STEC") > 0 then do;
            pathogen_risk_class="HIGH RISK FOODBORNE";
            action_needed="Case investigation + source tracing";
        end;
        else if index(upcase(pathogen),"SARS") > 0 then do;
            pathogen_risk_class="RESPIRATORY PANDEMIC POTENTIAL";
            action_needed="Enhanced surveillance + sequencing";
        end;
        else do;
            pathogen_risk_class="ROUTINE SURVEILLANCE";
            action_needed="Standard reporting and monitoring";
        end;
    run;
%mend classify_pathogen_nlp;

/* ── 0f. Categorize continuous variable (Final Projects) ─── */
/*      Converts continuous vars to Low/Med/High groups        */
/*      Mirrors crop yield & wheat study preprocessing         */
%macro categorize_var(ds=, var=, out_var=, lo=, hi=);
    /* Creates &out_var. with values Low/Medium/High          */
    /* INHERITED: Final Project 1 — rainfall/pesticides cats  */
    if &var. <= &lo.      then &out_var. = "Low";
    else if &var. <= &hi. then &out_var. = "Medium";
    else                       &out_var. = "High";
%mend categorize_var;

/* ── 0g. Custom formats (all assignments + final projects) ── */
proc format;
    /* Disease domain (Assignment 4 style) */
    value $ domain_fmt
        "AMR"         ="Antibiotic Resistance (AMR)"
        "RESPIRATORY" ="Respiratory Disease"
        "FOODBORNE"   ="Foodborne Illness";

    /* Severity (NNDSS clinical categories) */
    value $ severity_fmt
        "MILD"     ="Mild (outpatient)"
        "MODERATE" ="Moderate (ED visit)"
        "SEVERE"   ="Severe (hospitalized)"
        "FATAL"    ="Fatal";

    /* Alert levels (CUSUM thresholds) */
    value $ alert_fmt
        "GREEN"  ="Within expected range"
        "YELLOW" ="Elevated — monitor"
        "ORANGE" ="Alert threshold exceeded"
        "RED"    ="Outbreak — action required";

    /* Region (geographic) */
    value $ region_fmt
        "NORTHEAST"="Northeast" "SOUTH"="South"
        "MIDWEST"  ="Midwest"   "WEST" ="West";

    /* AMR resistance category */
    value $ resist_cat_fmt
        "LOW"      ="Low (under 20%)"
        "MODERATE" ="Moderate (20-40%)"
        "HIGH"     ="High (40-60%)"
        "CRITICAL" ="Critical (over 60%)";

    /* HIPAA suppression display */
    value suppr_fmt
        .S="<11 Suppressed" other=[best12.];

    /* Rt epidemic threshold categories */
    value rt_fmt
        0   -< 1  ="Declining (Rt<1)"
        1   -< 1.5="Sustained (Rt 1–1.5)"
        1.5 -< 2  ="Growing (Rt 1.5–2)"
        2   - high="Epidemic (Rt>2)";

    /* Risk tiers (Assignment 4 flower-type style) */
    value $ risk_tier_fmt
        "1-LOW"      ="Low Risk"
        "2-MODERATE" ="Moderate Risk"
        "3-HIGH"     ="High Risk"
        "4-CRITICAL" ="Critical Risk";

    /* INHERITED Final Project 1: rainfall categories */
    value $ rainfall_cat_fmt
        "Low"    ="Low Rainfall (under 1000 mm)"
        "Medium" ="Medium Rainfall (1000-2000 mm)"
        "High"   ="High Rainfall (over 2000 mm)";

    /* INHERITED Final Project 2: wheat treatment codes */
    value $ trt_fmt
        "C"="Control (no treatment)"
        "F"="Fungicide applied"
        "S"="Seed treatment";

    /* INHERITED Assignment 6: gasoline additive codes */
    value $ additive_fmt
        "A"="Additive A"
        "B"="Additive B"
        "C"="Additive C"
        "D"="Additive D";

    /* INHERITED Assignment 7: broad bean plant types */
    value plant_type_fmt
        1="T1: Short, Bushy"
        2="T2: Tall, Erect";

    /* Phosphorous rate codes (Assignment 7) */
    value ph_rate_fmt
        1="P1: None (0 kg/ha)"
        2="P2: 25 kg/ha"
        3="P3: 50 kg/ha";
run;

/* ── 0h. Open all three ODS destinations ─────────────────── */
ods _all_ close;

/* Resolve the actual home directory for this session instead of
   hardcoding it — "sasuser.v94" does not exist in every SAS
   OnDemand session, which previously caused HTML5/PDF/Excel to
   fail with "Physical file does not exist". %sysget(HOME) always
   resolves to the current user's real home directory.            */
%let outpath = %sysget(HOME)/EpiWatch_Output;
%let rc = %sysfunc(filename(outdir,&outpath.));
%if %sysfunc(fexist(&outdir.))=0 %then %do;
    %put NOTE: Creating output folder &outpath.;
    %let rc2 = %sysfunc(dcreate(EpiWatch_Output,%sysget(HOME)));
%end;

ods pdf
    file="&outpath./EpiWatch_v3_Report.pdf"
    style=journal pdftoc=3 startpage=never notoc;

/* CONTENTS= and FRAME= on ODS HTML5 require a fileref/filename (unlike
   legacy ODS HTML, which accepts YES/NO) — "contents=yes frame=yes"
   made SAS try to open a file literally named YES, causing "ERROR: No
   logical assign for filename YES." ODS HTML5 builds its table of
   contents into the same body file by default, so these options are
   simply dropped here.                                                 */
ods html5
    file="&outpath./EpiWatch_v3_Report.html"
    style=HTMLBlue;

ods excel
    file="&outpath./EpiWatch_v3_Summary.xlsx"
    style=ExcelMedium
    options(sheet_interval="proc"
            embedded_titles="yes"
            flow="tables"
            frozen_headers="yes"
            frozen_rowheaders="1");

ods graphics /
    reset width=7.5in height=5in
    imagefmt=png antialias=on;

%audit(step=0-ODS, note=PDF + HTML5 + Excel ODS destinations opened);


/* ════════════════════════════════════════════════════════════
   STEP 1 — DATA GATHERING (7 Sources, 3 Disease Domains)
   Simulated from: NNDSS, NHSN, FluView, FoodNet,
   HHS COVID, Census ACS, CMS Part D
   ════════════════════════════════════════════════════════════ */

%audit(step=1-GATHER, note=Multi-source multi-disease simulation started);

/* ── SOURCE 1: CDC NNDSS — Notifiable Disease Weekly ──────  */
data nndss_raw;
    call streaminit(20240101);
    length disease $30 pathogen $40 pathogen_class $10
           state $2 region $10 severity $10
           gender $1 age_group $10 race_eth $25
           outcome $10 setting $20 domain $15;

    array states[10]  $2  _temporary_
        ("TX" "CA" "FL" "NY" "OH" "PA" "IL" "GA" "NC" "AZ");
    array regions[10] $10 _temporary_
        ("SOUTH" "WEST" "SOUTH" "NORTHEAST" "MIDWEST"
         "NORTHEAST" "MIDWEST" "SOUTH" "SOUTH" "WEST");
    array age_grps[6] $10 _temporary_
        ("0-4" "5-17" "18-34" "35-49" "50-64" "65+");
    array race_eths[5] $25 _temporary_
        ("White Non-Hispanic"  "Black Non-Hispanic"
         "Hispanic"            "Asian/PI"
         "Other/Multiracial");
    array severities[4] $10 _temporary_
        ("MILD" "MODERATE" "SEVERE" "FATAL");
    array settings[4] $20 _temporary_
        ("Community" "Long-Term Care" "Hospital" "School/Daycare");

    /* AMR pathogens */
    array amr_dis[6] $30 _temporary_
        ("MRSA" "C. difficile" "CRE"
         "ESBL E. coli" "VRE" "CRKP");
    array amr_path[6] $40 _temporary_
        ("Staph. aureus (MRSA)"
         "Clostridioides difficile"
         "Carbapenem-Resistant Enterob."
         "ESBL-producing E. coli"
         "Vancomycin-Resistant Enteroc."
         "Carbapenem-Resistant K. pneumo.");

    /* Respiratory pathogens */
    array resp_dis[5] $30 _temporary_
        ("Influenza A" "Influenza B" "COVID-19" "RSV"
         "Pneumonia (Bacterial)");
    array resp_path[5] $40 _temporary_
        ("Influenza A virus"        "Influenza B virus"
         "SARS-CoV-2"              "Respiratory Syncytial Virus"
         "Streptococcus pneumoniae");

    /* Foodborne pathogens */
    array food_dis[5] $30 _temporary_
        ("Salmonellosis" "E. coli O157:H7" "Campylobacter"
         "Listeriosis" "Norovirus GII");
    array food_path[5] $40 _temporary_
        ("Salmonella spp."        "E. coli O157:H7 (STEC)"
         "Campylobacter jejuni"   "Listeria monocytogenes"
         "Norovirus Genogroup II");

    do yr=2018 to 2023;
        do wk=1 to 52;
            do st=1 to 10;
                state  = states[st];
                region = regions[st];
                age_grp_idx = ceil(rand("uniform")*6);
                age_group   = age_grps[age_grp_idx];
                race_eth    = race_eths[ceil(rand("uniform")*5)];
                gender      = ifc(rand("uniform")>0.5,"M","F");
                year=yr; epi_week=wk;
                epi_yearweek=yr*100+wk;

                if      wk in (1:13)  then season_mult=1.4;
                else if wk in (14:26) then season_mult=0.8;
                else if wk in (27:39) then season_mult=0.7;
                else                       season_mult=1.1;

                covid_mult=1.0;
                if yr in (2020 2021) then covid_mult=4.5;
                if yr=2022           then covid_mult=2.2;

                /* AMR observation */
                ai=ceil(rand("uniform")*6);
                disease=amr_dis[ai]; pathogen=amr_path[ai];
                pathogen_class="BACTERIA"; domain="AMR";
                amr_age_mult=1+(age_grp_idx>=5)*0.8;
                case_count=max(0,round(rand("poisson",
                    12*season_mult*amr_age_mult)));
                sev_rand=rand("uniform");
                if      sev_rand<0.50 then severity="MILD";
                else if sev_rand<0.80 then severity="MODERATE";
                else if sev_rand<0.95 then severity="SEVERE";
                else                       severity="FATAL";
                outcome=ifc(rand("uniform")>0.15,"SURVIVED","DIED");
                died=(outcome="DIED");
                setting=settings[ceil(rand("uniform")*4)];
                hosp_days  =max(0,round(rand("gamma",2,4)));
                days_to_report=max(1,round(rand("gamma",2,3)));
                hosp_flag=(severity in ("SEVERE" "FATAL"));
                output;

                /* Respiratory observation */
                ri=ceil(rand("uniform")*5);
                disease=resp_dis[ri]; pathogen=resp_path[ri];
                pathogen_class="VIRUS"; domain="RESPIRATORY";
                case_count=max(0,round(rand("poisson",
                    18*season_mult*covid_mult)));
                sev_rand=rand("uniform");
                if      sev_rand<0.45 then severity="MILD";
                else if sev_rand<0.78 then severity="MODERATE";
                else if sev_rand<0.94 then severity="SEVERE";
                else                       severity="FATAL";
                outcome=ifc(rand("uniform")>0.12,"SURVIVED","DIED");
                died=(outcome="DIED");
                setting=settings[ceil(rand("uniform")*4)];
                hosp_days  =max(0,round(rand("gamma",3,5)));
                days_to_report=max(1,round(rand("gamma",2,2)));
                hosp_flag=(severity in ("SEVERE" "FATAL"));
                output;

                /* Foodborne observation */
                fi=ceil(rand("uniform")*5);
                disease=food_dis[fi]; pathogen=food_path[fi];
                pathogen_class="BACTERIA"; domain="FOODBORNE";
                case_count=max(0,round(rand("poisson",
                    8*season_mult)));
                sev_rand=rand("uniform");
                if      sev_rand<0.60 then severity="MILD";
                else if sev_rand<0.85 then severity="MODERATE";
                else if sev_rand<0.97 then severity="SEVERE";
                else                       severity="FATAL";
                outcome=ifc(rand("uniform")>0.08,"SURVIVED","DIED");
                died=(outcome="DIED");
                setting=settings[ceil(rand("uniform")*4)];
                hosp_days  =max(0,round(rand("gamma",2,3)));
                days_to_report=max(1,round(rand("gamma",2,4)));
                hosp_flag=(severity in ("SEVERE" "FATAL"));
                output;
            end;
        end;
    end;
    drop st yr wk ai ri fi season_mult covid_mult amr_age_mult sev_rand;
    attrib
        case_count  label="Weekly Case Count"
        hosp_days   label="Hospital Days (if severe)"
        days_to_report label="Days from Onset to Report"
    ;
run;

%audit(step=1a-NNDSS,
    note=NNDSS multi-disease weekly data built, ds=nndss_raw);


/* ── SOURCE 2: CDC NHSN — AMR Facility Data ───────────────  */
/*  RCBD block structure: block_id=facility group, replication */
data nhsn_amr_raw;
    call streaminit(20240202);
    length state $2 pathogen $40 facility_type $25;
    array states[10] $2 _temporary_
        ("TX" "CA" "FL" "NY" "OH" "PA" "IL" "GA" "NC" "AZ");
    array pathogens[6] $40 _temporary_
        ("Staph. aureus (MRSA)"
         "Clostridioides difficile"
         "Carbapenem-Resistant Enterob."
         "ESBL-producing E. coli"
         "Vancomycin-Resistant Enteroc."
         "Carbapenem-Resistant K. pneumo.");
    array fac_types[4] $25 _temporary_
        ("Acute Care Hospital" "Long-Term Acute Care"
         "Inpatient Rehab"     "Critical Access Hospital");

    do yr=2018 to 2023;
        do st=1 to 10;
            state=states[st];
            do f=1 to 6;
                pathogen=pathogens[f];
                facility_type=fac_types[ceil(rand("uniform")*4)];
                year=yr;
                /* INHERITED Assn 5: block and replication */
                block_id  =ceil(rand("uniform")*4);
                replication=ceil(rand("uniform")*3);

                base_resist=15+rand("uniform")*45;
                trend=ifn(f in(3 6), 0.8, 0.3);
                resistance_pct=round(
                    base_resist + trend*(yr-2018) +
                    rand("normal",0,3), 0.1);
                resistance_pct=min(95,max(5,resistance_pct));

                n_isolates=max(30,round(rand("gamma",5,80)));
                sir=round(max(0,rand("gamma",3,0.5)),0.01);
                c_diff_per_10k=round(rand("gamma",2,2)+1,0.1);
                has_asp=(rand("uniform")>0.35);
                source="NHSN"; output;
            end;
        end;
    end;
    drop f yr st base_resist trend;
    attrib
        resistance_pct  label="% Resistance Rate"
        n_isolates      label="Total Isolates Tested"
        sir             label="Standardized Infection Ratio"
        c_diff_per_10k  label="C. diff Rate per 10K Patient Days"
        has_asp         label="Has Antibiotic Stewardship Program"
        block_id        label="RCBD Block (Facility Group)"
        replication     label="Sub-Sample Replication";
run;

%audit(step=1b-NHSN,
    note=NHSN AMR facility data with RCBD block structure,
    ds=nhsn_amr_raw);


/* ── SOURCE 3: CDC FluView — Influenza Weekly ─────────────  */
data fluview_raw;
    call streaminit(20240303);
    length state $2 ili_category $20;
    array states[10] $2 _temporary_
        ("TX" "CA" "FL" "NY" "OH" "PA" "IL" "GA" "NC" "AZ");

    do yr=2018 to 2023;
        do wk=1 to 52;
            do st=1 to 10;
                state=states[st]; year=yr; epi_week=wk;
                epi_yearweek=yr*100+wk;
                base_ili=rand("beta",2,8)*15;
                if      wk in (1:8 45:52) then ili_pct=min(base_ili*2.8,25);
                else if wk in (9:13)       then ili_pct=base_ili*1.5;
                else                            ili_pct=base_ili*0.4;
                if yr=2020 and wk>12 then ili_pct=ili_pct*0.3;
                if yr=2021 and wk<40 then ili_pct=ili_pct*0.4;
                ili_pct=round(ili_pct,0.1);
                total_specimens=max(10,round(rand("gamma",5,80)));
                pct_pos_flua =round(rand("beta",2,6)*60,0.1);
                pct_pos_flub =round(rand("beta",1,8)*30,0.1);
                pct_pos_covid=ifn(yr>=2020,
                    round(rand("beta",3,4)*50,0.1),0);
                pct_pos_rsv  =round(rand("beta",2,7)*25,0.1);
                providers_report=max(5,round(rand("gamma",3,20)));
                pediatric_deaths=max(0,round(rand("poisson",0.3)));
                if      ili_pct<2  then ili_category="Baseline";
                else if ili_pct<5  then ili_category="Low";
                else if ili_pct<10 then ili_category="Moderate";
                else if ili_pct<15 then ili_category="High";
                else                    ili_category="Very High";
                source="FLUVIEW"; output;
            end;
        end;
    end;
    drop st yr wk base_ili;
run;

%audit(step=1c-FLUVIEW,
    note=FluView respiratory weekly data built, ds=fluview_raw);


/* ── SOURCE 4: CDC FoodNet — Foodborne Active ─────────────  */
data foodnet_raw;
    call streaminit(20240404);
    length state $2 pathogen $40 food_vehicle $35 outbreak_yn $3;
    array states[10] $2 _temporary_
        ("TX" "CA" "FL" "NY" "OH" "PA" "IL" "GA" "NC" "AZ");
    array pathogens[6] $40 _temporary_
        ("Salmonella spp."       "E. coli O157:H7 (STEC)"
         "Campylobacter jejuni"  "Listeria monocytogenes"
         "Norovirus Genogroup II" "Shigella spp.");
    array food_vehicles[8] $35 _temporary_
        ("Poultry"     "Ground Beef" "Raw Produce" "Dairy Products"
         "Seafood"     "Deli Meats"  "Raw Sprouts" "Bakery Items");

    do yr=2018 to 2023;
        do mo=1 to 12;
            do st=1 to 10;
                state=states[st]; year=yr; month=mo;
                pathogen    =pathogens[ceil(rand("uniform")*6)];
                food_vehicle=food_vehicles[ceil(rand("uniform")*8)];
                if      mo in (6 7 8 9)     then base_cases=rand("poisson",18);
                else if mo in (3:5 10:11)   then base_cases=rand("poisson",10);
                else                             base_cases=rand("poisson",6);
                case_count  =max(0,round(base_cases));
                hosp_count  =max(0,round(case_count*rand("beta",1,5)));
                death_count =max(0,round(case_count*rand("beta",0.5,20)));
                outbreak_yn =ifc(rand("uniform")>0.75,"YES","NO");
                if outbreak_yn="YES" then
                    case_count=case_count+round(rand("poisson",15));
                attack_rate  =round(rand("beta",2,5)*100,0.1);
                median_incub =round(rand("gamma",2,1.5),0.5);
                cfr=ifn(case_count>0,
                    round(death_count/case_count*100,0.01),0);
                lab_confirmed_pct=round(rand("beta",4,3)*100,0.1);
                /* INHERITED Assn 3: paired year lag structure */
                yr_lag=yr-1;
                source="FOODNET"; output;
            end;
        end;
    end;
    drop st yr mo base_cases;
run;

%audit(step=1d-FOODNET,
    note=FoodNet foodborne monthly data built, ds=foodnet_raw);


/* ── SOURCE 5: HHS COVID Community Profile ────────────────  */
data covid_raw;
    call streaminit(20240505);
    length state $2 variant_dominant $20;
    array states[10] $2 _temporary_
        ("TX" "CA" "FL" "NY" "OH" "PA" "IL" "GA" "NC" "AZ");
    array variants[5] $20 _temporary_
        ("Original" "Alpha" "Delta" "Omicron" "XBB");

    do yr=2020 to 2023;
        do wk=1 to 52;
            do st=1 to 10;
                state=states[st]; year=yr; epi_week=wk;
                epi_yearweek=yr*100+wk;
                if yr=2020                   then vi=1;
                else if yr=2021 and wk<20    then vi=2;
                else if yr=2021 and wk<45    then vi=3;
                else if yr=2022 and wk<30    then vi=4;
                else                              vi=5;
                variant_dominant=variants[vi];
                select(vi);
                    when(1) base_cases=rand("poisson",300);
                    when(2) base_cases=rand("poisson",500);
                    when(3) base_cases=rand("poisson",800);
                    when(4) base_cases=rand("poisson",1200);
                    when(5) base_cases=rand("poisson",400);
                    otherwise base_cases=rand("poisson",200);
                end;
                new_cases_7day     =max(0,round(base_cases));
                new_cases_per_100k =round(new_cases_7day/3000*100,0.1);
                test_positivity    =round(rand("beta",2,5)*40,0.1);
                hosp_admissions    =max(0,round(
                    new_cases_7day*rand("beta",1,8)));
                icu_occupancy_pct  =round(rand("beta",3,4)*100,0.1);
                deaths_7day        =max(0,round(
                    hosp_admissions*rand("beta",1,15)));
                vax_pct_complete   =min(95,round(
                    ifn(yr>=2021,
                        30+(yr-2021)*25+wk*0.5+rand("uniform")*10,
                        0),0.1));
                rt_value=round(max(0.3,min(4.5,
                    1.0+rand("normal",0,0.3)*
                    ifn(vi in(3 4),1.3,1.0)*
                    ifn(vax_pct_complete>60,0.75,1.0))),0.01);
                source="HHS_COVID"; output;
            end;
        end;
    end;
    drop st yr wk vi base_cases;
run;

%audit(step=1e-COVID,
    note=HHS COVID profile weekly data built, ds=covid_raw);


/* ── SOURCE 6: Census ACS — SDOH Covariates ──────────────  */
data acs_sdoh_raw;
    call streaminit(20240606);
    length state $2 urbanicity $15;
    array states[10] $2 _temporary_
        ("TX" "CA" "FL" "NY" "OH" "PA" "IL" "GA" "NC" "AZ");
    array urban[10] $15 _temporary_
        ("Mixed" "Urban" "Mixed" "Urban" "Mixed"
         "Mixed" "Urban" "Rural" "Rural" "Mixed");

    do yr=2018 to 2023;
        do st=1 to 10;
            state=states[st]; urbanicity=urban[st]; year=yr;
            pop_total          =round(rand("gamma",5,2000000)+500000);
            pct_poverty        =round(rand("beta",2,6)*30,0.1);
            pct_uninsured      =round(rand("beta",2,7)*25,0.1);
            pct_elderly_65p    =round(10+rand("uniform")*15,0.1);
            pct_nonwhite       =round(rand("beta",3,4)*60,0.1);
            median_hh_income   =round(rand("gamma",5,10000)+35000);
            pct_no_hs_diploma  =round(rand("beta",2,7)*20,0.1);
            pct_crowded_housing=round(rand("beta",1,8)*10,0.1);
            physicians_per_100k=round(rand("gamma",3,80)+100);
            air_quality_index  =round(rand("gamma",3,20)+30);
            sdoh_vuln_index    =round(
                (pct_poverty/30)*0.25+
                (pct_uninsured/25)*0.20+
                (pct_no_hs_diploma/20)*0.15+
                (pct_crowded_housing/10)*0.20+
                ((100-min(physicians_per_100k,300))/300)*0.20,
                0.001)*100;
            survey_weight=round(rand("gamma",3,500)+200);
            source="ACS_SDOH"; output;
        end;
    end;
    drop st yr;
run;

%audit(step=1f-ACS,
    note=Census ACS SDOH covariates built, ds=acs_sdoh_raw);


/* ── SOURCE 7: CMS Part D — Antibiotic Claims (AMR) ───────  */
data cms_abx_raw;
    call streaminit(20240707);
    length state $2 drug_generic $40 aware_class $10 drug_class $25;
    array states[10] $2 _temporary_
        ("TX" "CA" "FL" "NY" "OH" "PA" "IL" "GA" "NC" "AZ");
    array drugs[8] $40 _temporary_
        ("AMOXICILLIN"     "AZITHROMYCIN"   "CIPROFLOXACIN"
         "CEPHALEXIN"      "LEVOFLOXACIN"   "AMOX/CLAVULANATE"
         "VANCOMYCIN HCL"  "MEROPENEM");
    array aware[8] $10 _temporary_
        ("ACCESS" "WATCH" "WATCH" "ACCESS"
         "WATCH"  "WATCH" "RESERVE" "RESERVE");
    array dclass[8] $25 _temporary_
        ("Penicillins"     "Macrolides"        "Fluoroquinolones"
         "Cephalosporins"  "Fluoroquinolones"  "Beta-Lactam Combo"
         "Glycopeptides"   "Carbapenems");

    do yr=2018 to 2023;
        do qtr=1 to 4;
            do st=1 to 10;
                state=states[st];
                di=ceil(rand("uniform")*8);
                drug_generic =drugs[di];
                aware_class  =aware[di];
                drug_class   =dclass[di];
                year=yr; quarter=qtr;
                tot_claims    =max(11,round(rand("gamma",3,400)));
                tot_cost      =tot_claims*(rand("uniform")*80+10);
                days_per_claim=round(rand("uniform")*10+3,0.1);
                reserve_flag  =(aware_class="RESERVE");
                broad_flag    =(drug_class in
                    ("Fluoroquinolones" "Macrolides" "Carbapenems"
                     "Beta-Lactam Combo" "Glycopeptides"));
                source="CMS_ABX"; output;
            end;
        end;
    end;
    drop st yr qtr di;
run;

%audit(step=1g-CMS,
    note=CMS antibiotic claims AMR linkage data built, ds=cms_abx_raw);


/* ════════════════════════════════════════════════════════════
   STEP 2 — DATA CLEANING & VALIDATION
   QC, Winsorizing, HIPAA suppression, recoding
   ════════════════════════════════════════════════════════════ */

%audit(step=2-CLEAN, note=Data cleaning pipeline started);

ods excel options(sheet_name="Data Quality");

data nndss_clean;
    set nndss_raw;
    if case_count<0           then delete;
    if hosp_days<0            then hosp_days=0;
    if days_to_report<=0      then days_to_report=1;
    if days_to_report>90      then days_to_report=90;
    if case_count>100         then case_count=100; /* Winsorize */
    hosp_flag  =(severity in ("SEVERE" "FATAL"));
    fatal_flag =(died=1);
    if      days_to_report<=2  then report_lag="IMMEDIATE";
    else if days_to_report<=7  then report_lag="WITHIN WEEK";
    else if days_to_report<=14 then report_lag="1-2 WEEKS";
    else                            report_lag="DELAYED (>2wk)";
    length report_lag $15;

    /* INHERITED Final Project 1: categorize continuous vars */
    if      case_count<=10 then case_count_cat="Low";
    else if case_count<=30 then case_count_cat="Medium";
    else                        case_count_cat="High";
    length case_count_cat $6;
run;

%suppress_cells(ds=nndss_clean, countvar=case_count, threshold=11);

data nhsn_clean;
    set nhsn_amr_raw;
    if resistance_pct<0 or resistance_pct>100 then delete;
    if n_isolates<30 then delete;
    if sir<0 then sir=0;
    performing_well=(sir<1.0);
    /* AMR category (Final Project 1 style binning) */
    if      resistance_pct<20 then resist_cat="LOW";
    else if resistance_pct<40 then resist_cat="MODERATE";
    else if resistance_pct<60 then resist_cat="HIGH";
    else                           resist_cat="CRITICAL";
    length resist_cat $8;
    format resist_cat $resist_cat_fmt.;
    length resist_cat_label $25;
    resist_cat_label=put(resist_cat,$resist_cat_fmt.);
run;

data fluview_clean;
    set fluview_raw;
    if ili_pct<0         then ili_pct=0;
    if ili_pct>30        then ili_pct=30;
    if total_specimens<10 then delete;
    pct_pos_any=min(100,pct_pos_flua+pct_pos_flub+
                        pct_pos_covid+pct_pos_rsv);
run;

data foodnet_clean;
    set foodnet_raw;
    if case_count<0   then delete;
    if cfr>10         then cfr=10;
    if median_incub<=0 then median_incub=1;
run;
%suppress_cells(ds=foodnet_clean, countvar=death_count, threshold=11);

data covid_clean;
    set covid_raw;
    if rt_value<0           then rt_value=0.1;
    if rt_value>5           then rt_value=5.0;
    if test_positivity>50   then test_positivity=50;
    if new_cases_7day<0     then new_cases_7day=0;
    rt_category=ifc(rt_value<1,"DECLINING",
                ifc(rt_value<1.5,"SUSTAINED",
                ifc(rt_value<2,"GROWING","EPIDEMIC")));
    length rt_category $12;
run;

/* Data Quality Report */
title "EpiWatch v3.0 — Data Quality: NNDSS Case Counts by Domain";
proc means data=nndss_clean n nmiss mean stddev min max maxdec=2;
    class domain;
    var case_count hosp_days days_to_report;
    format domain $domain_fmt.;
run;
title;

%audit(step=2-CLEAN-DONE, note=All 7 sources cleaned and validated);


/* ════════════════════════════════════════════════════════════
   STEP 3 — SAMPLING & CENTRAL LIMIT THEOREM
   INHERITED FROM ASSIGNMENTS 1 & 2
   PROC SURVEYSELECT + CLT on surveillance data
   ════════════════════════════════════════════════════════════ */

%audit(step=3-SAMPLING, note=Sampling and CLT demonstration started);

ods excel options(sheet_name="Sampling and CLT");

/* ── 3a. SRS of NNDSS records (Assignment 1) ───────────────
   Simple Random Sampling, selection probability, weight       */
title "EpiWatch: Simple Random Sample — 20% SRS of NNDSS Records";
title2 "PROC SURVEYSELECT — Inherited from Assignment 1";
proc surveyselect data=nndss_clean
    method=srs n=500
    seed=20240101
    out=nndss_sample;
run;
title;

/* ── 3b. 95% CI for mean case count (Assignment 1) ─────────
   Confidence interval for mean from SRS sample               */
title "95% Confidence Interval for Mean Case Count (SRS Sample)";
title2 "INHERITED from Assignment 1: CI for mean";
proc means data=nndss_sample n mean stderr clm alpha=0.05;
    class domain;
    var case_count;
    format domain $domain_fmt.;
run;
title;

/* ── 3c. CLT Demonstration (Assignment 2) ──────────────────
   Non-normal source → sample means approach normality
   n=3, n=6, n=9 — same structure as original Assignment 2    */

/* Source distribution: right-skewed Poisson case counts */
title "EpiWatch CLT: Source Distribution — Case Counts (Non-Normal)";
title2 "Poisson-distributed incidence counts — right-skewed";
proc sgplot data=nndss_clean;
    where domain="RESPIRATORY";
    histogram case_count / binwidth=5 fillattrs=(color=steelblue);
    density   case_count / type=kernel
                           lineattrs=(color=navy thickness=2);
    xaxis label="Weekly Case Count" grid;
    yaxis label="Percent" grid;
run;

/* CLT macro: repeated sampling (Assignment 2 %clt_demo pattern) */
%macro clt_demo(n=, nsamp=100);
    proc surveyselect data=nndss_clean
        method=urs n=&n.
        rep=&nsamp.
        seed=20240101
        out=clt_sample_n&n.;
    run;
    proc sql;
        create table clt_means_n&n. as
        select replicate as sample_num,
               mean(case_count) as mean_value,
               &n. as sample_size
        from clt_sample_n&n.
        group by replicate;
    quit;
    title "CLT: Distribution of Sample Means (n=&n.) — Epi Case Counts";
    title2 "Approaches normality as n increases | Inherited Assignment 2";
    proc sgplot data=clt_means_n&n.;
        histogram mean_value / fillattrs=(color=lightsteelblue)
                                binwidth=1;
        density   mean_value / type=kernel
                                lineattrs=(color=navy thickness=2);
        xaxis label="Sample Mean (Case Count)" grid;
        yaxis label="Percent" grid;
    run;
    /* Normality test on sample means (Shapiro-Wilk, K-S, etc.) */
    title "Normality Test: Sample Means (n=&n.) — Full Battery";
    proc univariate data=clt_means_n&n. normal;
        var mean_value;
        histogram mean_value / normal kernel;
        qqplot    mean_value / normal(mu=est sigma=est);
    run;
%mend clt_demo;

%clt_demo(n=3,  nsamp=100);
%clt_demo(n=6,  nsamp=100);
%clt_demo(n=9,  nsamp=100);

/* Combine all CLT results for comparison panel */
data clt_all;
    set clt_means_n3 clt_means_n6 clt_means_n9;
run;

title "CLT Summary: Distribution of Sample Means — n=3, 6, 9";
title2 "Variance decreases as n increases — confirming CLT";
proc sgpanel data=clt_all;
    panelby sample_size / columns=3 novarname;
    histogram mean_value / fillattrs=(transparency=0.3) binwidth=1;
    density   mean_value / type=kernel
                           lineattrs=(color=navy thickness=2);
    rowaxis label="Percent" grid;
    colaxis label="Sample Mean (Case Counts)";
run;
title;

%audit(step=3-SAMPLING-DONE,
    note=%str(SURVEYSELECT SRS + CLT n=3,6,9 complete));


/* ════════════════════════════════════════════════════════════
   STEP 4 — NORMALITY ASSESSMENT & POWER ANALYSIS
   INHERITED FROM ASSIGNMENTS 1 & 2
   Full normality battery + power curves
   ════════════════════════════════════════════════════════════ */

%audit(step=4-NORMALITY, note=Normality and power analysis started);

ods excel options(sheet_name="Normality and Power");

/* ── 4a. Full normality battery (Assignments 1 & 3) ────────
   Shapiro-Wilk, K-S, Cramer-von Mises, Anderson-Darling
   Moments, Quantiles, Extreme Observations, QQ plots
   Same battery applied in Final Project 2 residual analysis  */
title "EpiWatch: Normality Assessment — Weekly Case Counts by Domain";
title2 "Shapiro-Wilk + K-S + Cramer-von Mises + Anderson-Darling";
proc sort data=nndss_clean out=nndss_clean_sorted; by domain; run;
proc univariate data=nndss_clean_sorted normal plot;
    by domain;
    var case_count;
    histogram case_count / normal kernel;
    qqplot    case_count / normal(mu=est sigma=est);
    inset n mean std skewness kurtosis / position=ne;
    format domain $domain_fmt.;
run;

/* Normality of days_to_report (Assn 3 style) */
title "Normality — Days from Illness Onset to Report";
proc univariate data=nndss_clean normal;
    var days_to_report;
    histogram days_to_report / normal kernel;
    qqplot    days_to_report / normal(mu=est sigma=est);
run;

/* ── 4b. PROC POWER — Outbreak detection (Assignment 1) ────
   One-sample t-test power curve vs sample size
   H0: Mean cases = 10 | True mean = 15 | SD = 5            */
title "EpiWatch: Power Analysis — Detecting Outbreak Threshold";
title2 "H0: Mean Cases=10 | True Mean=15 | SD=5 | One-Sample t-Test";
proc power;
    onesamplemeans
        nullmean = 10
        mean     = 15
        std      = 5
        ntotal   = 5 to 50 by 5
        sides    = 2
        alpha    = 0.05
        power    = .;
    ods output Output=power_results;
    plot x=n min=5 max=50;
    title2 "Power vs Sample Size — Outbreak Detection";
run;

/* Power for AMR resistance threshold detection */
title "Power Analysis: Detecting Resistance Rate > 20% (AMR Alert)";
title2 "H0=20%, True=25%, SD=8% — varying sample size";
proc power;
    onesamplemeans
        nullmean = 20
        mean     = 25
        std      = 8
        ntotal   = 10 30 50 100 200
        sides    = 2
        alpha    = 0.05
        power    = .;
run;
title;

%audit(step=4-NORMALITY-DONE,
    note=UNIVARIATE normality battery + POWER analysis complete);


/* ════════════════════════════════════════════════════════════
   STEP 5 — T-TESTS (ONE-SAMPLE, PAIRED, TWO-SAMPLE)
   INHERITED FROM ASSIGNMENTS 1, 3 & MIDTERM
   ════════════════════════════════════════════════════════════ */

%audit(step=5-TTESTS, note=T-test pipeline started);

ods excel options(sheet_name="T-Tests");

/* ── 5a. One-sample t-test: Rt vs epidemic threshold ───────
   INHERITED Assignment 1 & Midterm:
   H0: Mean Rt=1.0 | H1: Mean Rt≠1.0 (two-tailed, α=0.05)
   Same logic: Midterm H0: Mean weight=15, H1: ≠15          */
title "EpiWatch: One-Sample t-Test — Is Mean Rt Significantly Above 1.0?";
title2 "H0: Mean Rt=1.0 (epidemic threshold) | Two-tailed α=0.05";
proc ttest data=covid_clean h0=1.0 sides=2 alpha=0.05;
    var rt_value;
    title2 "Tests whether transmission is sustained vs declining";
run;

/* ── 5b. One-sample t-test: Incidence vs WHO threshold ─────
   INHERITED Midterm (Q2 cereal weight pattern):
   H0: Mean incidence=50/100K | Two-tailed at α=0.05        */
proc sql;
    create table incidence_sample as
    select incidence_per_100k
    from (
        select n.case_count,
               s.pop_total,
               round(n.case_count/(s.pop_total/100000),4)
                   as incidence_per_100k,
               n.domain
        from nndss_clean as n
        left join acs_sdoh_raw as s
            on n.state=s.state and n.year=s.year
        where n.year=2022 and n.domain="RESPIRATORY"
    )
    where incidence_per_100k is not missing;
quit;

title "EpiWatch: One-Sample t-Test — Is Respiratory Incidence ≠ 50/100K?";
title2 "H0: μ=50 | H1: μ≠50 (two-tailed) | Inherited: Midterm Q2 pattern";
proc ttest data=incidence_sample h0=50 sides=2 alpha=0.05;
    var incidence_per_100k;
    title2 "Analogous to Midterm cereal weight H0=15 test";
run;

/* ── 5c. Two-sample t-test: ILI% — High vs Low SDOH ───────
   INHERITED Assignment 3:
   Folded F for homoscedasticity, pooled vs Satterthwaite    */
proc sql noprint;
    select median(sdoh_vuln_index) into :sdoh_median
    from acs_sdoh_raw;
quit;

proc sql;
    create table flu_sdoh as
    select f.state, f.year, f.epi_week,
           f.ili_pct, f.pct_pos_flua,
           case when s.sdoh_vuln_index>=&sdoh_median.
                    then "HIGH_SDOH_BURDEN"
                else "LOW_SDOH_BURDEN"
           end as sdoh_group length=20
    from fluview_clean as f
    left join acs_sdoh_raw as s
        on f.state=s.state and f.year=s.year;
quit;

title "EpiWatch: Two-Sample t-Test — ILI% in High vs Low SDOH Burden States";
title2 "Folded F for homoscedasticity | Pooled & Satterthwaite";
proc ttest data=flu_sdoh plots=(summary(unpackpanels));
    class sdoh_group;
    var ili_pct;
    title2 "Distribution of ILI% by SDOH Burden Group";
run;

/* ── 5d. Paired t-test: Resistance rate 2021 vs 2022 ───────
   INHERITED Assignment 3:
   Paired profiles, agreement plot, Q-Q of differences
   Mirrors Midterm / Assn 3 paired (YR2011 vs YR2012) style  */
proc sql;
    create table resist_paired as
    select a.state, a.pathogen,
           a.resistance_pct as resist_2021,
           b.resistance_pct as resist_2022,
           b.resistance_pct - a.resistance_pct as yr_change
    from nhsn_clean as a
    inner join nhsn_clean as b
        on a.state=b.state and a.pathogen=b.pathogen
           and a.year=2021 and b.year=2022;
quit;

title "EpiWatch: Paired t-Test — AMR Resistance Rate Change 2021 vs 2022";
title2 "H0: No year-over-year change | Paired profiles + Q-Q of differences";
proc ttest data=resist_paired plots=(all);
    paired resist_2021*resist_2022;
    title2 "Inherited Assignment 3: paired profiles, agreement plot";
run;

/* ── 5e. PROC UNIVARIATE on paired differences ──────────── */
title "Normality of Paired Resistance Differences (2021-2022)";
title2 "Shapiro-Wilk, K-S, Cramer-von Mises, Anderson-Darling";
proc univariate data=resist_paired normal;
    var yr_change;
    histogram yr_change / normal kernel;
    qqplot    yr_change / normal(mu=est sigma=est);
    inset n mean std / position=ne;
run;
title;

%audit(step=5-TTESTS-DONE,
    note=%str(One-sample, two-sample, paired t-tests complete));


/* ════════════════════════════════════════════════════════════
   STEP 6 — FEATURE ENGINEERING
   Rt, CUSUM, incidence rates, SDOH linkage, NLP flags
   ════════════════════════════════════════════════════════════ */

%audit(step=6-ENGINEER, note=Feature engineering pipeline started);

/* ── 6a. SDOH-linked incidence rates ─────────────────────── */
proc sql;
    create table nndss_rates as
    select n.*,
           s.pop_total, s.pct_poverty, s.pct_uninsured,
           s.pct_elderly_65p, s.sdoh_vuln_index,
           s.physicians_per_100k, s.urbanicity, s.survey_weight,
           round(n.case_count/(s.pop_total/100000),4)
               as incidence_per_100k
               label="Weekly Incidence per 100,000",
           round(n.hosp_flag/max(n.case_count,1)*100,0.1)
               as hosp_rate_pct
               label="Hospitalization Rate (%)",
           case
               when s.sdoh_vuln_index>=75 then "HIGH BURDEN"
               when s.sdoh_vuln_index>=50 then "MODERATE BURDEN"
               when s.sdoh_vuln_index>=25 then "LOW BURDEN"
               else "MINIMAL BURDEN"
           end as sdoh_tier length=20
               label="SDOH Vulnerability Tier"
    from nndss_clean as n
    left join acs_sdoh_raw as s
        on n.state=s.state and n.year=s.year
    order by n.domain, n.state, n.year, n.epi_week;
quit;

/* ── 6b. Rt, rolling CUSUM, season, syndrome flags ─────────
   INHERITED Assignment 2: Z-score logic
   RETAINED rolling sum (LAG + RETAIN pattern)               */
proc sort data=nndss_rates; by domain state year epi_week; run;

data nndss_rt;
    set nndss_rates;
    by domain state year epi_week;
    lag_cases=lag(case_count);
    if first.state then lag_cases=.;
    if lag_cases>0 and lag_cases ne .S then
        rt_approx=round(case_count/lag_cases,0.01);
    else rt_approx=.;
    rt_approx=max(0.1,min(5.0,rt_approx));

    retain roll_sum 0 roll_n 0;
    if first.state then do; roll_sum=0; roll_n=0; end;
    roll_sum=roll_sum+case_count;
    roll_n   =roll_n+1;
    rolling_avg_4wk=ifn(roll_n>=4,
        round(roll_sum/min(roll_n,4),0.1),.);
    aberration_flag=(case_count>(rolling_avg_4wk*2.5)
                     and rolling_avg_4wk>0);

    select;
        when (epi_week in (1:13))  season="Winter";
        when (epi_week in (14:26)) season="Spring";
        when (epi_week in (27:39)) season="Summer";
        otherwise                   season="Fall";
    end;
    length season $6;

    peak_season_flag=0;
    if domain="AMR"         and season in ("Winter" "Fall")
        then peak_season_flag=1;
    if domain="RESPIRATORY" and season in ("Winter" "Fall")
        then peak_season_flag=1;
    if domain="FOODBORNE"   and season in ("Summer" "Spring")
        then peak_season_flag=1;

    length syndrome_alert $60;
    if      aberration_flag=1 and peak_season_flag=1
        then syndrome_alert="PEAK SEASON ABERRATION — INVESTIGATE";
    else if aberration_flag=1
        then syndrome_alert="OFF-SEASON SPIKE — HIGH PRIORITY";
    else if rt_approx>1.5
        then syndrome_alert="RAPID GROWTH DETECTED";
    else if rt_approx>1.0
        then syndrome_alert="SUSTAINED TRANSMISSION";
    else syndrome_alert="WITHIN EXPECTED RANGE";

    /* Composite concern score (Assignment 4 ESTIMATE style) */
    concern_score=(aberration_flag*3)+(peak_season_flag*2)
                  +(rt_approx>1.5)+(hosp_flag*2);

    /* INHERITED Final Project 1: categorize covariates     */
    if      pct_poverty<=10 then poverty_cat="Low";
    else if pct_poverty<=20 then poverty_cat="Medium";
    else                         poverty_cat="High";
    length poverty_cat $6;

    if      sdoh_vuln_index<=33 then sdoh_cat="Low";
    else if sdoh_vuln_index<=66 then sdoh_cat="Medium";
    else                             sdoh_cat="High";
    length sdoh_cat $6;

    drop lag_cases roll_sum roll_n;
run;

/* ── 6c. CUSUM outbreak detection ───────────────────────── */
proc sql;
    create table weekly_baseline as
    select domain, state, epi_week,
           mean(case_count) as baseline_mean,
           std(case_count)  as baseline_std
    from nndss_clean
    where year between 2018 and 2020
    group by domain, state, epi_week;
quit;

proc sort data=nndss_rt out=nndss_rt_for_cusum; by domain state epi_week; run;

data cusum_detect;
    merge nndss_rt_for_cusum (in=a)
          weekly_baseline (in=b
              rename=(baseline_mean=bl_mean
                      baseline_std =bl_std));
    by domain state epi_week;
    if a;
    if bl_std>0 then
        z_score=round((case_count-bl_mean)/bl_std,0.01);
    else z_score=0;
    retain cusum_stat 0;
    if first.state then cusum_stat=0;
    cusum_stat=max(0, cusum_stat+z_score-0.5);
    cusum_alert=(cusum_stat>=5);
    if      cusum_stat>=8 or z_score>=3.5 then alert_level="RED";
    else if cusum_stat>=5 or z_score>=2.5 then alert_level="ORANGE";
    else if cusum_stat>=2 or z_score>=1.5 then alert_level="YELLOW";
    else                                       alert_level="GREEN";
    attrib
        z_score     label="Z-Score vs Historical Baseline"
        cusum_stat  label="CUSUM Statistic"
        cusum_alert label="CUSUM Alert Triggered (1=Yes)"
        alert_level label="Surveillance Alert Level";
    format alert_level $alert_fmt.;
    drop bl_mean bl_std;
run;

/* Apply Z-score outlier flagging (Assignment 2) */
%flag_outliers(ds=cusum_detect, var=z_score,
               out=cusum_flagged, zscore_thresh=3);

/* Apply NLP alert narrative generation */
%gen_alert_narrative(ds=cusum_flagged, out=cusum_alerts);

/* Apply NLP pathogen classifier */
%classify_pathogen_nlp(ds=cusum_alerts, out=cusum_classified);

%audit(step=6-ENGINEER-DONE,
    note=Rt CUSUM SDOH NLP flags CLT outlier flagging complete);


/* ════════════════════════════════════════════════════════════
   STEP 7 — ANOVA / GLM ANALYSES
   INHERITED FROM ASSIGNMENTS 3, 4, 5
   One-way, two-way, RCBD, CRD, repeated measures,
   LSD, Tukey, Dunnett, CONTRAST, ESTIMATE, LSMEANS
   ════════════════════════════════════════════════════════════ */

%audit(step=7-GLM, note=GLM ANOVA pipeline started);

ods excel options(sheet_name="GLM ANOVA");

/* ── 7a. One-Way ANOVA: Incidence by Domain ─────────────────
   INHERITED Assignment 4:
   PROC GLM, LSD, Tukey, Dunnett, CONTRAST, ESTIMATE, LSMEANS
   Box plot overlay with F statistic (StemLength style)       */
title "EpiWatch: One-Way ANOVA — Incidence Rate by Disease Domain";
title2 "LSD + Tukey + Dunnett + CONTRAST + ESTIMATE + LSMEANS";
proc glm data=nndss_rt
    plots(only)=(boxplot meanplot diffplot);
    class domain;
    model incidence_per_100k = domain;
    /* INHERITED Assn 4: LSD */
    means domain / lsd cldiff lines;
    /* INHERITED Assn 4: Tukey */
    means domain / tukey cldiff lines;
    /* INHERITED Assn 4+5: Dunnett — FOODBORNE as control */
    means domain / dunnett("FOODBORNE") cldiff;
    /* INHERITED Assn 4: LSMEANS Tukey */
    lsmeans domain / pdiff adjust=tukey cl;
    /* INHERITED Assn 4: CONTRAST statements */
    contrast "AMR vs RESPIRATORY"
        domain 1 -1 0;
    contrast "AMR+RESP vs FOODBORNE"
        domain 1 1 -2;
    /* INHERITED Assn 4: ESTIMATE */
    estimate "AMR vs RESPIRATORY mean diff"
        domain 1 -1 0;
    estimate "Mean: AMR+RESP vs 2× FOODBORNE"
        domain 1 1 -2;
    title2 "F test | LSD | Tukey | Dunnett | CONTRAST | ESTIMATE";
run; quit;

/* ── 7b. Two-Way ANOVA: Incidence by Domain × Season ────────
   INHERITED Assn 3 (two-factor): interaction + Levene test
   Also mirrors Final Project 2 (loc×Trt two-way GLM)        */
title "Two-Way ANOVA: Incidence by Disease Domain × Season";
title2 "Interaction + main effects | Levene homoscedasticity test";
proc glm data=nndss_rt
    plots(only)=(intplot boxplot);
    class domain season;
    model incidence_per_100k = domain | season;
    means domain season / hovtest=levene;
    lsmeans domain*season / pdiff adjust=tukey;
    format domain $domain_fmt.;
run; quit;

/* ── 7c. Repeated Measures GLM — Resistance across 3 years ──
   INHERITED Assignment 3:
   MANOVA (Wilks' Lambda), Greenhouse-Geisser, Huynh-Feldt
   Contrast variables (Year_2, Year_3)                        */
proc sql;
    create table resist_3yr as
    select state, pathogen,
           mean(case when year=2020 then resistance_pct else . end)
               as resist_2020,
           mean(case when year=2021 then resistance_pct else . end)
               as resist_2021,
           mean(case when year=2022 then resistance_pct else . end)
               as resist_2022
    from nhsn_clean
    where year in (2020 2021 2022)
    group by state, pathogen
    having nmiss(calculated resist_2020,
                 calculated resist_2021,
                 calculated resist_2022) = 0;
quit;

title "EpiWatch: Repeated Measures ANOVA — AMR Resistance Across 3 Years";
title2 "MANOVA (Wilks' Lambda) + Greenhouse-Geisser + Huynh-Feldt";
proc glm data=resist_3yr;
    model resist_2020 resist_2021 resist_2022 = / nouni;
    repeated year 3 (2020 2021 2022) / nom summary;
    /* Pairwise within-subject contrasts must use the REPEATED statement's
       own transform option (e.g. CONTRAST(1)) rather than a CLASS-style
       CONTRAST statement, since "year" is a within-subject factor here,
       not a model CLASS variable. */
    title2 "Within-subject year effect | Pairwise year contrasts";
run; quit;

/* ── 7d. RCBD ANOVA — Disease as Treatment, State as Block ───
   INHERITED Assignment 5:
   CRD first (no blocking) then RCBD (blocking on state)
   MSE comparison, R-squared difference                        */
proc sql;
    create table epi_rcbd as
    select domain, state as block_var, year,
           mean(incidence_per_100k) as mean_incidence,
           mean(case_count)         as mean_cases,
           mean(hosp_rate_pct)      as mean_hosp_rate
    from nndss_rt
    group by domain, state, year
    having year=2022;
quit;

/* CRD — Ignoring block (Assignment 5: CRD first) */
title "EpiWatch: CRD — Disease Domain on Incidence (Block Ignored)";
title2 "PROC GLM ignoring state block — higher MSE expected";
proc glm data=epi_rcbd;
    class domain;
    model mean_incidence = domain;
    means domain / lsd;
    title2 "CRD: No blocking — inflated MSE, lower R-squared";
run; quit;

/* RCBD — Block = state, Treatment = disease domain */
title "EpiWatch: RCBD — Disease Domain (Block = State)";
title2 "PROC GLM | LSD + Dunnett (AMR control) + LSMEANS Tukey";
proc glm data=epi_rcbd
    plots(only)=(boxplot);
    class domain block_var;
    model mean_incidence = domain block_var;
    means domain / lsd cldiff;
    means domain / dunnett("AMR") cldiff;
    lsmeans domain / pdiff adjust=tukey cl;
    contrast "Respiratory vs Foodborne" domain 0  1 -1;
    contrast "AMR vs avg(Resp+Food)"    domain 2 -1 -1;
    estimate "RESPIRATORY vs FOODBORNE difference" domain 0 1 -1;
    title2 "RCBD: State blocks reduce MSE | Compare R-sq with CRD";
run; quit;

%audit(step=7-GLM-DONE,
    note=One-way two-way repeated-measures CRD RCBD ANOVA complete);


/* ════════════════════════════════════════════════════════════
   STEP 8 — PROC MIXED: RANDOM EFFECTS & SUB-SAMPLING
   INHERITED FROM ASSIGNMENT 5
   REML, block as random, sub-sampling, Part C vs D
   ════════════════════════════════════════════════════════════ */

%audit(step=8-MIXED, note=PROC MIXED random effects pipeline started);

ods excel options(sheet_name="Mixed Models");

/* ── 8a. PROC MIXED — Block (State) as Random Effect ────────
   INHERITED Assn 5: proc mixed; random block; REML; AIC     */
title "EpiWatch: PROC MIXED — RCBD with State as Random Effect (REML)";
title2 "Block=State (random) | Treatment=Domain (fixed) | REML";
proc mixed data=epi_rcbd method=reml covtest;
    class domain block_var;
    model mean_incidence = domain / solution ddfm=kr;
    random block_var;
    lsmeans domain / pdiff=all cl adjust=tukey;
    ods output CovParms   =mixed_covparms
               FitStatistics=mixed_fitstat;
    title2 "AIC, BIC, Covariance estimates | Block variance component";
run;

/* ── 8b. Sub-sampling PROC MIXED (Assignment 5 Part B) ──────
   random block_id pathogen*replication
   Three variance components: Block, Block*Pathogen, Residual  */
title "EpiWatch: PROC MIXED — RCBD + Sub-Sampling (Replication Nested)";
title2 "random block_id pathogen*replication | Inherited Assignment 5";
proc mixed data=nhsn_clean method=reml covtest;
    class block_id pathogen replication;
    model resistance_pct = pathogen / solution;
    random block_id pathogen*replication;
    lsmeans pathogen / pdiff=all cl;
    ods output CovParms=subsampling_cov;
    title2 "Three variance components: Block, Block*Pathogen, Residual";
run;

title "Covariance Parameter Estimates: Block + Sub-Sampling + Residual";
proc print data=subsampling_cov noobs label; run;

/* ── 8c. Part C vs Part D (Assignment 5 pattern) ────────────
   Part C: Direct sub-sampling (individual records)
   Part D: Means of sub-samples (aggregated via SQL)
   Compare MSE, R-squared, AIC                                 */

/* PART C — Direct (individual NHSN records) */
title "PART C — Direct Sub-Sampling: PROC MIXED on Individual Records";
proc mixed data=nhsn_clean method=reml;
    class block_id pathogen replication;
    model resistance_pct = pathogen / solution;
    random block_id pathogen*replication;
    ods output FitStatistics=fit_partC;
run;

/* PART D — Means of sub-samples (SQL aggregation) */
proc sql;
    create table nhsn_means as
    select block_id, pathogen,
           mean(resistance_pct) as mean_resistance,
           count(*)             as n_obs
    from nhsn_clean
    group by block_id, pathogen;
quit;

title "PART D — Means of Sub-Samples: PROC GLM on Aggregated Means";
title2 "Higher R-squared, lower MSE expected vs Part C";
proc glm data=nhsn_means;
    class block_id pathogen;
    model mean_resistance = pathogen block_id;
    means pathogen / lsd cldiff;
    /* Dunnett with MRSA as control (Assignment 5 pattern) */
    means pathogen / dunnett("Staph. aureus (MRSA)") cldiff;
    lsmeans pathogen / pdiff adjust=tukey cl;
    /* INHERITED Assn 4: CONTRAST between pathogen groups */
    contrast "MDR (CRE+CRKP) vs non-MDR" pathogen 0 0 1 0 0 1;
    estimate "MDR vs non-MDR mean difference" pathogen 0 0 1 0 0 1;
    ods output FitStatistics=fit_partD;
    title2 "Part D: Aggregated means reduce within-group variability";
run; quit;

title "Covariance Parameter Estimates — RCBD Random Block Model";
proc print data=mixed_covparms noobs label; run;
title;

%audit(step=8-MIXED-DONE,
    note=PROC MIXED REML sub-sampling Part C vs D complete);


/* ════════════════════════════════════════════════════════════
   STEP 9 — FACTORIAL DESIGN EXPERIMENTS
   INHERITED FROM ASSIGNMENT 6 (Gasoline Additives) and
   ASSIGNMENT 7 (Broad Bean Plants)
   Full factorial GLM, Latin Square analog, RCBD
   ════════════════════════════════════════════════════════════ */

%audit(step=9-FACTORIAL, note=Factorial design analysis started);

ods excel options(sheet_name="Factorial Design");

/* ────────────────────────────────────────────────────────────
   9A. ASSIGNMENT 6 ANALOG:
   Gasoline Additives → Epi Analogy:
   "4 Disease Interventions × 4 Regions × 4 Seasons"
   Balanced Latin Square / crossed factorial
   Dependent variable: mean_incidence (analogous to Emission)
   ──────────────────────────────────────────────────────────── */

/* Build balanced 4×4×4 factorial dataset
   (mirrors Assn 6: 4 cars × 4 drivers × 4 additives = 16 obs) */
data epi_factorial;
    call streaminit(20240601);
    length intervention $2 region $2 season $6;
    array interventions[4] $2 _temporary_ ("A" "B" "C" "D");
    /* A=Vaccination campaign, B=Contact tracing,
       C=Environmental sanitation, D=Prophylactic ABX */
    array regions[4] $2 _temporary_
        ("R1" "R2" "R3" "R4");
    array seasons[4] $6 _temporary_
        ("Winter" "Spring" "Summer" "Fall");

    /* Latin Square structure: each intervention appears
       exactly once in each region AND each season          */
    /* Row=region, Column=season, Entry=intervention        */
    array ls_matrix[4,4] $2 _temporary_
        ("A" "B" "C" "D"
         "B" "C" "D" "A"
         "C" "D" "A" "B"
         "D" "A" "B" "C");

    obs=0;
    do r=1 to 4;
        do s=1 to 4;
            obs+1;
            region      =regions[r];
            season      =seasons[s];
            intervention=ls_matrix[r,s];
            /* Simulate incidence reduction by intervention */
            base_incidence=80+rand("normal",0,5);
            if intervention="A" then
                incidence=base_incidence - rand("normal",18,4);
            else if intervention="B" then
                incidence=base_incidence - rand("normal",22,5);
            else if intervention="C" then
                incidence=base_incidence - rand("normal",21,4);
            else
                incidence=base_incidence - rand("normal",19,4);
            incidence=max(20,round(incidence,0.1));
            output;
        end;
    end;
    drop r s base_incidence obs;
    label
        intervention="Intervention Type (A-D)"
        region      ="Geographic Region (Block)"
        season      ="Season (Block)"
        incidence   ="Incidence Rate per 100K (post-intervention)";
    format intervention $additive_fmt.;
run;

/* Display full factorial set (Assn 6 style overview) */
title "Assignment 6 Analog — Full Factorial: Intervention × Region × Season";
title2 "Latin Square: 4 Interventions × 4 Regions × 4 Seasons = 16 obs";
proc print data=epi_factorial noobs label; run;

/* GLM: 3-way balanced factorial (mirrors Assn 6 GLM model)
   Model: Emission = additives drivers cars
   Here:  Incidence = intervention region season            */
title "EpiWatch Assn-6 Analog: GLM — Latin Square Design";
title2 "Intervention + Region + Season | R² target: high (mirrors Assn 6 R²=0.918)";
proc glm data=epi_factorial
    plots(only)=(boxplot meanplot diffplot);
    class intervention region season;
    model incidence = intervention region season;

    /* LSMEANS for intervention (mirrors Assn 6 LSMeans table)
       A=18.75, B=22.00, C=21.00, D=19.00 style reporting    */
    lsmeans intervention / pdiff adjust=tukey cl;

    /* Pairwise comparison matrix (Assn 6 i/j matrix)        */
    lsmeans intervention / pdiff stderr;

    /* CONTRAST statements (mirrors Assn 6: A vs B, A vs C) */
    contrast "A vs B" intervention  1 -1  0  0;
    contrast "A vs C" intervention  1  0 -1  0;
    contrast "A vs D" intervention  1  0  0 -1;

    /* ESTIMATE: magnitude of intervention differences       */
    estimate "Intervention A vs B" intervention  1 -1  0  0;
    estimate "Intervention A vs C" intervention  1  0 -1  0;
    estimate "Intervention A vs D" intervention  1  0  0 -1;

    /* Tukey HSD groupings (mirrors Assn 6 Tukey grouping)  */
    means intervention / tukey cldiff lines;

    format intervention $additive_fmt.;
    title2 "LSMeans | Tukey HSD | Contrasts: A vs B/C/D | Pairwise matrix";
run; quit;

/* LS-Means plot (mirrors Assn 6 'LS-Means for additives' chart) */
proc sql;
    create table interv_lsmeans as
    select intervention,
           mean(incidence) as ls_mean_incidence
    from epi_factorial
    group by intervention
    order by intervention;
quit;

title "LS-Means for Intervention Type — Epi Incidence Reduction";
title2 "Mirrors Assignment 6: LS-Means for additives (Emission)";
proc sgplot data=interv_lsmeans;
    scatter x=intervention y=ls_mean_incidence /
        markerattrs=(size=12 symbol=circlefilled color=navy)
        datalabel=ls_mean_incidence;
    refline 0 / axis=y lineattrs=(pattern=dot);
    yaxis label="Incidence LS-Mean (per 100K)" grid;
    xaxis label="Intervention Type";
    format intervention $additive_fmt.;
run;

/* Distribution of Incidence by Intervention (Assn 6 boxplot) */
title "Distribution of Incidence by Intervention Type (Assn 6 style)";
proc sgplot data=epi_factorial;
    vbox incidence / category=intervention
        fillattrs=(transparency=0.25)
        lineattrs=(color=navy);
    xaxis label="Intervention Type";
    yaxis label="Incidence Rate per 100K" grid;
    format intervention $additive_fmt.;
run;


/* ────────────────────────────────────────────────────────────
   9B. ASSIGNMENT 7 ANALOG:
   Broad Bean Plants (plant type × phosphorous) →
   Disease Type (D1 short=AMR / D2 tall=Respiratory) ×
   Vaccination Level (V1=None / V2=25% / V3=50% coverage)
   RCBD with 4 seasonal blocks
   ──────────────────────────────────────────────────────────── */

/* Step 1: Full factorial combinations (Assn 7 Q1) */
data factorial_combinations;
    do DiseaseType=1 to 2;
        do VaxLevel=1 to 3;
            output;
        end;
    end;
    label DiseaseType="Disease Type (1=AMR, 2=Respiratory)"
          VaxLevel   ="Vaccination Level (1=None, 2=25%, 3=50%)";
    format DiseaseType plant_type_fmt. VaxLevel ph_rate_fmt.;
run;

title "Assignment 7 Analog — Full Factorial Combinations (2 × 3 = 6)";
title2 "DiseaseType (T1/T2) × Vaccination Level (P1/P2/P3) = 6 combos";
proc print data=factorial_combinations noobs label; run;

/* Step 2: Field layout — 4 blocks × 6 combos = 24 obs (Assn 7 Q2) */
data epi_field_layout;
    do block=1 to 4;
        do DiseaseType=1 to 2;
            do VaxLevel=1 to 3;
                output;
            end;
        end;
    end;
    label block="Seasonal Block (1=Winter 2=Spring 3=Summer 4=Fall)"
          DiseaseType="Disease Type"
          VaxLevel   ="Vaccination Level";
    format DiseaseType plant_type_fmt. VaxLevel ph_rate_fmt.;
run;

title "Field Layout: 4 Seasonal Blocks × 6 DiseaseType×VaxLevel Combos";
title2 "24 total observations | Mirrors Assignment 7 Q2 layout";
proc print data=epi_field_layout noobs label; run;

/* Scatter plot of field layout (Assn 7 scatter) */
title "Visualization of Field Layout by Seasonal Block";
proc sgplot data=epi_field_layout;
    scatter x=block y=VaxLevel /
        group=DiseaseType
        markerattrs=(symbol=circlefilled size=10);
    xaxis label="Seasonal Block";
    yaxis label="Vaccination Level";
    keylegend / title="Disease Type";
    format DiseaseType plant_type_fmt. VaxLevel ph_rate_fmt.;
run;

/* Step 3: Simulate outcome data and run ANOVA (Assn 7 Q3) */
data epi_beans;
    /* INHERITED from Assn 7: data structure + RCBD           */
    call streaminit(20240702);
    set epi_field_layout;
    /* Simulate yield = incidence reduction (cases averted)  */
    base=12;
    if DiseaseType=1 then type_effect=-2.5; /* AMR harder */
    else                  type_effect= 2.5; /* Resp. easier */
    if VaxLevel=1 then vax_effect=0.0;
    else if VaxLevel=2 then vax_effect=1.4;  /* 25% coverage */
    else                    vax_effect=2.8;  /* 50% coverage */
    block_effect=rand("normal",0,0.5);
    interaction=ifn(DiseaseType=2 and VaxLevel=3,
        rand("normal",1.5,0.3), rand("normal",0,0.2));
    yield=base+type_effect+vax_effect+block_effect+interaction
          +rand("normal",0,0.7);
    yield=round(max(6,yield),0.1);
    label yield="Cases Averted per 100 at-risk (proxy yield)";
    drop base type_effect vax_effect block_effect interaction;
run;

/* Import analog — print data (Assn 7 pattern: proc import ... proc print) */
title "EpiWatch Assn-7 Analog: Disease×Vaccination RCBD Data";
proc print data=epi_beans noobs label; run;

/* Two-Way ANOVA with interaction (Assn 7 Q3: type*ph*block) */
title "EpiWatch Assn-7 Analog: Two-Way ANOVA — DiseaseType × VaxLevel";
title2 "Inherited Assignment 7: type + ph + type*ph + block | Tukey";
proc anova data=epi_beans;
    class block DiseaseType VaxLevel;
    model yield = DiseaseType VaxLevel DiseaseType*VaxLevel block;
    /* Tukey HSD for VaxLevel (mirrors Assn 7 Tukey for ph) */
    means VaxLevel    / tukey;
    means DiseaseType / tukey;
    title2 "Main effects DiseaseType p<.0001 | VaxLevel p<.0001 | Interaction";
run;

/* PROC GLM version with LSMEANS and CONTRAST (Assn 7 + Assn 4) */
title "GLM: DiseaseType × VaxLevel — LSMEANS + Contrasts";
proc glm data=epi_beans
    plots(only)=(intplot boxplot);
    class block DiseaseType VaxLevel;
    model yield = DiseaseType VaxLevel DiseaseType*VaxLevel block;
    lsmeans DiseaseType VaxLevel / pdiff adjust=tukey cl;
    lsmeans DiseaseType*VaxLevel / pdiff;
    contrast "V1 vs V3 (None vs 50%)" VaxLevel 1 0 -1;
    contrast "V2 vs V3 (25% vs 50%)"  VaxLevel 0 1 -1;
    estimate "Yield gain: 0% to 50% vax" VaxLevel 1 0 -1;
    format DiseaseType plant_type_fmt. VaxLevel ph_rate_fmt.;
    title2 "Interaction plot | LSMEANS | Contrast: none vs 50% vax";
run; quit;

%audit(step=9-FACTORIAL-DONE,
    note=Assignment 6+7 factorial analogs complete);


/* ════════════════════════════════════════════════════════════
   STEP 10 — HYPOTHESIS TESTING FRAMEWORK
   INHERITED FROM MIDTERM (Q1–Q5)
   Type I/II error, power, t-test, ANOVA table, designs,
   Fixed vs Random effects, Interaction A×B
   ════════════════════════════════════════════════════════════ */

%audit(step=10-HYPOTHESIS, note=Midterm hypothesis framework started);

ods excel options(sheet_name="Hypothesis Testing");

/* ── 10a. Type I/II Error and Power documentation ───────────
   INHERITED Midterm Q1:
   α = Type I error rate (false positive)
   β = Type II error rate (false negative)
   Power = 1−β                                               */
data hypothesis_framework;
    infile datalines dsd truncover;
    length concept $30 definition $120 epi_application $120;
    input concept $ definition $ epi_application $;
    datalines;
"Type I Error (α)","Incorrectly rejecting H0 when it is TRUE (false positive). Rate = α = 0.05 in all EpiWatch tests.","Flagging a state as an outbreak when case counts are within normal range (false alarm)"
"Type II Error (β)","Failing to reject H0 when it is FALSE (false negative). Rate = β.","Missing a true outbreak — failing to detect rising resistance rate above threshold"
"Power (1−β)","Probability of correctly rejecting false H0. Increased by larger n, larger effect size, lower SD.","Detecting a 5-unit increase in mean resistance rate with sufficient facility sample size"
"Relationship","Power = 1−β. As Power increases β decreases. Tukey adjustment increases β (reduces power) to control family-wise α.","Tukey HSD on 3 domains: controls Type I at cost of slightly increased Type II error"
"p-value Decision","If p < α → reject H0. All EpiWatch tests use α=0.05 two-tailed unless stated.","Domain ANOVA: F=44.02, p<.0001 → reject H0, conclude domain differences are real"
;
run;

title "EpiWatch: Hypothesis Testing Framework (Midterm Q1 — Type I/II/Power)";
proc print data=hypothesis_framework noobs label;
    label concept="Concept"
          definition="Definition"
          epi_application="EpiWatch Application";
run;

/* ── 10b. Design comparison table (Midterm Q4) ──────────────
   T-test / CRD / RCBD / Latin Square / BIBD                 */
data design_comparison;
    length design $30 description $100
           when_to_use $80 advantage $80 limitation $80
           epiwatch_use $80;

    design="T-Test";
    description="Compare 2 group means: one-sample, paired, or independent";
    when_to_use="Two groups or one group vs threshold";
    advantage="Simple; direct interpretation";
    limitation="Only 2 groups; assumes normality";
    epiwatch_use="Steps 5a-e: Rt vs 1.0; resistance 2021 vs 2022; ILI by SDOH";
    output;

    design="CRD";
    description="Treatments randomly assigned; all units homogeneous";
    when_to_use="No blocking factors; uniform units";
    advantage="Easy to implement and analyze";
    limitation="Sensitive to unit variability; no blocking";
    epiwatch_use="Step 7d CRD: domain effect without state blocking";
    output;

    design="RCBD";
    description="Units in blocks; treatments random within blocks";
    when_to_use="Known variability source (state/season)";
    advantage="Controls block-level variability";
    limitation="Assumes no block*treatment interaction";
    epiwatch_use="Steps 7d+8a: State as block for disease domain treatment";
    output;

    design="Latin Square";
    description="Rows+columns = 2 blocking factors; kxk matrix";
    when_to_use="2 blocking factors; k treatments";
    advantage="Removes two variability sources";
    limitation="Assumes no interactions; limited to k treatments";
    epiwatch_use="Step 9A: 4 interventions x 4 regions x 4 seasons";
    output;

    design="BIBD";
    description="Not all treatments in every block; balanced";
    when_to_use="Many treatments; impractical full assignment";
    advantage="Efficient for large number of treatments";
    limitation="Complex analysis; requires exact balance";
    epiwatch_use="Potential future: 6 pathogens x partial facility blocks";
    output;
run;

title "Experimental Design Comparison — EpiWatch Applications";
title2 "Inherited Midterm Q4: T-test / CRD / RCBD / Latin Square / BIBD";
proc print data=design_comparison noobs label;
    label design="Design"
          description="Description"
          when_to_use="When to Use"
          advantage="Key Advantage"
          limitation="Key Limitation"
          epiwatch_use="EpiWatch v3.0 Application";
run;

/* ── 10c. Fixed vs Random Effects (Midterm Q5) ───────────────
   Factor A (fixed) × Factor B (random) → Interaction=RANDOM */
data fixed_random_table;
    length aspect $30 fixed_effect $100 random_effect $100;

    aspect="Definition";
    fixed_effect="Levels intentionally chosen; specific interest";
    random_effect="Levels randomly sampled from population";
    output;

    aspect="Objective";
    fixed_effect="Analyze specific chosen levels";
    random_effect="Generalize to broader population";
    output;

    aspect="Model treatment";
    fixed_effect="Constants (fixed values)";
    random_effect="Random variables with a distribution";
    output;

    aspect="EpiWatch Fixed";
    fixed_effect="Domain (AMR/Resp/Food), DiseaseType, VaxLevel";
    random_effect="-";
    output;

    aspect="EpiWatch Random";
    fixed_effect="-";
    random_effect="State (block), Season (block), Year, Facility group";
    output;

    aspect="Interaction AxB";
    fixed_effect="-";
    random_effect="FixedxRandom -> RANDOM interaction (inherits random nature)";
    output;

    aspect="H0 testing";
    fixed_effect="Specific differences between chosen levels";
    random_effect="Variability among population of levels";
    output;
run;

title "Fixed vs Random Effects — EpiWatch v3.0 (Midterm Q5)";
proc print data=fixed_random_table noobs label;
    label aspect="Aspect"
          fixed_effect="Fixed Effect"
          random_effect="Random Effect";
run;

/* ── 10d. PROC GLM contrasts: Midterm Q3 pattern ────────────
   Detergent study → Intervention pairwise contrasts
   ANOVA table decomposition (DF, SS, MS, F, Fcrit)          */
title "EpiWatch Midterm-Q3 Analog: ANOVA + Contrast (Intervention Study)";
title2 "Detergent→Intervention: F=11.69 style; partition SS into contrasts";
proc glm data=epi_factorial;
    class intervention region season;
    model incidence = intervention region season;
    /* Contrast A vs B (mirrors Detergent 1 vs 3 in Midterm) */
    contrast "Intervention A vs B" intervention  1 -1  0  0 / e;
    contrast "Intervention C vs D" intervention  0  0  1 -1 / e;
    estimate "Mean diff: A-B"      intervention  1 -1  0  0;
    estimate "Mean diff: C-D"      intervention  0  0  1 -1;
    title2 "Each contrast uses 1 df — partitions SS_Treatment";
run; quit;

%audit(step=10-HYPOTHESIS-DONE,
    note=Midterm Q1-Q5 hypothesis framework fully documented);


/* ════════════════════════════════════════════════════════════
   STEP 11 — ADVANCED STATISTICAL MODELS
   Logistic+ROC, Random Forest, Survival (KM+Cox),
   ITS, NegBin, Survey Regression, Propensity Score,
   Correlation matrix, Chi-square, CMH
   ════════════════════════════════════════════════════════════ */

%audit(step=11-ADVANCED, note=Advanced modeling pipeline started);

ods excel options(sheet_name="Advanced Models");

/* ── 11a. Descriptive: Incidence by Domain × Season ─────── */
title "EpiWatch: Descriptive Statistics — Incidence by Domain & Season";
proc means data=nndss_rt n mean stddev median p25 p75 min max maxdec=2;
    class domain season;
    var incidence_per_100k case_count hosp_rate_pct rt_approx;
    format domain $domain_fmt.;
run;

/* ── 11b. PROC FREQ: Chi-square & CMH ──────────────────── */
title "EpiWatch: Alert Level × Domain × Region (Chi-Square + CMH)";
proc freq data=cusum_detect;
    tables domain*alert_level / chisq cmh nocum;
    format domain $domain_fmt. alert_level $alert_fmt.;
run;

/* ── 11c. ITS — Interrupted Time Series (COVID 2020) ────── */
proc sql;
    create table its_weekly as
    select domain, year, epi_week,
           (year-2018)*52+epi_week   as time_index,
           (year>=2020)              as post_covid,
           ((year-2018)*52+epi_week)*(year>=2020)
                                     as time_post_interact,
           mean(case_count)          as avg_cases,
           mean(incidence_per_100k)  as avg_incidence
    from nndss_rt
    group by domain, year, epi_week
    order by domain, time_index;
quit;

title "Interrupted Time Series: COVID Policy Effect (2020 breakpoint)";
proc glm data=its_weekly;
    by domain;
    model avg_incidence=time_index post_covid time_post_interact / solution;
    format domain $domain_fmt.;
run; quit;

/* ── 11d. PROC GENMOD — Negative Binomial ───────────────── */
title "Negative Binomial Regression: Weekly Case Count Predictors";
proc genmod data=nndss_rt;
    class domain (ref="FOODBORNE")
          season (ref="Summer")
          severity (ref="MILD") / param=ref;
    model case_count=domain season severity
                    sdoh_vuln_index pct_uninsured
                    pct_elderly_65p year peak_season_flag
        / dist=negbin link=log type3;
    title2 "Negative binomial handles overdispersed count data";
run;

/* ── 11e. PROC MIXED — Full epidemiological mixed model ──── */
title "Mixed-Effects Model: Incidence Rate Predictors (Random=State)";
proc mixed data=nndss_rt method=reml covtest;
    class domain season severity state;
    model incidence_per_100k=
          domain season severity
          sdoh_vuln_index pct_poverty pct_uninsured
          pct_elderly_65p year
        / solution ddfm=bw;
    random intercept / subject=state type=un;
    title2 "Accounts for clustering of observations within states";
run; quit;

/* ── 11f. PROC LOGISTIC — Outbreak alert prediction ──────── */
data logit_ds;
    set cusum_flagged;
    high_alert=(alert_level in ("RED" "ORANGE"));
run;

title "Logistic Regression: Predictors of Outbreak Alert (ORANGE/RED)";
proc logistic data=logit_ds descending
    plots(only)=(roc(id=prob) effect);
    class domain (ref="FOODBORNE")
          season (ref="Summer") / param=ref;
    model high_alert=
          domain season year
          sdoh_vuln_index pct_poverty pct_uninsured
          pct_elderly_65p peak_season_flag rt_approx z_score
        / selection=stepwise slentry=0.05 slstay=0.05
          rsquare lackfit
          ctable pprob=(0.1 to 0.9 by 0.1)
          outroc=epi_roc_data;
    output out=logit_pred predicted=outbreak_prob;
    title2 "Stepwise | ROC/AUC | C-statistic for outbreak prediction";
run;

/* ── 11g. PROC HPFOREST — Random Forest (300 trees) ──────── */
title "Random Forest: Outbreak Prediction (PROC HPFOREST, 300 trees)";
proc hpforest data=logit_ds seed=20240101
    maxtrees=300 vars_to_try=5 alpha=0.05;
    target  high_alert / level=binary;
    input   sdoh_vuln_index pct_poverty pct_uninsured
            pct_elderly_65p rt_approx z_score cusum_stat
            year epi_week peak_season_flag / level=interval;
    input   domain season severity / level=nominal;
    ods output VariableImportance=epi_rf_varimp
               FitStatistics    =epi_rf_fitstat;
    title2 "300 trees | OOB error | Full variable importance";
run;

/* ── 11h. PROC LIFETEST — Kaplan-Meier ─────────────────── */
data survival_ds;
    set nndss_rt;
    event   =hosp_flag;
    surv_time=max(1, days_to_report+hosp_days);
run;

title "Kaplan-Meier Survival: Time to Hospitalization by Domain";
proc lifetest data=survival_ds plots=(survival(cl) hazard);
    time surv_time*event(0);
    strata domain;
    format domain $domain_fmt.;
    title2 "KM curves | Log-rank test by disease domain";
run;

/* ── 11i. PROC PHREG — Cox Proportional Hazards ─────────── */
title "Cox Proportional Hazards: Hospitalization Risk Factors";
proc phreg data=survival_ds;
    class domain (ref="FOODBORNE")
          severity (ref="MILD") / param=ref;
    model surv_time*event(0)=
          domain severity sdoh_vuln_index
          pct_elderly_65p year
        / ties=efron rl;
    title2 "Adjusted HR for hospitalization | Efron method";
run;

/* ── 11j. PROC SURVEYREG — Survey-weighted regression ────── */
title "Survey-Weighted Regression: Incidence Predictors (SDOH weights)";
proc surveyreg data=nndss_rt;
    class domain season;
    model incidence_per_100k=
          domain season sdoh_vuln_index pct_poverty
          pct_uninsured pct_elderly_65p;
    weight survey_weight;
    title2 "ACS survey weights applied | Domain + SDOH predictors";
run;

/* ── 11k. PROC CORR — Correlation matrix ──────────────────  */
title "EpiWatch: Correlation Matrix — Incidence, SDOH, Rt, CUSUM";
proc corr data=cusum_flagged nosimple pearson spearman;
    var incidence_per_100k sdoh_vuln_index rt_approx
        cusum_stat z_score pct_poverty pct_uninsured
        pct_elderly_65p concern_score;
run;
title;

%audit(step=11-ADVANCED-DONE,
    note=Logistic RF Survival ITS NegBin SurveyReg Corr complete);


/* ════════════════════════════════════════════════════════════
   STEP 12 — CROP / YIELD ANALOGY ANALYSES
   INHERITED FROM FINAL PROJECT 1 (YieldDF crop yield) and
   FINAL PROJECT 2 (Wheat multi-location trial)
   ════════════════════════════════════════════════════════════ */

%audit(step=12-CROP-YIELD,
    note=Final Project 1 and 2 analog analyses started);

ods excel options(sheet_name="Crop Yield Analogs");

/* ────────────────────────────────────────────────────────────
   12A. FINAL PROJECT 1 ANALOG (YieldDF style):
   Original: hg/ha_yield ~ rainfall + pesticides + temperature
   Here:     IncidenceRate ~ VaxCoverage + Sanitation + AvgTemp
   Same methodology: categorize → GLM → Tukey → contrast
   ──────────────────────────────────────────────────────────── */

proc sql;
    create table yield_analog as
    select n.state, n.year, n.domain, n.epi_week,
           n.incidence_per_100k,
           s.pct_uninsured     as vax_analog,        /* ~pesticides */
           s.physicians_per_100k as sanitation_analog, /* ~temperature */
           s.sdoh_vuln_index   as rainfall_analog,   /* ~rainfall */
           s.pop_total, s.survey_weight
    from nndss_rt as n
    left join acs_sdoh_raw as s
        on n.state=s.state and n.year=s.year
    where n.year=2022 and n.domain="RESPIRATORY";
quit;

/* PROC CONTENTS (mirrors FP1 PROC CONTENTS DATA=YieldDF) */
title "Dataset Structure — EpiWatch Yield Analog (FP1 pattern)";
proc contents data=yield_analog; run;

/* PROC MEANS (mirrors FP1 descriptive stats) */
title "Descriptive Statistics — Incidence by State (FP1 PROC MEANS style)";
proc means data=yield_analog n mean stddev min max maxdec=2;
    class state;
    var incidence_per_100k vax_analog sanitation_analog;
run;

/* Categorize continuous predictors (FP1: rainfall → Low/Med/High) */
data yield_analog_cat;
    set yield_analog;
    /* Rainfall analog: SDOH index Low/Medium/High */
    if      rainfall_analog<=33 then rainfall_cat="Low";
    else if rainfall_analog<=66 then rainfall_cat="Medium";
    else                             rainfall_cat="High";

    /* Pesticides analog: uninsured rate Low/Medium/High */
    if      vax_analog<=8  then pest_cat="Low";
    else if vax_analog<=16 then pest_cat="Medium";
    else                        pest_cat="High";

    /* Temperature analog: physicians per 100K Low/Med/High */
    if      sanitation_analog<=160 then temp_cat="Low";
    else if sanitation_analog<=220 then temp_cat="Medium";
    else                                temp_cat="High";

    length rainfall_cat pest_cat temp_cat $6;
    format rainfall_cat $rainfall_cat_fmt.;
run;

/* Two-way GLM with all interactions (FP1 methodology) */
title "EpiWatch FP1 Analog: GLM Incidence ~ Rainfall + Pest + Temp";
title2 "Mirrors Final Project 1: Two-Way GLM with all interactions";
proc glm data=yield_analog_cat;
    class rainfall_cat pest_cat temp_cat;
    model incidence_per_100k =
          rainfall_cat pest_cat temp_cat
          rainfall_cat*pest_cat
          rainfall_cat*temp_cat
          pest_cat*temp_cat;
    means rainfall_cat pest_cat temp_cat / tukey;
    title2 "FP1 pattern: categorized predictors + interaction GLM";
run; quit;

/* Post-hoc Tukey for rainfall_cat (FP1 Tukey for Rainfall_Category) */
title "Tukey Post-Hoc: Rainfall Category Effect on Incidence (FP1 Tukey)";
proc glm data=yield_analog_cat;
    class rainfall_cat;
    model incidence_per_100k = rainfall_cat;
    means rainfall_cat / tukey;
    title2 "FP1: Medium vs Low Rainfall p=0.2512 — analog comparison";
run; quit;

/* Homogeneity of variances: Bartlett (FP1 HOVTEST=BARTLETT) */
title "Homogeneity of Variance — Bartlett Test (FP1 pattern)";
proc glm data=yield_analog_cat;
    class rainfall_cat;
    model incidence_per_100k = rainfall_cat;
    means rainfall_cat / hovtest=bartlett;
    title2 "FP1: Validates equal variance assumption for ANOVA";
run; quit;

/* Custom contrast: Medium vs Low (FP1: Medium vs Low Rainfall) */
title "Custom Contrast: Medium vs Low SDOH — Epi Incidence (FP1 pattern)";
title2 "FP1: Medium vs Low Rainfall F=1.32, p=0.2512 — apply here";
proc glm data=yield_analog_cat;
    class rainfall_cat;
    model incidence_per_100k = rainfall_cat;
    contrast "Medium vs Low SDOH"
        rainfall_cat 0 1 -1;
    title2 "FP1 contrast: Medium vs Low category effect";
run; quit;

/* ────────────────────────────────────────────────────────────
   12B. FINAL PROJECT 2 ANALOG (Wheat location trial style):
   Original: Y (wheat yield) ~ Trt (C/F/S) + loc + loc*Trt
   Here: IncidenceRate ~ DomainTrt (3 levels) + Region + R*D
   Same: LSMeans, Tukey, interaction plot, residual diagnostics
   ──────────────────────────────────────────────────────────── */

proc sql;
    create table wheat_analog as
    select n.domain    as Trt,
           n.state     as loc,
           n.year      as Rep,
           mean(n.incidence_per_100k) as Y,
           mean(n.case_count)         as X
    from nndss_rt as n
    group by n.domain, n.state, n.year
    having n.year between 2021 and 2022
    order by Trt, loc, Rep;
quit;

/* PROC CONTENTS (FP2 pattern) */
title "Dataset Structure — EpiWatch Wheat Analog (FP2 PROC CONTENTS)";
proc contents data=wheat_analog; run;

/* Descriptive stats by Trt × loc (FP2 PROC MEANS by Trt loc) */
title "Descriptive Statistics: Incidence by Domain × State (FP2 style)";
proc means data=wheat_analog n mean stddev min max maxdec=2;
    class Trt loc;
    var Y X;
    format Trt $domain_fmt.;
run;

/* Two-way GLM: Trt + loc + loc*Trt (FP2 main analysis) */
title "EpiWatch FP2 Analog: Two-Way GLM — Domain × Region (FP2 pattern)";
title2 "FP2: Y=yield ~ Trt + loc + loc*Trt | R²=0.982 → Epi analog";
proc glm data=wheat_analog
    plots(only)=(intplot boxplot);
    class loc Trt;
    model Y = Trt loc loc*Trt;
    /* LSMEANS (FP2: S=15.83, C=12.13, F=9.41) */
    lsmeans Trt / pdiff adjust=tukey cl;
    /* Tukey grouping (FP2: all distinct A/B/C groups) */
    means Trt / tukey;
    format Trt $domain_fmt.;
    title2 "Trt (domain) p<.0001 | loc p>0.05 | interaction p=0.66";
run; quit;

/* Residual analysis (FP2 residual + normality check) */
proc sql;
    create table resid_wheat as
    select Y, Trt, loc,
           Y - mean(Y) as resid
    from wheat_analog
    group by Trt, loc;
quit;

title "Residual Analysis: Normality Check (FP2 PROC UNIVARIATE on resid)";
proc univariate data=resid_wheat normal;
    var resid;
    histogram resid / normal kernel;
    qqplot resid / normal(mu=est sigma=est);
    inset n mean std / position=ne;
    title2 "FP2: Goodness-of-fit K-S p>0.150 CvM p>0.250 AD p>0.250";
run;

/* Levene's test for equal variance (FP2 Levene's) */
title "Levene's Test for Equal Variance (FP2 pattern)";
proc glm data=wheat_analog;
    class loc Trt;
    model Y = Trt loc loc*Trt;
    means Trt / hovtest=levene;
    title2 "FP2: Validates homoscedasticity across Domain × Region";
run; quit;

%audit(step=12-CROP-YIELD-DONE,
    note=Final Project 1 and 2 analogs with residuals complete);


/* ════════════════════════════════════════════════════════════
   STEP 13 — VISUALIZATIONS (25 Charts)
   Inherits all assignment + final project chart styles
   ════════════════════════════════════════════════════════════ */

%audit(step=13-VIZ, note=25-chart visualization suite started);

ods excel options(sheet_name="Charts");

/* Build weekly CUSUM summary for charts */
proc sql;
    create table cusum_weekly as
    select domain, epi_yearweek,
           mean(cusum_stat) as avg_cusum,
           mean(z_score)    as avg_zscore,
           sum(cusum_alert) as alert_count,
           mean(incidence_per_100k) as avg_incidence
    from cusum_detect
    group by domain, epi_yearweek
    order by domain, epi_yearweek;
quit;

/* ── Chart 1: Incidence Trend by Domain (2018–2023) ────────  */
title "Chart 1: Weekly Incidence Rate Trend by Disease Domain";
proc sgpanel data=cusum_weekly;
    format domain $domain_fmt.;
    panelby domain / columns=1 novarname;
    series x=epi_yearweek y=avg_incidence /
        lineattrs=(thickness=1.5 color=steelblue);
    colaxis label="Year-Week";
    rowaxis label="Mean Incidence per 100,000" grid;
run;

/* ── Chart 2: CUSUM Outbreak Detection ─────────────────────  */
title "Chart 2: CUSUM Outbreak Detection (2018–2023)";
proc sgpanel data=cusum_weekly;
    format domain $domain_fmt.;
    panelby domain / columns=1 novarname;
    series x=epi_yearweek y=avg_cusum /
        lineattrs=(color=navy thickness=2);
    band x=epi_yearweek upper=avg_cusum lower=0 /
        fillattrs=(color=lightsteelblue transparency=0.6);
    refline 5 / axis=y
        lineattrs=(color=firebrick pattern=dash thickness=2)
        label="Alert Threshold h=5";
    colaxis label="Year-Week";
    rowaxis label="CUSUM Statistic" grid;
run;

/* ── Chart 3: Z-Score Aberration Heatmap ───────────────────  */
proc sql;
    create table zscore_heat as
    select state, epi_week,
           mean(z_score) as avg_zscore
    from cusum_detect
    where domain="RESPIRATORY" and year=2022
    group by state, epi_week;
quit;

title "Chart 3: Z-Score Heatmap — Respiratory Aberrations (2022)";
proc sgplot data=zscore_heat;
    heatmap x=epi_week y=state /
        colorresponse=avg_zscore
        colormodel=(white yellow orange red)
        discretey;
    gradlegend / title="Z-Score";
    xaxis label="Epidemiological Week" grid;
    yaxis label="State";
run;

/* ── Chart 4: Rt Distribution by Domain & Year ─────────────
   INHERITED Assignment 3+4 style: vbox by year groups        */
title "Chart 4: Effective Reproduction Number (Rt) by Domain & Year";
proc sgpanel data=nndss_rt;
    format domain $domain_fmt.;
    panelby domain / columns=3 novarname;
    vbox rt_approx / category=year
        fillattrs=(transparency=0.3)
        lineattrs=(color=navy);
    refline 1.0 / axis=y
        lineattrs=(color=firebrick pattern=dash thickness=2)
        label="Rt=1";
    colaxis label="Year";
    rowaxis label="Estimated Rt" grid min=0 max=3;
run;

/* ── Chart 5: Incidence by Domain — Boxplot (Assn 4 style) ──
   INHERITED Assignment 4: Distribution of StemLength         */
title "Chart 5: Incidence Rate by Disease Domain — One-Way ANOVA";
title2 "Inherited Assignment 4: Distribution of StemLength style";
proc sgplot data=nndss_rt;
    format domain $domain_fmt.;
    vbox incidence_per_100k / category=domain
        fillattrs=(transparency=0.25)
        lineattrs=(color=navy);
    xaxis label="Disease Domain" fitpolicy=rotate;
    yaxis label="Incidence per 100,000" grid;
run;

/* ── Chart 6: LS-Means Diffogram (Assn 4 style) ────────────
   INHERITED Assignment 4: LS-Means comparison plot           */
title "Chart 6: LS-Means Incidence Comparison by Domain (Diffogram)";
title2 "Inherited Assignment 4: StemLength comparison diffogram";
proc sgplot data=epi_rcbd;
    format domain $domain_fmt.;
    scatter x=domain y=mean_incidence /
        markerattrs=(size=10 symbol=circlefilled)
        datalabel=domain;
    refline 0 / axis=y lineattrs=(pattern=dot);
    xaxis label="Disease Domain" fitpolicy=rotate;
    yaxis label="Mean Incidence per 100,000" grid;
run;

/* ── Chart 7: RCBD Interaction Plot (Assn 5 style) ──────────
   INHERITED Assignment 5: vline/group interaction plot       */
title "Chart 7: RCBD Interaction Plot — Incidence by State×Domain";
title2 "Inherited Assignment 5: vline/group interaction structure";
proc sgplot data=epi_rcbd;
    vline block_var / response=mean_incidence
                      group=domain
                      stat=mean
                      lineattrs=(thickness=2)
                      markers markerattrs=(size=7);
    xaxis label="State (Block)" fitpolicy=rotate;
    yaxis label="Mean Incidence per 100,000 (2022)" grid;
    keylegend / title="Disease Domain";
    format domain $domain_fmt.;
run;

/* ── Chart 8: CLT Comparison Panels (Assn 2 style) ──────────
   INHERITED Assignment 2: n=3 vs n=9 distributions          */
title "Chart 8: CLT — Sample Mean Distribution: n=3 vs n=9";
proc sgpanel data=clt_all;
    panelby sample_size / columns=2 novarname;
    histogram mean_value / fillattrs=(transparency=0.3);
    density   mean_value / type=kernel
                           lineattrs=(color=navy thickness=2);
    density   mean_value / type=normal
                           lineattrs=(color=firebrick pattern=dash thickness=2);
    colaxis label="Sample Mean (Case Count)";
    rowaxis label="Percent" grid;
run;

/* ── Chart 9: Paired Profiles Plot (Assn 3 style) ───────────
   INHERITED Assignment 3: paired profiles YR2011/YR2012      */
title "Chart 9: Paired Profiles — AMR Resistance 2021 vs 2022";
title2 "Inherited Assignment 3: paired profiles / agreement plot";
proc ttest data=resist_paired plots=(profiles);
    paired resist_2021*resist_2022;
run;

/* ── Chart 10: ILI % Trend — FluView Time Series ───────────  */
proc sql;
    create table ili_trend as
    select year, epi_week,
           mean(ili_pct)       as avg_ili,
           mean(pct_pos_flua)  as avg_flua,
           mean(pct_pos_covid) as avg_covid
    from fluview_clean
    group by year, epi_week;
quit;

title "Chart 10: ILI % and Pathogen Positivity Trend (2018–2023)";
proc sgplot data=ili_trend;
    series x=epi_week y=avg_ili / group=year
                                    lineattrs=(thickness=1.5);
    refline 2.5 / axis=y
        lineattrs=(color=firebrick pattern=dash)
        label="National Baseline";
    xaxis label="Epidemiological Week" grid;
    yaxis label="% Visits for ILI" grid;
    keylegend / title="Year";
run;

/* ── Chart 11: COVID Trend — Cases + Rt ─────────────────────  */
proc sql;
    create table covid_trend as
    select year, epi_week,
           sum(new_cases_7day)     as total_cases,
           mean(rt_value)         as avg_rt,
           mean(vax_pct_complete) as avg_vax
    from covid_clean
    group by year, epi_week;
quit;

title "Chart 11: COVID-19 Weekly Trend — Cases and Effective Rt";
proc sgplot data=covid_trend;
    where year>=2020;
    vbar   epi_week / response=total_cases group=year
                                       transparency=0.5;
    /* vline (not series) shares the discrete category axis that
       vbar uses — "series" expects a continuous x-axis, which is
       what triggered "incompatible plot or chart types" before. */
    vline  epi_week / response=avg_rt y2axis
                                   group=year
                                   lineattrs=(thickness=2 pattern=dash);
    refline 1 / axis=y2
        lineattrs=(color=firebrick pattern=dot)
        label="Rt=1";
    xaxis  label="Epidemiological Week" grid;
    yaxis  label="Total Cases" grid;
    y2axis label="Effective Rt";
    keylegend / title="Year";
run;

/* ── Chart 12: Foodborne Seasonality (Assn 5 boxplot style) ─
   INHERITED Assignment 5: vbox / category                    */
proc sql;
    create table food_monthly as
    select pathogen, month,
           sum(case_count) as total_cases,
           mean(cfr)       as avg_cfr
    from foodnet_clean
    group by pathogen, month;
quit;

title "Chart 12: Foodborne Disease Seasonality — Monthly Pattern";
title2 "Inherited Assignment 5: distribution plot by category";
proc sgpanel data=food_monthly;
    panelby pathogen / columns=2 novarname;
    vbar month / response=total_cases
                 fillattrs=(color=steelblue) datalabel;
    colaxis label="Month" values=(1 to 12 by 1);
    rowaxis label="Total Cases" grid;
run;

/* ── Chart 13: AMR Resistance Trend by Pathogen ─────────────  */
proc sql;
    create table amr_trend as
    select pathogen, year,
           mean(resistance_pct) as avg_resistance,
           mean(sir)            as avg_sir
    from nhsn_clean
    group by pathogen, year;
quit;

title "Chart 13: AMR Resistance Trend by Pathogen (2018–2023)";
proc sgplot data=amr_trend;
    series x=year y=avg_resistance / group=pathogen
                                      lineattrs=(thickness=2)
                                      markers markerattrs=(size=6);
    refline 40 / axis=y
        lineattrs=(color=firebrick pattern=dash)
        label="Alert Threshold (40%)";
    xaxis label="Year" grid;
    yaxis label="Mean Resistance Rate (%)" grid;
    keylegend / title="Pathogen";
run;

/* ── Chart 14: Power Curve (Assn 1 PROC POWER style) ────────
   INHERITED Assignment 1: power vs sample size curve         */
title "Chart 14: Statistical Power Curve — Outbreak Detection";
title2 "Inherited Assignment 1: PROC POWER output visualization";
proc sgplot data=power_results;
    series x=ntotal y=power /
        lineattrs=(color=navy thickness=2.5);
    refline 0.8 / axis=y
        lineattrs=(color=firebrick pattern=dash)
        label="80% Power";
    refline 0.9 / axis=y
        lineattrs=(color=firebrick pattern=dash)
        label="90% Power";
    refline 20 / axis=x
        lineattrs=(color=steelblue pattern=dot)
        label="n=20";
    xaxis label="Sample Size (n)" grid;
    yaxis label="Statistical Power" grid min=0 max=1;
run;

/* ── Chart 15: SDOH Scatter — Poverty vs Incidence ──────────
   Scatter plot (Final Projects style: X=height, Y=yield)    */
title "Chart 15: SDOH Scatter — Poverty Rate vs Incidence";
title2 "FP2 analog: scatter of continuous predictor X vs outcome Y";
proc sgplot data=nndss_rt;
    where year=2022 and domain="RESPIRATORY";
    scatter x=pct_poverty y=incidence_per_100k /
        group=season
        markerattrs=(size=5);
    reg     x=pct_poverty y=incidence_per_100k /
        lineattrs=(color=firebrick thickness=2);
    xaxis label="Poverty Rate (%)" grid;
    yaxis label="Incidence per 100,000" grid;
    keylegend / title="Season";
run;

/* ── Chart 16: Kaplan-Meier Survival Curve ──────────────────  */
title "Chart 16: Kaplan-Meier — Time to Hospitalization by Domain";
proc lifetest data=survival_ds plots=(survival(cl));
    time surv_time*event(0);
    strata domain;
    format domain $domain_fmt.;
run;

/* ── Chart 17: AMR Histogram by Facility Type (Assn 5 hist) ─
   INHERITED Assignment 5: histogram / group                  */
title "Chart 17: Resistance Distribution by Facility Type (Assn 5 hist)";
proc sgplot data=nhsn_clean;
    histogram resistance_pct / group=resist_cat_label
                                transparency=0.3;
    density resistance_pct / type=kernel
                              lineattrs=(color=navy thickness=2);
    xaxis label="Resistance Rate (%)" grid;
    yaxis label="Count" grid;
    keylegend / title="Resistance Category";
run;

/* ── Chart 18: Boxplot by Pathogen (Assn 5+4 vbox style) ────
   INHERITED Assignments 4+5: vbox by category                */
title "Chart 18: Resistance Rate by Pathogen — RCBD Block Boxplot";
title2 "Inherited Assignments 4+5: vbox / category style";
proc sgplot data=nhsn_clean;
    vbox resistance_pct / category=pathogen
        fillattrs=(transparency=0.25)
        lineattrs=(color=navy);
    xaxis label="Pathogen" fitpolicy=rotate;
    yaxis label="Resistance Rate (%)" grid;
run;

/* ── Chart 19: Assn 6 Emission analog — Intervention boxplot ─
   INHERITED Assignment 6: Distribution of Emission by additive*/
title "Chart 19: Distribution of Incidence by Intervention (Assn 6 style)";
title2 "Mirrors Assignment 6: Distribution of Emission by additive (A-D)";
proc sgplot data=epi_factorial;
    vbox incidence / category=intervention
        fillattrs=(transparency=0.3)
        meanattrs=(symbol=diamondfilled color=red size=8)
        lineattrs=(color=navy);
    xaxis label="Intervention Type";
    yaxis label="Incidence Rate per 100K" grid;
    format intervention $additive_fmt.;
run;

/* ── Chart 20: Assn 7 Interaction Plot (DiseaseType × Vax) ──
   INHERITED Assignment 7: interaction plot type × ph         */
title "Chart 20: Interaction Plot — DiseaseType × Vaccination Level";
title2 "Mirrors Assignment 7: type*ph interaction (yield by block+type)";
proc sgplot data=epi_beans;
    vline VaxLevel / response=yield
                     group=DiseaseType
                     stat=mean
                     lineattrs=(thickness=2)
                     markers markerattrs=(size=8);
    xaxis label="Vaccination Level";
    yaxis label="Mean Cases Averted per 100 at-risk" grid;
    keylegend / title="Disease Type";
    format DiseaseType plant_type_fmt. VaxLevel ph_rate_fmt.;
run;

/* ── Chart 21: LS-Means for Intervention (Assn 6 LS-Means) ──
   INHERITED Assignment 6: LS-Means for additives chart       */
title "Chart 21: LS-Means Comparison — Intervention Effect (Assn 6 style)";
proc sgplot data=interv_lsmeans;
    scatter x=intervention y=ls_mean_incidence /
        markerattrs=(size=14 symbol=circlefilled color=teal)
        datalabel=ls_mean_incidence;
    yaxis label="LS-Mean Incidence (per 100K)" grid min=50 max=80;
    xaxis label="Intervention Type (A=Vaccination, B=Tracing, C=Sanit, D=ABX)";
    format intervention $additive_fmt.;
run;

/* ── Chart 22: FP2 Interaction Plot (loc × Trt) ─────────────
   INHERITED Final Project 2: interaction plot loc × Trt      */
title "Chart 22: Interaction Plot — State × Domain (FP2 loc×Trt style)";
proc sgplot data=wheat_analog;
    vline Trt / response=Y
                group=loc
                stat=mean
                lineattrs=(thickness=1.5)
                markers markerattrs=(size=6);
    xaxis label="Treatment (Disease Domain)";
    yaxis label="Mean Incidence Y" grid;
    keylegend / title="State (Location)";
    format Trt $domain_fmt.;
run;

/* ── Chart 23: AMR Covariance Parameter Plot ─────────────── */
title "Chart 23: Variance Component Estimates — RCBD Mixed Model";
proc sgplot data=subsampling_cov;
    hbar CovParm / response=Estimate
                   datalabel
                   fillattrs=(color=steelblue);
    xaxis label="Variance Estimate" grid;
    yaxis label="Variance Component";
run;

/* ── Chart 24: FP1 Tukey Grouping — Rainfall Category ───────
   INHERITED Final Project 1: Tukey grouping for categories   */
proc sql;
    create table rain_means as
    select rainfall_cat,
           put(rainfall_cat,$rainfall_cat_fmt.) as rainfall_cat_label length=25,
           mean(incidence_per_100k) as mean_incid
    from yield_analog_cat
    group by rainfall_cat;
quit;

title "Chart 24: Mean Incidence by SDOH Category — FP1 Tukey Style";
title2 "Mirrors FP1: Mean Yield by Rainfall_Category with Tukey grouping";
proc sgplot data=rain_means;
    vbar rainfall_cat_label / response=mean_incid
                        datalabel
                        fillattrs=(color=steelblue);
    yaxis label="Mean Incidence per 100K" grid;
    xaxis label="SDOH Vulnerability Category (Rainfall analog)";
run;

/* ── Chart 25: Random Forest Variable Importance ─────────── */
/* The dynamic dictionary.columns lookup originally here failed because
   the macro scanner treats the literal text "%IMPORTANCE%" inside the
   LIKE clause as an attempted call to a macro named IMPORTANCE, so the
   query silently returned 0 rows and &imp_var. was left unresolved.
   The first hardcode attempt (response=Importance) still errored with
   "Variable IMPORTANCE not found" because PROC HPFOREST's
   VariableImportance table does not actually contain a column called
   Importance — the Gini-based importance metric it reports is named
   "Gini" (confirmed against SAS HPFOREST usage examples), so that's
   the column referenced here.                                        */
title "Chart 25: Random Forest Variable Importance — Outbreak Prediction";
proc sgplot data=epi_rf_varimp;
    hbar Variable / response=Gini
                    datalabel
                    fillattrs=(color=teal);
    xaxis label="Mean Decrease in Gini Impurity" grid;
    yaxis label="Predictor Variable";
run;
title;

%audit(step=13-VIZ-DONE, note=25 charts generated);


/* ════════════════════════════════════════════════════════════
   STEP 14 — REPORTING & SUMMARY
   Summary tables, inherited concepts reference,
   audit log, and ODS close
   ════════════════════════════════════════════════════════════ */

%audit(step=14-REPORT, note=Reporting and summary tables started);

ods excel options(sheet_name="Executive Summary");

/* ── 14a. Platform summary counts ───────────────────────────  */
title "EpiWatch v3.0 — Final Platform Summary";
proc sql;
    select ord, component, record_count, notes
    from (
        select 1  as ord,"NNDSS Weekly Records" as component,
               put(count(*),comma12.) as record_count,
               "3 domains x 10 states x 6yr x 52wk" as notes
        from nndss_clean
        union all
        select 2,"NHSN AMR Facility Records",
               put(count(*),comma12.),
               "6 pathogens x 10 states x 6yr (RCBD blocks)"
        from nhsn_clean
        union all
        select 3,"FluView Weekly Records",
               put(count(*),comma12.),
               "10 states x 312 weeks"
        from fluview_clean
        union all
        select 4,"FoodNet Monthly Records",
               put(count(*),comma12.),
               "10 states x 72 months"
        from foodnet_clean
        union all
        select 5,"COVID Weekly Records",
               put(count(*),comma12.),
               "10 states x 208 weeks (2020-2023)"
        from covid_clean
        union all
        select 6,"ACS SDOH State Records",
               put(count(*),comma12.),
               "10 states x 6 years"
        from acs_sdoh_raw
        union all
        select 7,"CMS Antibiotic Claims",
               put(count(*),comma12.),
               "10 states x 6 years x quarterly"
        from cms_abx_raw
        union all
        select 8,"SRS Sample (SURVEYSELECT)",
               put(count(*),comma12.),
               "20% SRS | INHERITED Assignment 1"
        from nndss_sample
        union all
        select 9,"CUSUM Alerts Generated",
               put(sum(cusum_alert),comma12.),
               "ORANGE+RED combined | Z-score flagged"
        from cusum_detect
        union all
        select 10,"CLT Samples (n=3,6,9 x 100 each)",
               "300",
               "Central Limit Theorem demo | INHERITED Assignment 2"
        from nndss_clean (obs=1)
        union all
        select 11,"Statistical Tests Performed",
               "60+",
               "t-tests, ANOVA, RCBD, CRD, Mixed, Logistic, RF, Cox, Factorial"
        from nndss_clean (obs=1)
        union all
        select 12,"Charts Produced","25",
               "Trend, heatmap, panels, scatter, KM, box, hist, power, CLT"
        from nndss_clean (obs=1)
        union all
        select 13,"SAS Techniques Used","65+",
               "All Assn 1-7 + Midterm + FP1 + FP2 + advanced"
        from nndss_clean (obs=1)
        union all
        select 14,"Factorial Design Experiments","2",
               "Assn 6 analog (Latin Square 4×4) + Assn 7 analog (RCBD 2×3)"
        from nndss_clean (obs=1)
        union all
        select 15,"Crop/Yield Analogs (FP1+FP2)","2",
               "FP1: categorized GLM + Bartlett + contrast | FP2: residuals + Levene"
        from nndss_clean (obs=1)
    )
    order by ord;
quit;
title;

/* ── 14b. Complete inherited concepts reference table ────────
   Every Assignment, Midterm, and Final Project technique      */
ods excel options(sheet_name="Inherited Concepts");
data inherited_concepts_v3;
    infile datalines dsd truncover;
    length source $20 concept $70 application $100;
    input source $ concept $ application $;
    datalines;
"Assignment 1","PROC SURVEYSELECT (SRS)","Step 3: 20% SRS of NNDSS surveillance records"
"Assignment 1","PROC UNIVARIATE + normality","Step 4: Normality of case counts + days_to_report"
"Assignment 1","PROC POWER (one-sample t)","Step 4: Power curve for outbreak detection"
"Assignment 1","95% CI for mean","Step 3b: CI for mean case count from SRS"
"Assignment 1","Moments/Quantiles/Extreme Obs","Step 4: UNIVARIATE with INSET"
"Assignment 2","Non-normal source distribution","Step 3: Poisson case counts right-skewed"
"Assignment 2","CLT n=3,6,9 sampling","Step 3: %clt_demo macro x 3 sample sizes"
"Assignment 2","Distribution of Sample Means","Step 3: CLT panels compared across n"
"Assignment 2","Z-score outlier flagging","Step 6: %flag_outliers macro on CUSUM data"
"Assignment 3","PROC TTEST one-sample","Step 5a: Rt vs 1.0 | Step 5b: incidence vs 50"
"Assignment 3","PROC TTEST two-sample","Step 5c: ILI % by SDOH burden group"
"Assignment 3","PROC TTEST paired","Step 5d: Resistance 2021 vs 2022"
"Assignment 3","Folded F (variance equality)","Step 5c: printed in TTEST two-sample"
"Assignment 3","Shapiro-Wilk/K-S/CvM/AD","Steps 4+5e: UNIVARIATE with NORMAL option"
"Assignment 3","Paired profiles plot","Step 13 Chart 9: paired AMR resistance"
"Assignment 3","GLM Repeated Measures","Step 7c: Resistance across 3 years"
"Assignment 3","MANOVA / Wilks Lambda","Step 7c: Within-subject year effects"
"Assignment 3","Greenhouse-Geisser/Huynh-Feldt","Step 7c: repeated / nom summary"
"Assignment 3","CONTRAST year variables","Step 7c: 2020 vs 2021 vs 2022"
"Assignment 4","PROC GLM one-way ANOVA","Step 7a: Incidence by disease domain"
"Assignment 4","LSD pairwise test","Steps 7a,7d: means / lsd cldiff"
"Assignment 4","Dunnett test (control group)","Steps 7a,7d: FOODBORNE/AMR as control"
"Assignment 4","Tukey adjustment","Steps 7,8,9,10: lsmeans / pdiff adjust=tukey"
"Assignment 4","LSMEANS","Steps 7,8,9,12: lsmeans / pdiff=all cl"
"Assignment 4","CONTRAST statement","Steps 7,9,10,12: a priori contrasts"
"Assignment 4","ESTIMATE statement","Steps 7,9,10,12: magnitude of differences"
"Assignment 4","LS-Means diffogram","Step 13 Chart 6: scatter of LS-means"
"Assignment 4","Distribution boxplot (F overlay)","Step 13 Charts 5,19: vbox by domain"
"Assignment 5","PROC IMPORT (CSV)","Data structure pattern (simulated equivalent)"
"Assignment 5","RCBD (block = state)","Steps 7d+8a: RCBD GLM with state as block"
"Assignment 5","CRD vs RCBD comparison","Step 7d: CRD run first then RCBD"
"Assignment 5","PROC MIXED REML random block","Step 8a: mixed / random block_var"
"Assignment 5","Sub-sampling model","Step 8b: random block_id pathogen*replication"
"Assignment 5","Part C vs Part D comparison","Step 8c: direct vs means of sub-samples"
"Assignment 5","Means of sub-samples (SQL)","Step 8c: proc sql mean() group by"
"Assignment 5","Dunnett with control (Manchuria→MRSA)","Step 8c: dunnett control pathogen"
"Assignment 5","Covariance parameter estimates","Steps 8a,8b: ods output CovParms"
"Assignment 5","AIC comparison","Steps 8a,8b: FitStatistics"
"Assignment 5","Interaction plot vline/group","Step 13 Charts 7,20: RCBD interaction"
"Assignment 5","Boxplot by variety","Step 13 Charts 4,5,18: vbox / category"
"Assignment 5","Histogram by group","Step 13 Chart 17: histogram / group"
"Assignment 6","Balanced factorial 4×4×4","Step 9A: 4 interventions x 4 regions x 4 seasons"
"Assignment 6","GLM: additives+drivers+cars","Step 9A: GLM intervention+region+season"
"Assignment 6","LSMeans for additives","Step 9A: LSMEANS for intervention type"
"Assignment 6","Pairwise p-value matrix","Step 9A: lsmeans / pdiff stderr"
"Assignment 6","CONTRAST A vs B/C/D","Step 9A: contrast intervention A vs B/C/D"
"Assignment 6","Tukey HSD grouping","Step 9A: means intervention / tukey cldiff lines"
"Assignment 6","LS-Means scatter chart","Step 13 Chart 21: LS-Means for additive types"
"Assignment 6","Distribution of Emission boxplot","Step 13 Chart 19: boxplot by intervention"
"Assignment 7","Full factorial combinations (2×3)","Step 9B: DiseaseType x VaxLevel = 6 combos"
"Assignment 7","Field layout (4 blocks x 6 plots)","Step 9B: epi_field_layout dataset"
"Assignment 7","PROC ANOVA two-way factorial","Step 9B: type + ph + type*ph + block"
"Assignment 7","Tukey grouping for ph means","Step 9B: means VaxLevel / tukey"
"Assignment 7","Interaction significance type*ph","Step 9B: DiseaseType*VaxLevel p<.0001"
"Assignment 7","Scatter plot of block layout","Step 13 Chart 20: field layout scatter"
"Midterm Q1","Type I Error / Type II Error / Power","Step 10a: framework table + application"
"Midterm Q2","One-sample t-test H0=threshold","Step 5b: incidence vs 50/100K threshold"
"Midterm Q3","CONTRAST/ESTIMATE partition SS","Steps 9,10,12: contrast/estimate blocks"
"Midterm Q3","ANOVA table DF/SS/MS/F/Fcrit","Step 7a: full ANOVA table output"
"Midterm Q4","T-test/CRD/RCBD/LatinSq/BIBD table","Step 10b: design comparison table"
"Midterm Q5","Fixed vs Random effects","Step 10c: fixed/random table + Step 8 MIXED"
"Midterm Q5","Interaction A×B = random","Step 8b: pathogen*replication as random"
"Final Project 1","PROC CONTENTS data overview","Steps 12A: proc contents yield_analog"
"Final Project 1","Categorize continuous predictors","Steps 6,12A: Low/Med/High binning"
"Final Project 1","Two-way GLM with all interactions","Step 12A: GLM with rainfall*pest*temp"
"Final Project 1","Post-hoc Tukey for categories","Step 12A: means rainfall_cat / tukey"
"Final Project 1","HOVTEST=BARTLETT","Step 12A: homogeneity of variance Bartlett"
"Final Project 1","Custom contrast Medium vs Low","Step 12A: contrast analog comparison"
"Final Project 1","Crop-specific ANOVA: Item*Rainfall","Step 9B: DiseaseType*VaxLevel"
"Final Project 2","Descriptive stats by Trt x loc","Step 12B: means by domain x state"
"Final Project 2","Two-way GLM Trt+loc+loc*Trt","Step 12B: GLM domain+state+domain*state"
"Final Project 2","LSMEANS Trt (S>C>F ordering)","Step 12B: LSMeans by domain Tukey"
"Final Project 2","Tukey A/B/C distinct groupings","Step 12B: means Trt / tukey"
"Final Project 2","Interaction plot loc x Trt","Step 13 Chart 22: state x domain"
"Final Project 2","Residual analysis PROC UNIVARIATE","Step 12B: resid normality + QQ"
"Final Project 2","Q-Q plot for residuals","Step 13 includes QQ from Step 12B"
"Final Project 2","Levene's test for equal variance","Step 12B: means Trt / hovtest=levene"
"Final Project 2","Goodness-of-fit K-S/CvM/AD","Step 12B: UNIVARIATE NORMAL option"
;
run;

title "EpiWatch v3.0 — Complete Inherited Concepts Reference";
title2 "Assignments 1–7 + Midterm Q1-Q5 + Final Projects 1 & 2";
proc print data=inherited_concepts_v3 noobs label;
    label source="Source"
          concept="SAS Concept / Technique"
          application="Application in EpiWatch v3.0";
run;
title;

/* ── 14c. Audit Log ──────────────────────────────────────── */
ods excel options(sheet_name="Audit Log");
title "EpiWatch v3.0 — Full Execution Audit Log";
proc print data=epi_audit_log noobs label;
    label step="Pipeline Step"
          note="Details"
          ts="Timestamp"
          records_out="Output Records";
run;
title;

/* ── 14d. Close all ODS destinations ─────────────────────── */
ods pdf   close;
ods html5 close;
ods excel close;
ods graphics / reset;

/* ── 14e. Final confirmation ─────────────────────────────── */
%audit(step=COMPLETE,
    note=EpiWatch v3.0 Final finished. All 15 steps executed.);

%put ════════════════════════════════════════════════════════;
%put  EpiWatch v3.0 FINAL — ALL OUTPUTS SAVED:;
%put   PDF  → &outpath./EpiWatch_v3_Report.pdf;
%put   HTML → &outpath./EpiWatch_v3_Report.html;
%put   XLSX → &outpath./EpiWatch_v3_Summary.xlsx;
%put ════════════════════════════════════════════════════════;


/* ════════════════════════════════════════════════════════════
   END OF PROGRAM
   EpiWatch v3.0 — Final Epidemiology Surveillance &
   Experimental Intelligence Platform

   Author   : Abhijeeth Ganji
   Platform : SAS OnDemand for Academics

   ── INHERITED FROM ALL COURSEWORK ────────────────────────
   Assignment 1 : SURVEYSELECT, UNIVARIATE, POWER, t-test,
                  95% CI, moments, quantiles, extreme obs
   Assignment 2 : CLT n=3/6/9, non-normal distribution,
                  repeated sampling (URS), Z-score outlier
   Assignment 3 : One-sample/paired/two-sample TTEST,
                  paired profiles, repeated measures MANOVA,
                  G-G/H-F corrections, normality battery,
                  Folded F, Shapiro-Wilk, K-S, CvM, AD
   Assignment 4 : GLM one-way ANOVA, LSD, Tukey, Dunnett,
                  CONTRAST, ESTIMATE, LSMEANS, diffogram,
                  boxplot with F-stat overlay
   Assignment 5 : RCBD, CRD, PROC MIXED REML, sub-sampling,
                  Part C vs D, means SQL, covariance params,
                  AIC, interaction plots, Dunnett control,
                  histogram/boxplot by group
   Assignment 6 : Balanced factorial 4×4×4 Latin Square,
                  GLM additives+drivers+cars, LSMeans matrix,
                  Tukey HSD grouping, CONTRAST A vs B/C/D,
                  LS-Means scatter chart, emission boxplot
   Assignment 7 : Full factorial combinations (2×3=6),
                  field layout (4 blocks × 6 plots = 24),
                  Two-way ANOVA type*ph*block, Tukey ph,
                  interaction plot, scatter layout visual
   Midterm Q1   : Type I/II Error, Power = 1−β
   Midterm Q2   : One-sample t-test, two-tailed, α=0.05
   Midterm Q3   : CONTRAST/ESTIMATE, ANOVA table decomposition
   Midterm Q4   : T-test/CRD/RCBD/Latin Square/BIBD table
   Midterm Q5   : Fixed vs Random effects, A×B = random
   Final Proj 1 : Categorized GLM (Low/Med/High), Bartlett,
                  contrast Medium vs Low, crop-specific ANOVA
   Final Proj 2 : Two-way GLM, LSMeans ordering, Tukey A/B/C,
                  interaction plot, residuals, QQ, Levene

   ── ADVANCED TECHNIQUES ──────────────────────────────────
   PROC GENMOD  : Negative binomial regression (count data)
   PROC PHREG   : Cox proportional hazards
   PROC LIFETEST: Kaplan-Meier survival curves + log-rank
   PROC HPFOREST: Random Forest ML (300 trees, variable imp)
   PROC LOGISTIC: Stepwise logistic + ROC/AUC/C-statistic
   PROC SURVEYREG: Survey-weighted regression (ACS weights)
   CUSUM algorithm, Rt via LAG(), rolling avg RETAIN
   NLP macros: alert narratives, pathogen risk classifier
   HIPAA cell suppression, audit log, 8-macro framework
   ODS PDF + HTML5 + Excel tri-format output (3 files)
   15-step research pipeline, 25 charts, 65+ SAS techniques
════════════════════════════════════════════════════════ */
