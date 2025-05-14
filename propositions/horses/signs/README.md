# London building signs

## Contents

- [Introduction](#introduction)
- [Data](#data)
- [Copyright](#copyright)

## Introduction

This data catalogues buildings in London that were known by signs, such as 'The White Bear'. These signs could identify almost any kind of business premises and were not limited to drinking establishments. The names of the building signs are taken from the [Propositions horse accounts](https://github.com/drgavinr/cc-by-data/tree/main/propositions/horses) in TNA, SP 28/131. Only the signs are given here, but the references can be used to find names of occupiers in the transcripts of the horse accounts. In all, 249 signs are listed here. More might be found in other sources, but this dataset provides what might as well be a random sample, as there is no reason to believe that selection bias affects the sign names, even though they are taken from a dataset that is not a random sample of people.

## Data

See [delimited text documentation](https://github.com/drgavinr/cc-by-data/blob/main/delimited-text.md) for more details of file formats.

All spellings are silently modernized. Original spellings can be found in the [Propositions horse accounts](https://github.com/drgavinr/cc-by-data/tree/main/propositions/horses) in TNA, SP 28/131.

| Field name | Description |
| --- | --- |
| Sign | The name of the sign. In the original manuscript and in normal usage these are usually prefixed with 'The' but this is omitted here. |
| InOrNear | An address given in the manuscript that the building is in or near. Usually a street, but in a few cases it can be a parish, a settlement, or another building. |
| Settlement | Settlement that the building is in. Nearly always London (here defined slightly more broadly than the City) but sometimes Southwark, Westminster, or another named suburb. |
| AddrKey | A unique key composed of all components of the name. These matched page names at the By The Sword Linked wiki, which no longer exists. |
| Ref | Full archival references for mentions of this building. Can include multiple volumes, and multiple folios within the same volume. |

## Copyright

Data derived from manuscripts which are Public Records in Crown Copyright. The text is available under the [Open Government Licence](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

Gavin Robinson holds database right in the whole file and its structure, and copyright in the documentation. These rights are waived under CC-BY.
