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

#'Micro RNA Expression Values for the Fetal Human Brain Atlas.
#'
#'A dataset containing the normalized expression values for a single brain in the fetal human brain atlas.
#'
#'
#'@format A data frame with 9540552 rows and 4 variables:
#'\describe{
#'  \item{donorID}{brain ID from the Allen Institute}
#'  \item{gene}{gene the above probe corresponds to; gene to probe is many to one}
#'  \item{brain_structure}{brain structure acronym}
#'  \item{value}{normalized expression value}
#'}
#'@source \url{"http://www.brainspan.org/static/download.html"}
#'
"datFET.donor1"

#'Micro RNA Expression Values for the Fetal Human Brain Atlas.
#'
#'A dataset containing the normalized expression values for a single brain in the fetal human brain atlas.
#'
#'
#'@format A data frame with 9919840 rows and 4 variables:
#'\describe{
#'  \item{donorID}{brain ID from the Allen Institute}
#'  \item{gene}{gene the above probe corresponds to; gene to probe is many to one}
#'  \item{brain_structure}{brain structure acronym}
#'  \item{value}{normalized expression value}
#'}
#'@source \url{"http://www.brainspan.org/static/download.html"}
#'
"datFET.donor2"

#'Micro RNA Expression Values for the Fetal Human Brain Atlas.
#'
#'A dataset containing the normalized expression values for a single brain in the fetal human brain atlas.
#'
#'
#'@format A data frame with 9044560 rows and 4 variables:
#'\describe{
#'  \item{donorID}{brain ID from the Allen Institute}
#'  \item{gene}{gene the above probe corresponds to; gene to probe is many to one}
#'  \item{brain_structure}{brain structure acronym}
#'  \item{value}{normalized expression value}
#'}
#'@source \url{"http://www.brainspan.org/static/download.html"}
#'
"datFET.donor3"

#'Micro RNA Expression Values for the Fetal Human Brain Atlas.
#'
#'A dataset containing the normalized expression values for a single brain in the fetal human brain atlas.
#'
#'
#'@format A data frame with 6593776 rows and 4 variables:
#'\describe{
#'  \item{donorID}{brain ID from the Allen Institute}
#'  \item{gene}{gene the above probe corresponds to; gene to probe is many to one}
#'  \item{brain_structure}{brain structure acronym}
#'  \item{value}{normalized expression value}
#'}
#'@source \url{"http://www.brainspan.org/static/download.html"}
#'
"datFET.donor4"

#'Donor ID's for Brains in the Fetal Human Brain Atlas
#'
#'A vector of the donor ID's from the 4 brains in the fetal human brain atlas
#'
#'@format A character vector of length 4:
#'
#'@source \url{"http://www.brainspan.org/static/download.html"}
#'
"donorsFET"

#'Genes for Brains in the Human Brain Atlas
#'
#'A vector of the genes measured from the 4 brains in the fetal human brain atlas
#'
#'@format A character vector of length 29176:
#'
#'@source \url{"http://www.brainspan.org/static/download.html"}
#'
"genesFET"

#'Brain structures measured in the Fetal Human Brain
#'
#'A vector of the brain structure acronyms measured in the fetal human brain atlas
#'
#'@format A character vector of length 516:
#'
#'@source \url{"http://www.brainspan.org/static/download.html"}
#'
"subregionsFET"
