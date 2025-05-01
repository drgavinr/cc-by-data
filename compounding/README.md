# Compounding Cases

Data from *Calendar of the Committee for Compounding* relating to sequestration and compounding cases in the British Civil Wars.

- [Introduction](#introduction)
- [Files](#files)
- [Data structures](#data-structures)
	- [Cases](#cases)
	- [People](#people)
- [Copyright](#copyright)

## Introduction

This data is compiled from M.A.E. Green (ed.) *Calendar of the Committee for Compounding* (London: HMSO, 1889-1892, 5 vols). It is assumed that anyone needing to use this data will already have some familiarity with the calendar and the system that produced the original records, so no background information is given here. Scans of the calendar are free to view at Hathi Trust:

- [Volume 1, pp. 1-828, general proceedings.](https://babel.hathitrust.org/cgi/pt?id=msu.31293027026552)
- [Volume 2, pp. 829-1635, cases dated 1643-1646.](https://babel.hathitrust.org/cgi/pt?id=mdp.39015066345532)
- [Volume 3, pp. 1637-2391, cases dated 1647-1650.](https://babel.hathitrust.org/cgi/pt?id=mdp.39015066345680)
- [Volume 4, pp. 2393-3176, cases dated 1650-1653.](https://babel.hathitrust.org/cgi/pt?id=uiug.30112107844703)
- [Volume 5, pp. 3177-3828, cases dated 1654-1659, introduction, addenda, and index.](https://babel.hathitrust.org/cgi/pt?id=mdp.39015061336072)

Cases are dated according to when they came before the committee. They may refer to events in earlier years.

## Files

See [delimited text documentation](https://github.com/drgavinr/cc-by-data/blob/main/delimited-text.md) for more details of file formats.

Two datasets are provided here:

- ccc-cases: a record for each individual case identified by a heading in the calendar. Sometimes the same case occurs more than once in different places in the calendar. These are given separate records but cross-referenced by IDs. References to original documents are not included. 6,128 rows of data.
- ccc-people: a record for each person named in the heading of a case, and some groups which are not individual people. 8,057 rows of data.

Errata from volume 5 have been applied as far as they affect this data, except that no whole rows have been deleted.

## Data structures

### Cases

| Field Name | Description |
| --- | --- |
| CaseID | Unique identifier for this case constructed from volume number, page number (zero-filled to 4 digits), and number for the order in which the case occurs on the page where it starts (zero-filled to 2 digits).
| Vol | Number of the volume of the printed calendar where the case starts. |
| Page | Number of the page of the printed calendar where the case starts. Page numbers are unique throughout all volumes of the calendar, but volume number has been provided in the previous column for convenience. |
| Order | Number for the order in which the case occurs on the page where it starts. |
| CaseName | A name from the case that can be used to sanity check the IDs. Usually the surname of the first person named in the heading, but sometimes a peerage or place name. There are legitimate reasons why some values of CaseName don't match for related cases. For example, people are named in the heading in a different order, or a peer is listed under his surname in one place but only his title in another. |
| RelatedCase | ID of a related case. Taken from cross references in footnotes and from the addenda in volume 5. Mostly refer to the same case, but sometimes a different case that is related. Can have multiple values separated by semi-colon. |

### People

| Field Name | Description |
| --- | --- |
| RowID | Unique identifier for this row in the file. Can be used to sort rows into original order. Has no meaning outside this file. |
| CaseID | Unique identifier for this case constructed from volume number, page number (zero-filled to 4 digits), and number for the order in which the case occurs on the page where it starts (zero-filled to 2 digits).
| Vol | Number of the volume of the printed calendar where the case starts. |
| Page | Number of the page of the printed calendar where the case starts. These are unique throughout all volumes of the calendar, but volume number has been provided in the previous column for convenience. |
| Order | Number for the order in which the case occurs on the page where it starts. |
| Group | Name of an organization or other group of people included in the heading of a case but not named individually. |
| PreTitle | Title that precedes a person's name, such as Sir, Lady, Mr, Mrs, or military ranks. |
| Forename | Person's forename. |
| Surname | Person's surname. Spelling taken directly from the calendar and may differ for the same person in related cases. |
| PostTitle | Status that goes after a person's name and is treated here as a title. Includes peerages, bart, esquire, senior, junior, JP, MP, initials referring to knighthoods, doctorates and other degrees. |
| Status | Any other status information after a name that is not treated as a title by the above criteria. Can include relationships to other people in the case. |
| Place1, Place2, Place3 | Names of places associated with this person given in the heading of the case. Not necessarily the person's place of residence. Most place names have not been identified or standardized and are as shown in the calendar, but in a few cases where the identification was obvious they may have been silently modernized. |
| County1, County2, County3 | Counties associated with this person given in the heading of the case. Usually qualify place name if the corresponding Place field has a value, but counties can also occur on their own. County names should agree with the [Historic Counties Standard](https://historiccountiestrust.co.uk/Historic_Counties_Standard.pdf) except that London is treated as a county in its own right. Values can also include: Scotland, Ireland, Jersey, or may be blank in a few cases. |


## Copyright

The original text is out of copyright because it was published under Crown Copyright more than 50 years ago.

There is no new copyright in the transcript because it is an unoriginal copy of an existing work.

Gavin Robinson holds database right in the whole files and the structure of the data. These rights are waived under CC-BY.
