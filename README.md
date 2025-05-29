# draft-spaghetti-sidrops-rpki-erik-protocol

Work in progress repository for Internet-Draft draft-spaghetti-sidrops-rpki-erik-protocol

The draft specification of ERIK, a synchronisation protocol for use with
the Resource Public Key Infrastructure (RPKI).  The ERIK protocol can
be characterized as data replication scheme using a content-addressable
naming system with timestamp-based concurrency control transported over HTTP.
Relying Parties can combine information retrieved via ERIK with other RPKI
transport protocols. The protocol's design is intended to be efficient, fast,
and easy to implement.

## Editorial notes

In the XML use one sentence per line. This makes git diff review much easier.

## Usage

### Draft documents

The source files for the Internet-Draft documents are:

- `draft-spaghetti-sidrops-rpki-erik-protocol.xml`

To regenerate the text and HTML versions after making changes, run:

``` sh
make
```
