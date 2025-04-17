# Essex's Army treasurers' accounts

Transcripts of financial accounts of the Earl of Essex's Army in the English Civil War.

## Contents

- [Background](#background)
	- [Further reading](#further-reading)
- [Original documents](#original-documents)
- [Files](#files)
- [Data structures](#data-structures)
	- [Markup](#markup)
- [Transcription conventions](#transcription-conventions)
- [Important facts](#important-facts)
- [Copyright](#copyright)

## Background

The Earl of Essex's army was the main parliamentarian field army in 1642, and one of several major parliamentarian field armies in 1643 and 1644. In the spring of 1645, it was amalgamated into the New Model Army.

The army's chief treasurer was Sir Gilbert Gerard, 1st Baronet, based in London. In 1642 he mostly received money from voluntary contributions under the Propositions system, and loans from the Adventurers for Irish Land (who included slave traders). From 1643 onwards, he received tax revenues. Money was paid out to the army by Gerard's two deputy treasurers:

- William Jessop, based in London.
- Francis Vernon, who travelled with the army.

In 1643, the army also had a parrallel system of finance in which John Fenton levied contributions of money directly from civilians in the areas where the army was quartered, and paid it directly to the army. Fenton handled much less money than Gerard and his deputies.

Most payments to the army were authorized by warrants signed by the Earl of Essex. These stated the name of the payee, the amount, the date when payment was authorized, and usually some information about the purpose of the money. Payees include:

- army officers, for their own and their soldiers' salaries, or for standard allowances for buying equipment.
- civilian contractors, for selling commodities to the army, or hiring draught horses and wagons.
- soldiers' widows, for arrears of pay due to their late husbands.

Essex's warrants were addressed to either Gerard or Fenton. Those addressed to Gerard were paid either by Jessop in London, or by Vernon in the field. Those addressed to Fenton were paid by Fenton in the field.

When a payment was made, a receipt was written on the same sheet of paper as the warrant. This gives the date of payment, the amount paid (not always the full amount ordered to be paid), and the signature or mark of the person who received the money (not always the payee named in the warrant).

Paid warrants were usually retained by the treasury, and many survive in The National Archives. Monthly subseries are catalogued in the [pay warrant dataset](https://github.com/drgavinr/cc-by-data/tree/main/army-pay/warrants). Individual warrants and receipts have not been catalogued or transcribed.

Some payments to the army were authorized by warrants signed by the Committee of Safety. These are in [TNA, SP 28/261-264](https://discovery.nationalarchives.gov.uk/browse/r/h/C91609).

In 1642, particularly in the summer, many payments were made directly to army officers by the Propositions treasurers at Guildhall. Their account is in [TNA, SP 28/170](https://discovery.nationalarchives.gov.uk/details/r/C193248) (unfoliated) and has not been transcribed.

Many of the entries in the surviving treasurers' accounts can be matched to surviving warrants. Other entries give details of transactions for which the warrants have been lost.

### Further reading

- D. Brown, *Empire and Enterprise: Money, Power and the Adventurers for Irish Land During the British Civil Wars* (Manchester University Press, 2022).
- T. Crawshaw, 'Military Finance and the Earl of Essex's Infantry in 1642 – a Reinterpretation', *Historical Journal* 53/4 (2010), pp. 1037-48. [JSTOR](https://www.jstor.org/stable/40930368).
- T. Crawshaw, 'Military Finance and the Earl of Essex’s Regular Army: 1642–1644' (PhD thesis, York University, Toronto, 2013). [http://hdl.handle.net/10315/31705](http://hdl.handle.net/10315/31705)
- A. Turton, *Chief Strength of the Army: Essex's Horse (1642–1645)* (Leigh on Sea, Partizan Press, c. 1992). A directory of cavalry units and officers in Essex's army compiled from pay warrants.

## Original documents

No accounts of William Jessop's issues are known to survive.

The data provided here is transcribed from the surviving account books of Francis Vernon and John Fenton. These are both held by The National Archives of the UK, reference: [SP 28/143](https://discovery.nationalarchives.gov.uk/details/r/C193221) (wrongly described in the catalogue as 'Miscellaneous receipts and vouchers'). This box contains several account books but they are not identified by part or item numbers. Each book has its own sequence of folio numbers, usually starting at 1. There is no continuous numbering throughout the box.

The data provided here covers only issues of money. This is taken from:

- Vernon: ff. 5r-86r. August 1642 to March 1644. No accounts after this period are known to survive even though the army and its pay warrants continued for another year.
- Fenton: ff. 97r-102v. May to September 1643.

Both books also give details of receipts, but these have not been transcribed. This is a summary of receipts:

- Vernon: ff. 3r-4v. Mostly large amounts of money received from the central treasury in London, usually giving date and place received. Also includes some smaller amounts received from other sources.
- Fenton: ff. 4r-31v. Gives names of many individual people who contributed money, along with dates and places where money was received.

These documents are Public Records in Crown Copyright. The text is available under the [Open Government Licence](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

## Files

See [delimited text documentation](https://github.com/drgavinr/cc-by-data/blob/main/delimited-text.md) for more details of file formats.

- vernon-issues: issues of money by Francis Vernon, August 1642 to March 1644.
- fenton-issues: issues of money by John Fenton, May to September 1643. 

## Data structures

The delimited text files contain the same fields for both account books:

| Field name | Description |
| --- | --- |
| ID | Unique number to identify this row of data. |
| Markup | Codes representing the semantic structure of the document. These could be used to convert to XML, HTML, or wikitext, or to extract data into a database. See following section for more details of values. |
| Left column | Transcript of text entered in the left hand column of the manuscript pages. In Vernon's account, this usually includes a number for each entry. The meaning of these numbers is unknown. In both accounts, this column can also include other notes. |
| Main column | Transcript of the main text of the manuscript, except that where markup is 'pb', this column contains folio numbers, which were added later by archivists and are not part of the original text. |
| Pounds | The number of pounds for this entry. |
| Shillings | The number of shillings for this entry. |
| Pence | The number of pence for this entry. |

### Markup

The 'Markup' column contains these values:

| Value | Description |
| --- | --- |
| pb | page break. The value of 'Main column' gives the folio number. |
| head | Heading. These are usually dates. |
| open table | The start of a multi-row table. Includes the first row but no closer. Must have a matching 'close table' row later. 0 or more 'tr' rows can come in between. |
| tr | table row. A single row of a multi-row table without any opener or closer. |
| close table | the end of a multi-row table, including the last row and closer. Must have a matching 'open table' somewhere before it. |
| table (single row) | the whole of a table consisting of opener, one row, and closer. |
| p | paragraph of free text outside a table. |

## Transcription conventions

- original capitalization and punctuation retained
- original spelling retained except:
	- i/j and u/v silently modernized where used interchangeably
	- ff at the start of a word silently modernized to F
- abbrevations expanded in square brackets: p[ai]d
- inserted text: [^John^]
- deleted text: [del: paid to]
- one or more illegible words: [...]

## Important facts

Vernon's account provides strong and detailed evidence for the careers of individual officers and units in Essex's army. Some important facts may not be well known, and more widely used sources may be misleading. For example:

- The commander of the parliamentarian forces at the siege of Portsmouth in 1642 was Sir John Meldrum, not Sir William Waller. An entry for 2 September 1642 reads, 'p[ai]d S[i]r John Meldrum Commander in cheif of the forces befor Portsmouth for on months entertainm[en]t at 40s p[er] diem commencing 15 aug[us]t last' (f. 18r, row ID 478).
- Philip Skippon's regiment first appears in the account on 21 November 1642 (f. 38v, row IDs 1367 and 1368). The first mention of Skippon being paid as Major-General of Essex's army is in January 1642/3: 'p[ai]d major g[e]n[era]ll skippon for his pay as major g[e]n[era]ll of [th]e army for on mo[nth] beg[inning] 13 Ja[nuary] endinge [th]e 9 feb[ruary] at xls p[er] diem' (f. 51r, row ID 1969). He may have been paid earlier by Jessop, and the corresponding warrant may or may not have survived.
- Henry Billingsley was paid as Lieutenant-Colonel in Denzil Holles's foot regiment (f. 12v, row ID 276). By 27 August 1642 he had been moved sideways to become assistant to the Major-General (f. 28r, row ID 878). Nehemiah Wharton's letter gives a misleading impression that Billingsley was removed from the army as well as the regiment.
- There was no Colonel Fiennes in Essex's army in 1642. Nathaniel, John, and Francis were all paid only as captains of horse. Nathaniel is first given the rank of Colonel on 2 March 1642/3: 'p[ai]d Collonell nathaneel Fines uppon accompt when he went to ward glocester' (f. 54r, row ID 2105). Latest mentions as captain in 1642: Nathaniel, f. 46r, row ID 1733; John, f. 46r, row ID 1732; Francis, f. 44r, row ID 1690. This was already suggested by a contemporary printed list of army officers, but the account book is strongr evidence.


## Copyright

The original documents are Public Records in Crown Copyright. The text is available under the [Open Government Licence](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

The transcript provided here does not have its own copyright because it is an unoriginal copy of existing works.

Gavin Robinson may own database right in the files as a whole and the structure of the data. If any such rights subsist, they are waived under a CC-BY licence.
