#    Copyright (C) 2017 Allen Institute
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program; if not, write to the Free Software Foundation, Inc.,
#    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

#!/usr/bin/env python
""" 
Script to parse through each of the directories in the human brain atlas and
construct unique list of donorIDs, probes, genes, and subregions found across
all of the brains.

In order to use this scrpit, it is required that you orgainize the sample
directories as follows:

dirHBA
    |_ donorID1
    |_ donorID2
    |_ ...

Additionally, there should be no extra directories or files in the base
directory. If your files are not organized as such, this script is not
garunteed to create the same output.

author: edelsonc<charlese@alleninstitute.org>
created: 07/02/2017
"""
import os

def write_list(alist, path):
    """helper function to quickly write list"""
    with open(path,'w') as f:
        for i in alist:
            f.write('{}\n'.format(i))


def create_output_directory(atlas):
    """
    Function creates the directory to place the output files in. It will
    be in the directory the script is run in.
    """
    print("Creating factors{} in {}".format(atlas, os.getcwd()))
    output_dir = "factors{}".format(atlas)
    if output_dir in os.listdir():
        print("factors{} already exists in cwd".format(atlas))
    else: 
        os.makedirs("factors{}".format(atlas))


def write_donors(path, atlas):
    """
    A function to get the donorIDs when given the base directory as described
    above

    Arguments
    --------
    path -- file path to the base directory 
    """
    donors = []
    for dirc in os.listdir(path): # get donorID from dir name
        donor = "{}".format(dirc.split("_")[-1])
        donors.append(donor)

    # write result to list in new directory of factors
    print("writing donors")
    write_list(donors, "factors{}/donors.txt".format(atlas))


def write_probes_genes(path, atlas):
    """
    A function to get the probes and genes when given the base directory as
    described above.

    Arguments
    ---------
    path -- file path to the base directory
    """
    probes = set()  # set object to eliminate duplicates
    genes = set()
    # parse through each csv in each file to find all genes and probes
    for dirc in os.listdir(path):
        with open("{}/{}/rows_metadata.csv".format(path,dirc), 'r') as f:
            header = next(f)
            for line in f:  # to skip the header
                row = line.strip().split(',')
                probes.add(row[1])
                genes.add(row[3])

    # write results to factor 
    print("writing probes")
    write_list(probes, "factors{}/probes.txt".format(atlas))
    print("writing genes")
    write_list(genes, "factors{}/genes.txt".format(atlas))


def write_subregions(path, atlas):
    """
    Function to get the subregions acronyms when given the base directory as
    above

    Arguments
    --------
    path -- file path to the base directory
    """
    struct_id = set()  # set to avoid duplicates
    struct_acro = set()
    # for each dir and for each file find the structures and acros
    for dirc in os.listdir(path):
        with open("{}/{}/columns_metadata.csv".format(path,dirc), 'r') as f:
            header = next(f)
            for line in f:  # to skip the header
                row = line.strip().split(",")
                struct_id.add(row[0])
                struct_acro.add(row[2])

    print("writing structure IDs")
    write_list(struct_id, "factors{}/structure_IDs.txt".format(atlas))
    print("writing structure acronyms")
    write_list(struct_acro, "factors{}/structure_acronyms.txt".format(atlas))


if __name__ == "__main__":

    dirFET = "C:/Users/cygwin/home/charlese/dir_FET"
    atlas = "FET"

    create_output_directory(atlas)
    write_donors(dirFET, atlas)
    write_probes_genes(dirFET, atlas)
    write_subregions(dirFET, atlas)
