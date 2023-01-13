# SINATRA 
Sub-Image Analysis using Topological Summary Statistics.

## Post ECT alignment

This directory provides a brief demonstration on how the shapes can be aligned using the Euler curves. Similar alignment can be done to new data sets relatively easily by modifying postECTalignment.R and the data loaded therein. The discretization of O(3) can also be changed (perm_rot.R) and the NEWGRID and 

## Scripts

perm_rot.R computes the dictionary between given O(3) actions (posECTmiscdata/grid) and permutations of directions (posECTmiscdata/directions). 
Computing this dictionary is computationally expensive. For convenience, the dictionary has been computed and stored in directory /res. This dictionary consists of 16,000 O(3) actions and 2,918 directions.

postECTalignment.R computes the alignment for a set of 5 molars. It requires an output from perm_rot.R. This script can be provided a different dataset with minor modifications, and the script is relatively fast to run.

## Raw Data

For illustration purpose, the demo script uses select 5 teeth used in the paper, and compares the alignment from post-ECT to those obtained by the quasi branch and bound alignment scheme.

