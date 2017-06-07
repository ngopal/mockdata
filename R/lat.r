#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE);
print(args)

lat = sample(-90000:90000, args[1], replace=T)/1000
print(lat)

