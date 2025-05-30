# Warrants

Catalogue descriptions of subseries of parliamentarian pay warrants in [TNA, SP 28](https://discovery.nationalarchives.gov.uk/details/r/C13570). The official catalogue only describes pieces 1A to 119 at piece level. Within each piece, the warrants are sorted into subseries based on the organization that they relate to, although there are sometimes stray warrants in the wrong subseries. The data here adds this extra level for pieces 1A to 57 (1642 to 1648), giving part and folio numbers for each subseries.

## Contents

- [File formats](#file-formats)
- [Data structure](#data-structure)
- [Copyright](#copyright)

## File formats

See [delimited text documentation](https://github.com/drgavinr/cc-by-data/blob/main/delimited-text.md) for more details.

## Data structure

| Field name | Description |
| --- | --- |
| Reference | Full reference. |
| Sort key | Key generated from piece number and first folio of subseries which allows entries to be sorted in ascending order. |
| Orderable reference | Piece number which can be ordered at TNA. Each piece contains several subseries. Some may come in more than one box, but that is not indicated in this data. |
| Type | Brief classification by the organization the warrants relate to. 'Misc' is for series of miscellaneous documents. These occur in most pieces and are not strictly pay warrants. They can relate to any of the organizations listed here, or to other subjects. |
| Description | Human-readable description giving more information than Type. Includes date range if known. |

## Copyright

Includes Crown Copyright data from Public Records and TNA's catalogue, available under the [Open Government Licence](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

Gavin Robinson holds database right in the files as a whole and the structure of the data, and copyright in the documentation. These rights are waived under a CC-BY licence.
