select
  oid
, relname
, relnamespace
, reltype
, relowner
, relam
, relfilenode
, reltablespace
, relpages
, reltuples
, reltoastrelid
, reltoastidxid
, relhasindex
, relisshared
, relkind
, relnatts
, relexternid
, relisreplicated
, relispinned
, reldiststyle
, relprojbaseid
, relchecks
, reltriggers
, relukeys
, relfkeys
, relrefs
, relhasoids
, relhaspkey
, relhasrules
, relhassubclass
, relacl
from pg_catalog.pg_class