# James Sheffeild's troopers

## Introduction

James Sheffeild was a younger son of the Earl of Mulgrave. He was commissioned as a captain of horse in the Earl of Essex's army in 1642, and promoted to colonel in July 1643. He continued to serve until the army was reduced into the New Model Army in 1645, when his brother, Thomas, succeeded him as colonel. James's financial accounts (TNA, SP 28/140/15) were submitted and examined in 1646. They include lists of ordinary troopers in his troop.

The data provided here gives the names of troopers listed in Sheffeild's accounts.

## Files

- sheffeild-account.txt: a plain text transcript of part of the account giving details of Sheffeild's own career and the lists of troopers' names.
- sheffeild-issues: delimited text files containing structured data derived from the above lists of troopers in Sheffeild's account.
- sheffeild-enlistments: delimited text files containing structured data derived from the [Propositions horse account](https://github.com/drgavinr/cc-by-data/tree/main/propositions/horses) where entries have riders' names that match troopers listed in Sheffeild's account.

See [delimited text documentation](https://github.com/drgavinr/cc-by-data/blob/main/delimited-text.md) for more details of file formats.

## Account transcript

sheffeild-account.txt is a transcript of TNA, SP 28/140/15, ff. 382-388. This includes a certificate of James Sheffeild's own service as an officer, and lists of names of troopers who were issued with horses and equipment. The transcript omits ff. 372-381, which include an account of salary received and disbursed.

### Transcription conventions

- Original spelling is retained except that i/j and u/v are silently modernized where used interchangeably and ff at the start of a word is silently modernized to F.
- Original punctuation is retained. No punctuation has been added.
- Original capitalization is retained.
- Abbreviations are expanded in square brackets.
- Some gaps are supplied in square brackets where the word can be confidently inferred.
- Uncertain words: [?word?]
- Insertions: [^word^]
- Page breaks: [f. 383r]


### Dates and places

The first list (f. 383r) names all 60 troopers of the original troop in summer 1642, divided into 3 squadrons.

The remaining lists name troopers who received replacement horses or equipment. Places are given but dates are not and must be inferred from the places. The lists were not necessarily written in date order, and the folios are not necessarily in their original order.

f. 383r: 'Inpri[mis] received twenty horse at Brickhills, which [?were?] raysed in Sussex by an especiall order, and brought to mee furnisht, and arm[e]d'. Almost certainly July 1643, when the army quartered at Great Brickhill, Buckinghamshire, after retreating from Thame.

f. 388r: 'It[e]m received from the Megasine, of the Tower, by my Capt[ain] Leiutenant, thirty case of pistols, backs, brests and pots, together with as many sadles, and their furniture, which were brought to my troope att Wyndsor then quartering'. There are many times when the troop could have quartered at Windsor. The most likely is in the winter of 1642-43, when the army was in winter quarters there. All of the names of troopers who received this issue match original troopers, which also suggests an early date.

f. 388r: 'It[e]m received one other recruite of horse, being [...] by appointment of the Commissaries above na[med] from Styles and Conway at Islington, [to]gether [with] armes for the like number which were brought to Beaconsfield'. Probably spring 1644, when the army bought 1,000 troop horses from dealers in Smithfield, including John Styles and Harvey Conway.

f. 388r: 'It[e]m received sixe [^case^] of Pistols, before Basing howse'. Possibly autumn 1644.

## Issues

sheffeild-issues: delimited text files giving data from the above transcript in a structured form.


| Field name | Description |
| --- | --- |
| ID | Unique number to identify this trooper.|
| Squadron | The number of the squadron that the trooper served in if listed in the original troop in 1642.|
| Position | If the trooper has a squadron number, this field gives the number of his position in the list for that squadron. Probably has no meaning but helps to locate the names in the original manuscript.|
| Key | The trooper's name in Surname, Forname order, sometimes with qualifiers in brackets. Unique in this file.|
| AltSpelling | Alternative spellings of trooper's name. |
| Windsor, Brickhill, Islington, Basing | Four columns, one for each of the replacement issues list. Named after the place where the issues were received. In each case the value is a 3-digit number: the first digit shows the column in the list in which the name appears; the rest is the position within that column, zero-filled to 2 digits. Only has a value if the name appears in that list, otherwise blank.|

## Enlistments

sheffeild-enlistments: delimited text files giving data extracted from [Propositions horse account](https://github.com/drgavinr/cc-by-data/tree/main/propositions/horses) (TNA, SP 28/131/3) where riders' names match original troopers' names in Sheffeild's account. This gives an enlistment date and details of the horse and its owner.

In two cases (Gregory Short and John Hall), there are two possible matches in the Propositions list for one trooper in Sheffeild's account. Both matches are included here.

| Field name | Description |
| --- | --- |
| ID | Numeric ID that matches ID field in sheffeild-issues. Not unique in sheffeild-enlistments because of names with 2 possible matches.|
| Key | String that matches Key ld in sheffeild-issues. Not unique in sheffeild-enlistments because of names with 2 possible matches.|
| EnlDate | Enlistment date in form YYYY-MM-DD.|
| From | County or city based on owner's address. |
| EntryFolio | Folio of relevant entry in TNA, SP 28/131/3. |
| EntryID | Value of @id in [Propositions horse account XML](https://github.com/drgavinr/cc-by-data/tree/main/propositions/horses).|
| EntryText | Text of relevant entry in TNA, SP 28/131/3. |

## Copyright

The original manuscripts are Public Records in Crown Copyright. The text is available under the [Open Government Licence](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

The transcript provided here does not have its own copyright because it is an unoriginal copy of existing works.

Gavin Robinson holds database right in the data structures and copyright in this documentation. These rights are waived under a CC-BY licence.
