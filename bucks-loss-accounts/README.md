# Buckinghamshire loss accounts

Catalogue of accounts of losses from the British Civil Wars by parishes in Buckinghamshire.

Transcripts of some accounts can be viewed at the [Winslow History website](http://winslow-history.org.uk/seventeenthc-articles1646.shtm).

## Contents

- [Introduction](#introduction)
- [Files](#files)
- [Data structures](#data-structures)
	- [Documents](#documents)
	- [Units](#units)
	- [Links](#links)
- [Survival rates](#survival-rates)
- [Copyright](#copyright)

## Introduction

In 1644, Parliament set up the Committee for Taking Accounts of the Whole Kingdom to audit the parliamentarian war effort. This committee had sub-committees in each county. One of the roles of the county sub-committees was to collect accounts of losses sustained by each parish, including taxation, sequestration, voluntary contributions, free quarter, and anything else taken by soldiers without paying. Many of the accounts that were collected have survived. The main series is [TNA, SP 28/148-190](https://discovery.nationalarchives.gov.uk/browse/r/h/C91604) although stray accounts have been found in other parts of SP 28, other series in TNA, and other archives. Most known Warwickshire loss accounts have been transcribed by volunteers and are available at the [Warwickshire County Council website](https://heritage.warwickshire.gov.uk/civilwaraccounts) (Ipsley is missing from the transcripts but has an account in TNA, SP 28/38/3, f. 202).

The data provided here is a catalogue of known accounts from Buckinghamshire. As well as references to accounts that are known to survive in SP 28, it includes evidence of accounts that once existed but have since been lost. Further research in future may find more surviving accounts or evidence of lost accounts.

In Buckinghamshire, the accounts were written in response to a questionnaire with 29 numbered questions about different kinds of tax payments and other losses. No copy of the questionnaire has yet been found, but the subject of the questions can usually be inferred from the answers. The accounts are usually structured in the same way as the questionnaire, with headings for each numbered question. Some individual people submitted their own accounts separately from the rest of their parish, and some individuals submitted accounts for estates that had parts in several parishes.

## Files

See [delimited text documentation](https://github.com/drgavinr/cc-by-data/blob/main/delimited-text.md) for more details of file formats.

- documents: catalogue of surviving loss accounts, 1 row for each document. 101 rows of data.
- units: record for every parish or sub-unit in Buckinghamshire showing whether accounts are known to survive, and giving references. 234 rows of data.
- links: link table used to join records in the above two files by IDs. 106 rows of data. Relationships between documents and units are many-to-many because an account can cover more than one unit, and a unit can have more than one account.

## Data structures

### Documents

| Field name | Description |
| --- | --- |
| DocID | Unique number for this document. Used to link to other files in this dataset, but does not correspond to any external identifier. |
| Ref | Full catalogue reference of this document. One document per row. |
| Order | For accounts in TNA, SP 28/151, which had no item or folio numbers when it was consulted for this research in the year 2010, this column gives the approximate order in which the account was found in the box. It is not known whether they are still in this order, or whether any item or folio numbers have been added. |
| Sort | Catalogue reference in a standardized form that can be used to sort documents into ascending order of reference. |
| Description | Description of the document giving the place it covers, and the name of a person if it is an individual account. Usually quoted or paraphrased from the original manuscript, retaining original spelling but silently expanding abbreviations. SP 28/221 was not consulted at the same time as the rest because it was unfit for production, so the description is based on older notes that have less detail and do not retain original spellings. |
| Pages | Number of pages in this document that contain any text. Each side of a folio counted separately: each recto counts as 1 page and each verso counts as 1 page. |
| Notes | Any other information. |
| Transcript | URL of a transcript of this document if one is available online. These are currently all at the [Winslow History website](http://winslow-history.org.uk/).

### Units

| Field name | Description |
| --- | --- |
| UnitID | Unique number for this unit. Used to link to other files in this dataset, but does not correspond to any external identifier. |
| Hundred | Name of the hundred that the parish was in. |
| Parish | Name of an ancient parish. A few of these were in Oxfordshire at the time (these are qualified with 'Oxfordshire' in brackets) but are included here because they had a sub-unit in Buckinghamshire. |
| Township | Name of a sub-unit of a parish that is known to have had a separate civil identity or that submitted a separate account. Blank if neither of those applies. |
| PlaceName | Name of the place, taken from the Parish or Township column. Can be used to sort all rows into order of place name independently of Parish and Township. Spelling of names should agree with at least one of Youngs and the *VCH* but if they differ, no consistent method has been used to choose between them. |
| VCH | URL of the relevant article in the *Victoria County History* at British History Online. |
| Youngs | Page reference to entry for this unit in Frederic A. Youngs, *Guide to the Local Administrative Units of England, Volume 1: Southern England (London, Royal Historical Society, 1980). Value is 'none' for units that have a separate account but are not listed in Youngs. |
| VoB | Vision of Britain ID for this unit. Can be formed into a URL by prefixing with `https://www.visionofbritain.org.uk/unit/` In some cases, the hundred given in Vision of Britain differs from Youngs even though Youngs is cited as the source. In these cases, Youngs has been preferred. |
| Status | Whether an account for this unit is known to exist. Values: 'extant', at least one account exists and is referred to in the next column and the documents file; 'lost', no account is known to survive, but evidence that it once existed is referred to in the columns labelled Goodwin, Grenvile, and Tyrrill; 'no trace', there is no evidence of an account ever having existed. |
| Ref | Full archival catalogue reference of any loss accounts known to survive for this unit. Can refer to more than one account. All documents referenced here are also listed in the documents file. |
| OtherSources | Descriptions of and references to other sources about this unit. These have been discovered incidentally while looking for loss accounts and have not been recorded consistently. Many more tax accounts for specific places exist but are not recorded here. Documents referenced in this column are not included in the documents file. |
| Goodwin | Reference to folio(s) mentioning this place in TNA, SP 28/149/2, ff. 200-210. This is an account of charges on Colonel Arthur Goodwin compiled by the county sub-committee from parish loss accounts. It provides some evidence of accounts that are not known to survive. |
| Grenvile | Reference to folio(s) mentioning this place in TNA, SP 28/149/2, ff. 222-232. This is an account of charges on Richard Grenvile (sheriff of Buckinghamshire and parliamentarian captain, not the Cornish side-changer Sir Richard Grenvile) compiled by the county sub-committee from parish loss accounts. It provides some evidence of accounts that are not known to survive. |
| Tyrrill | Reference to folio(s) mentioning this place in TNA, SP 28/148/2, ff. 267-294. This is an account of charges on Colonel Thomas Tyrrill compiled by the county sub-committee from parish loss accounts. It provides some evidence of accounts that are not known to survive. |
| Notes | Any other information. |

### Links

| Field name | Description |
| --- | --- |
| DocID | Matches the same field in documents. |
| UnitID | Matches the same field in units. |

## Survival rates

The table below shows the survival rate based on all the parishes and sub-units of parishes known to have been part of Buckinghamshire at the time:

| Account status | Number of units | % of total |
| --- | --- | --- |
| extant | 92 | 39% |
| lost | 40 | 17% |
| no trace | 102 | 44% |
| total | 234 | 100% |

No accounts are known to survive from Newport hundred, and the only trace of a lost account for this hundred is an individual account by Thomas Barnes of Newport Pagnell.

## Copyright

Includes Crown Copyright data from Public Records and TNA's catalogue, available under the [Open Government Licence](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

Gavin Robinson holds database right in the whole files and the structure of the data, and copyright in the documentation. These rights are waived under CC-BY.
