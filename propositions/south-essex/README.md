# South Essex accounts

Accounts of Propositions contributions and 5th and 20th Part assessments received by the treasurer of the southern division of the county of Essex.

## Contents

- [Original manuscript](#original-manuscript)
- [Files](#files)
- [Data structure](#data-structure)
- [Copyright](#copyright)

## Original manuscript

Data is compiled from an account book of John Fenning of Romford, parliamentarian treasurer of the southern division of the county of Essex. This division included the hundreds of Barstable, Becontree, and Chafford.

The original document is one of several accounts and other loose documents in [TNA, SP 28/153/6](https://discovery.nationalarchives.gov.uk/details/r/C193231). No item or folio numbers have been added by archivists.

The first part of the book is an account of money received on the Propositions starting in 1642. Original page numbers are written in ink in the top right corner of each recto, from 1 to 15. The account is arranged by hundred, then by parish, then by date.

The second part of the book is an account of money received on the 5th and 20th assessment in 1643. Although bound in the same book as the Propositions account, it has its own page number sequence from 1 to 17. Entries for this assessment are arranged in the same way as the Propositions account.

The number sequence continues after this to 23 covering other accounts which have not been transcribed. There are further unnumbered pages after this, also containing other accounts which have not been transcribed.

It must be stressed that these accounts only cover a minority of the population of each parish, because most people did not have the wealth to be considered able to contribute. Nevertheless, the combination of Propositions and 5th and 20th money in the same account book makes it easy to compare contributors and non-contributors, particularly by calculating a ratio of contributors to non-contributors without needing to know the total population of each parish.

The original manuscripts are Public Records in Crown Copyright. The text is available under the [Open Government Licence](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

## Files

See [delimited text documentation](https://github.com/drgavinr/cc-by-data/blob/main/delimited-text.md) for more details of file formats.

The following files are available here:

- fenning-5th-20th-account: a transcript of Fenning's account of receipts on the 5th and 20th assessment.
- fenning-propositions-money-account: a transcript of Fenning's account of receipts on the Propositions.

## Data structure

Both files have the same fields:

| Field Name | Description |
| --- | --- |
| ID | ID number for this row. Has no meaning outside the file. Does not link records for the same person in each account. |
| Page | Page number. Taken from contemporary page numbers inked in the corner of the manuscript. Note that each file starts at page 1, but these are different pages because the manuscript has two number sequences. |
| Hundred | The name of the hundred, taken from the heading in the manuscript. |
| Place | Place name, taken from the heading in the manuscript. Transcribed with original spelling and not modernized or linked to any identifiers. |
| Date | Date of entry in form YYYY-MM-DD. All dates are in the Julian calendar. |
| PreTitle | Any title or descriptor found before a person's name. |
| Forename | Person's forename. |
| Surname | Person's surname. |
| PostTitle | Any title or descriptor found after a person's name. |
| Pounds | Number of pounds. |
| Shillings | Number of shillings. |
| Pence | Number of pence. |
| Notes | Any other information. |

## Copyright

The original manuscripts are Public Records in Crown Copyright. The text is available under the [Open Government Licence](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

The transcript provided here does not have its own copyright because it is an unoriginal copy of existing works.

Gavin Robinson holds database right in the files as a whole and the structure of the data, and copyright in this documentation. These rights are waived under a CC-BY licence.
