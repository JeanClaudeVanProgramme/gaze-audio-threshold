global EXPWIN GREY Calib
MONITOR=1; %set to zero for running exp (matlab on windows has bad timing with 2+ monitors)
SKIP_SYNC=1; %Should be set to 0 when running exp, 1 for programming - ie if you have 2 screens on
DEBUG=1; %turn  to 1 if already have calibrated eye track

%Note several constants are defined using knowledge of the presentations
%screen refresh rate and the eye tracker sampling rate - values here are
%for a 60hz Tobii Pro Nano - be sure to change for your setup

Constants.UseEyeTracker=0;
Constants.FixThresh=20; %20*16.67=333ms @ 60hz samples (requitred fixation duration on target to be correct)
Constants.trialTime=6; %trial timeout - 6 seconds

Constants.ISI_RATE=0.5; %interstimulus interval maximum (seconds)
Constants.ISI_MAX=3; %interstimulus interval maximum (seconds)
Constants.ISI_MIN=0.5; %interstimulus interval minumum (seconds)
Constants.ISI_INIT=Constants.ISI_RATE+Constants.ISI_MAX;

%For training trials only: TrialCorrect must be less or equal to
%TrialEval, if TrialCorrect equals TrialEval the subject must be 100%
%correct of the evaluation period
Constants.numTrialEval=6; %for training how many trials to evaluate over
Constants.numTrialCorrect=5; % what number correct are needed?

%for full experiment trials
Constants.MaximumPerformanceTrialNum=4; %how many trials at top before we stop trial
Constants.MinimumPerformanceTrialNum=6; %how many trials at bottom before we stop trial
Constants.MaxReversals=11; %how many reversals before stopping testing

Constants.TrainingTrials=1; %if it is training
%Constants.AnimatedTrials=0; %how many trials at beginning need animated fixaiton point
%Constants.animate_fix=0; %slide character across screen to choice?

Constants.IncorrectTimeOut=1.5; %(seconds)
Constants.ShakeFixThresh=120; %when to start attention grabber 120frames*16.67@60hz = 2s
Constants.FixThreshFixationImage=18; %18*16.67(60hz)=300ms
Constants.CalVolume=0.05; %18*16.67(60hz)=300ms Volume on calibration sounds for infant
Constants.CalVideoLength=1.5; %(seconds) specify desired duration for calibration video
%-----------------------------------------

AttentionMovieFile='Pocoyo 3x00 El Show de Pocoyo.mov';


ESC_PRESSED=0;

%--don't below alter unless you have good reason--
Constants.showGaze=1; %O=Nogaze pointer visible 1=gaze pointer visible

expdir=[pwd '/'];
PITCH_HUMAN=[expdir '/STIMULI/AUDIO/pitch human/'];
PITCH_ELEC=[expdir '/STIMULI/AUDIO/pitch elec/'];
RHYTHM_ELEC=[expdir '/STIMULI/AUDIO/rhythm elec/'];
RHYTHM_HUMAN=[expdir '/STIMULI/AUDIO/rhythm human/'];


VOLUME=[expdir '/STIMULI/AUDIO/volume/'];

REWARD_DIRECTORY=[expdir '/STIMULI/VISUAL/rewards/'];
Rwd_Img1='cauldron.tif'; Rwd_Img2='coins.tif';
%Rwd_Img1='jelly bean jar.tif'; Rwd_Img2='jelly beans.tif';
%Rwd_Img1='star box.tif'; Rwd_Img2='star.tif';


ALIEN_DIRECTORY=[expdir '/STIMULI/VISUAL/Aliens/'];
DINO_DIRECTORY=[expdir '/STIMULI/VISUAL/Dinos/'];
SNAIL_DIRECTORY=[expdir '/STIMULI/VISUAL/Snails/'];
COMBO_DIRECTORY=[expdir '/STIMULI/VISUAL/Combined/'];

Constants.calpoint_dir=[expdir '/InfantCalibration/'];
Constants.calpoint_size=50;

Constants.HiLeft_LoRight=1;
Constants.HiRight_LoLeft=2;

Constants.gColor=[255 150 0 255]; %gaze cursor colour RGB
%---------
Constants.fpXY=120; %fixation image XY size in pixels
Constants.sXY=[300 240]; %movie stimulus size in pixels
GREY=[220 220 220]; %colour RGB neutral grey


%we use convention that locations of left & right have 0 & 1 assigned
Constants.LEFT=0; Constants.RIGHT=1;
Constants.LOW=0; Constants.HIGH=1;

Calib = SetCalibParams(MONITOR, SKIP_SYNC); %Variable indicates monitor
