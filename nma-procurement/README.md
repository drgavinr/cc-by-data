# New Model Army procurement records

Information about records of buying material for the New Model Army, which can be used for military history or business history.

See also [nma-at](https://github.com/drgavinr/cc-by-data/blob/main/nma-procurement/nma-at.md) for notes and references about the establishment of the artillery train.

## Contents

- [Introduction](#introduction)
- [The procurement process](#the-procurement-process)
- [Data for contracts, deliveries, and issues](#data-for-contracts-deliveries-and-issues)
  - [Fields](#fields)
- [Warrants and receipts for payments](#warrants-and-receipts-for-payments)
- [Copyright](#copyright)

## Introduction

The process of procuring equipment for the New Model Army from 1645 onwards has left detailed records that can be used to reconstruct transactions between suppliers, mostly in London, and military administrators. This is obviously relevant to military history but also has potential value for business history. The records can show what trade a business owner was actually practising. This can often be obscure for two reasons. First, women were usually described by their marital status even when they owned and ran businesses in their own right. Second, although men often had occupational descriptors, these can be misleading, especially in London, because it is not always clear whether a descriptor refers to actual trade or livery company membership, which were increasingly different things in the early-modern period.

In some cases, enough records survive to reconstruct a whole transaction from contract to delivery to payment. The contracts sometimes give detailed descriptions of the items to be supplied as well as the quantities and prices. When linked to deliveries and payments, they can show how quickly a business was able to fulfil a contract and how long they had to wait for payment.

The commodities covered are not purely military. The army was also supplied with clothing, footwear, saddles, horse harness, wagons, nails, grease, and various tools, boxes, and bags.

## The procurement process

Supply of equipment for the New Model Army was administered by the Army Committee and the Ordnance Office. The process usually started with a contract between the supplier and the Army Committee. The Army Committee notified the Ordnance Office of contracts that had been made, and this seems to be how some contracts have survived to the present. The supplier delivered the goods to the Ordnance Office, which kept accounts of deliveries. The surviving accounts of deliveries are probably a complete record for the ranges of dates covered. Payment was authorized by warrants signed by the Army Committee and directed to the treasury. When a payment was made, a receipt was written on the same sheet of paper as the warrant. Warrants that had been paid in full were retained by the treasury, and most survive.

The Ordnance Office kept equipment until it was needed by the army. Issues of equipment were authorized by warrants signed by the Army Committee and directed to the Ordnance Office. The Ordnance Office copied warrants and receipts for issues into books, some of which survive. The surviving copies sometimes name individual troopers who received saddles and pistols.

## Data for contracts, deliveries, and issues

The data provided here catalogues manuscript volumes that record contracts, deliveries, and issues from 1645 onwards. There may be other relevant volumes that are not listed here. This is only a catalogue at volume level. Individual entries have not been transcribed or linked into records of transactions.

Where volumes overlap, they sometimes disagree on details of the same transactions, especially dates.

Records of deliveries are probably complete for the ranges of dates covered.

See [delimited text documentation](https://github.com/drgavinr/cc-by-data/blob/main/delimited-text.md) for more details of file formats.

### Fields

| Field Name | Description |
| --- | --- |
| GLAM | The archive that holds the original document |
| Reference | Catalogue reference of the document |
| Sort | Sort key based on the GLAM and reference |
| From | Earliest date covered (New Model Army records only: some volumes may cover other armies from earlier dates). Format YYYY-MM-DD. Precision varies. 'JL' means Julian calendar. |
| To | Latest date covered. Format YYYY-MM-DD. Precision varies. 'JL' means Julian calendar. |
| Contracts | Y if this volume includes contracts, N if it doesn't |
| Deliveries | Y if this volume includes deliveries, N if it doesn't |
| Issues | Y if this volume includes issues, N if it doesn't |
| CatalogueURL | URL of catalogue record for this volume in the GLAM's online catalogue |
| Description | Free text giving more information about the document |

## Warrants and receipts for payments

Warrants for payment signed by the Army Committee are in a separate series in TNA, SP 28. These are catalogued by monthly subseries in the [pay warrant dataset](https://github.com/drgavinr/cc-by-data/tree/main/army-pay/warrants). Individual warrants and receipts have not been catalogued or transcribed.

## Copyright

Includes Crown Copyright data from TNA's catalogue, available under the [Open Government Licence](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

Gavin Robinson holds database right in the whole file and the structure of the data, and copyright in the documentation. These rights are waived under CC-BY.
