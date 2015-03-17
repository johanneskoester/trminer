# TRMiner

TRMiner is a python tool that aims at scientific data curators. It allows to rapidly prune large collections of scientific publications to sentences relevant for a given mining goal.

The approach works in two steps. First, texts are tranlated into sequences of tokens for relevant words. Second, regular expression patterns are searched in the token sequences. Matches are translated back into natural language sentences and provided as HTML5 based output, that allows manual curators to sort and rate matches for further reading and information extraction.

## Installation

You need to have Python >= 2.7. TRMiner is listed in the Python Package Index. You can therefore install it with:
```bash
$ easy_install trminer
```
in a terminal.

## Usage

TRMiner needs two configuration files. A token map, and a defintion of search patterns over the token alphabet.
The token map, e.g.
```
d       domain  binding site
i       interacts       interacting     bind    binding binds   interact        association     associated
```
contains tab separated word lists. Thereby, the first character in each line represents the token, the further tab separated words define the class of words that map to the token. Importantly, sequences of words that should map to a token can be distinguished from single words, e.g. "binding site" instead of "binding" and "site".

The pattern definition, e.g.
```
pcpp    p
ppcp    p
ippm    p
pph     p
papi    p
```
contains one regular expression pattern in each line. Separated by a tab you can specify which tokens need to correspond to unique words in a match. I.e. here, the p token needs to represent different words in each of its occurences in a match of the pattern pcpp.

The output of the mining step is an HTML 5 file, providing an interface to rate and sort matches for further reading.

Execute
```bash
$ trminer
```
in a terminal to get help with the command line interface usage. 
