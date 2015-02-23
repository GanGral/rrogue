# Rogue Consumer Logs Analyzer

##Easy tool to briefly analyze outputs of "<pisubsystem> -thread" command and define the rogue PI Point or ProcessID 

This is pre-build of "rrogue" package which does the following:

1.Reads outputs in ASCII format.

2.Process the dataset in order to find the thread with CurTime greater then specified threshold. 

3.Returns the tidy dataset with relevant information..


##Steps to check how it performs:

1.Download the "rawDataExample.txt" dataset(actual ouput) and put into a folder on your local drive. 

2.Download required scripts("readThreadLog.R" and "getRogueConsumer.R"), which are located in R folder. Initiate them in your R environment. 

3.Run getRogueConsumer function,that takes two parameters: Path to dataset and CurTime threshold.

###Requirements
Packages:
"stringr"
"plyr"
"dplyr" 

Would be installed automatically, if not set up in R.
