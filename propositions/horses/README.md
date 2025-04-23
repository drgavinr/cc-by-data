# Propositions horse accounts

Transcripts of account books listing horses and arms contributed on the Propositions in London and elsewhere.

## Contents

- [Original manuscripts](#original-manuscripts)
- [Files](#files)
- [Transcription conventions](#transcription-conventions)
- [XML tags](#xml-tags)
- [Copyright](#copyright)


## Original manuscripts

The data is taken from three manuscript account books in TNA, SP 28/131.

- [SP 28/131/3](https://discovery.nationalarchives.gov.uk/details/r/C8117935): cavalry horses for Essex's army, June 1642 to June 1643.
- [SP 28/131/4](https://discovery.nationalarchives.gov.uk/details/r/C8117936): dragoon and draught horses for Essex's army, October 1642 to July 1643.
- [SP 28/131/5](https://discovery.nationalarchives.gov.uk/details/r/C8117937): cavalry horses for London Militia, October 1642 to July 1643.

All three accounts record horses and equipment received by commissaries John Smith and Thomas Richardson. Commissaries were relatively junior administrative officers. Although they could handle large amounts of money and material, they did not have the powers or prestige of commissioners.

These accounts are all fair copies submitted to the Committee for Taking Accounts of the Whole Kingdom in 1644. The originals are not known to survive. SP 28/131/3 includes some annotations referring to waste books from which it was copied.

The surviving copies can contain scribal errors where a letter is subsitituted for another letter that looks similar but sounds different. For example:

- SP 28/131/3, ff. 8r, 12v, 129v: mention horses owned by 'Augustine Fuller' of the Red Bull in Thames Street, near Dyers' Hall (haberdasher in the first two entries, and brewer in the third). A compounding case mentions that Augustine Futter was tenant of the Red Bull brewhouse in Thames Street ([CCC, volume 2, p. 983](https://babel.hathitrust.org/cgi/pt?id=mdp.39015066345532&seq=167)). Augustine Futter also appears in the records of the Haberdashers' Company. He must have been a member of this company while actually trading as a brewer.
- SP 28/131/4, f. 30v: 'S[i]r Daniell Derbine kn[igh]t listed one sorrell bald nag'. The same horse appears in a compounding case, where the owners surname is correctly spelt 'Deligne' (TNA, SP 23/184, ff. 678, 687; [CCC, volume 2, p. 1143](https://babel.hathitrust.org/cgi/pt?id=mdp.39015066345532&seq=327)).

The entries usually give names of owners, often with address and/or status, detailed descriptions of horses, lists of equipment, and total value for horses and equipment. Sometimes riders' names are given. Where the status is an occupational descriptor, especially in London, this may be actual trade or guild/company membership, which were often not the same thing. When prefixed with 'Citizen and', it definitely refers to London livery company membership, which was not necessarily the same as actual trade. Addresses are almost certainly the owner's usual place of residence. This is not necessarily the same as where the owner listed the horse.

Some lists compiled by local commissaries outside London are inserted in Smith and Richardson's account books but are clearly separated from the main lists and give the names of the local commissaries who collected the horses. These sublists are:

- SP 28/131/3:
	- ff. 45v-48v: Buckinghamshire, 11-13 August 1642, collected by Thomas Sanders and Thomas Westall, delivered to Arthur Goodwin's regiment.
	- ff. 99r-99v: city of Gloucester, 16 September 1642, collected by William Singleton and Thomas Pury (Deputy Lieutenants), delivered to Captain Robert Kyrle.
	- ff. 121r-121v: Oxfordshire, 1 October 1642, collected by John Luchocke, George Blunt, and Anthony Leycester, delivered to Viscount Saye and Seale.
- SP 28/131/4:
	- ff. 8r-9r: Colchester, Essex, 1 November 1642, collected by the Mayor.
	- ff. 20v-24r: Holland, Lincolnshire, 7 November 1642, collected by the Mayor and aldermen of Boston, delivered to Earl of Essex at Northampton.
	- ff. 43r-45r: Watford, Hertfordshire, 25 November 1642, collected by Daniell Marvell and John Grey.

Patterns in addresses suggest that many other local lists may have been silently merged with the main lists in the account books. There are also some ambiguous cases with a heading for a place outside London but no local commissaries are identified. These have not been treated as sublists.

The account books include original indexes, which have not been transcribed:

- SP 28/131/3, ff. 136-151.
- SP 28/131/4, ff. 64-71.
- SP 28/131/5 has no index.

SP 28/131/4, ff. 54-60 are related documents such as receipts and certificates bound into the account book. These have not been transcribed.

The original manuscripts are Public Records in Crown Copyright. The text is available under the [Open Government Licence](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

## Files

'sp28-131.xml' contains a transcript of all three account books, marked up with XML.


## Transcription conventions

This is a full transcript of the horse accounts except that some repeated standard phrases, such as 'by the commissaries', are omitted. Contemporary indexes have not been transcribed.

- original spelling, punctuation, and capitalization are retained, except that:
    - i/j and u/v are silently modernized where used interchangably.
    - ff at the start of a word is silently modernized to F.
- abbreviations are expanded in square brackets. Expansions are not marked up with XML.
- uncertain words: [?word?] (not marked up with XML).

All other features represented are marked up with XML tags.

## XML tags

The XML tags were invented for this text but are similar to TEI.

After using this XML in my own research, I rearranged some of the tags to make it easier to convert names into wikilinks. This had led to some illogical and inconsistent nesting of tags. The XML is still well formed.

- **texts** root element containing all other tags.
    - **account** the whole of each manuscript account book. @ref is the archival reference.
        - **page** one side of a physical folio in the manuscript.  @ref is the archival reference. @sublist is present if this page contains part of a sublist from local commissaries; the attribute value is the place where the sublist came from.
            - **p** a paragraph of free text. Some text marked up as a paragraph may be semantically closer to a heading, but this XML only represents one level of heading.
                - **date** text that represents a date. Tag contents are the original text. @when is the date in a regularized form: YYYY-MM-DD. All dates are in the Julian calendar.
                - **name** a name of any kind of entity within a paragraph of free text. These do not have any attributes. Some may be original signatures but this is not indicated in the XML. Names in contexts other than free text paragraphs are marked up differently. See children of **entry**.
                - **ul** list.
                    - **li** list item. Can contain **name**.
                - **add** addition to the text of the manuscript. Can be nested in almost any tag.
                - **del** deleted text. Can be nested in almost any tag.
                - **gap** gap in the text. Same as TEI gap element. @reason is human-readable explanation for the gap. @extent is human-readable description of the size of the gap. Can be nested in almost any tag.
            - **head** a heading in the manuscript. These usually contain dates. Only one level of heading is marked up. Some text that is semantically a lower level of heading may be marked up as a paragraph (using **p**) after a heading.
                - **date** (see above)
            - **table** a group of entries in a page of an account book. In the original manuscript these usually have four columns: entry text, pounds, shillings, pence. SP 28/131/5 has five columns, the first of which uses the **under** tag. The subsequent four columns in this book are the same as in the other books.
                - **entry** one entry in the account. Corresponds to one table row. @f is folio number. @id is a unique identifier for this entry. @when is date of the entry in YYYY-MM-DD form, always in the Julian calendar.
                    - **under** the captain to whom the horses in this entry were assigned. Only used in SP 28/131/5.
                    - **owner** one named individual who owned a listed horse. If an entry has multiple named individual owners, each is tagged separately. @id is a unique identifier for each instance of the tag, not for the owner it refers to. @key is a key used to link the same owner in multiple entries, in form "Surname, Forename (status, address)". Assumed the same person if name, status, and address match (allowing for variation in spellings). Where the name matches but status and/or address are unstated, name keys may be qualified with numbers. Some different keys may refer to the same person but did not meet the criteria for a strong match. Some place names in owner keys may not match the keys in the related **address** tag because place identification for addresses has been redone recently, but person linkage hasn't.
                        - **forename** owner's forename.
                        - **surname** owner's surname.
                    - **gen** text signifying a generation, such as 'senior' or 'junior' (may sometimes be nested in **owner** but more usually found outside).
                    - **status** text signifying any status or title before or after an owner's name. This includes peerages, knighthoods, MPs, occupational descriptors (which can be actual trade and/or company membership), marital status, military ranks and anything similar (may sometimes be nested in **owner** but more usually found outside). Can refer to more than one owner in the same entry, but the nesting of XML tags does not make this explicit.
                    - **address** the address of an owner. Not usually nested inside **owner** tags, and may refer to more than one owner in the same entry, but the nesting of XML tags does not make this explicit. @id is a unique identifier for each instance of the tag, not for the address it refers to. @key is used to link addresses that have been identified. @couldbe links addresses that are less certainly identified. Both @key and @couldbe can contain multiple values separated by a semi-colon. Values matched page names at the By The Sword Linked wiki, which no longer exists. @CtyStrong is the county that contains the address where this is explicitly stated in the entry. Values are abbreviated and do not match any external identifiers. @CtyWeak includes counties inferred by identifying place names or from context in the manuscript. Street addresses are usually assumed to be in London. @CtyWeak can differ from @CtyStrong if the county explicitly given is judged to be a scribal error. Values for @CtyWeak matched page names at the By The Sword Linked wiki, which no longer exists. Address components are futher marked up with these tags, which are only used if a component explicitly occurs in the manuscript:
                        - **bldg** building.
                        - **street** street.
                        - **sett** settlement of any size. A place name on its own is usually assumed to refer to a settlement and not to a parish of the same name unless the word 'parish' is explicitly used in the manuscript.
                        - **parish** parish. Used only where the manuscript explicitly gives a parish.
                        - **hund** hundred. Used only where the manuscript explicitly gives a hundred or similar administrative unit.
                        - **cty** county.
                    - **owners** text referring to a group of owners who listed a horse together but are not named individually. Text referring to the owners may be marked up as **name** if it is a specific named entity such as a livery company. If it refers to the inhabitants of a place, the place name should be marked up as **address** (see above) but there should be no other tags.
                    - **horses** contains horses, riders, and equipment listed in this entry. @num is total number of horses in this entry as an integer. Text descriptions of individual horses are direct contents of this tag and are not marked up any further.
                        - **rider** one rider of a horse. @id is a unique identifier for this rider within this dataset but does not correspond to any external identifiers. Some riders are named, others are just described as 'rider'. In either case, the text is the contents of this tag and there are no further nested tags for name components.
                        - **equ** text describing all equipment listed in this entry. No attributes or nested tags.
                    - **money**  value of the horses and equipment in this entry. @dec is the amount in decimalized form.
                        - **pounds** the amount of pounds as written in the second column of the table.
                        - **shillings** the amount of shillings as written in the third column of the table.
                        - **pence** the amount of pence as written in the fourth column of the table. Usually 0.


## Copyright

The original manuscripts are Public Records in Crown Copyright. The text is available under the [Open Government Licence](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

The transcript provided here does not have its own copyright because it is an unoriginal copy of existing works.

No rights are believed to subsist in the structure of the XML tags. If any such rights do subsist, they are waived under a CC-BY licence.

Gavin Robinson holds copyright in this documentation. This right is waived under CC-BY.
