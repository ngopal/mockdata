#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE);
print(args)

long = sample(-180000:180000, args[1], replace=T)/1000
print(long)

