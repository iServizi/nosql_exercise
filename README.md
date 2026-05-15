Zadanie zaliczeniowe na ocenę 5 — Kafka + PostgresSQL + Neo4j
Cel.
Zaprojektowanie i implementacja prostego systemu przetwarzania zdarzeń bankowych w
architekturze strumieniowej.

Kod producer:  
   zadanie_na_5_producer.ipynb

Kod consumer A: 
   zadanie_na_5_consumer_A.ipynb

Kod consumer B: 
   zadanie_na_5_consumer_B.ipynb

Zapytania SQL tworzenie tabeli i template dla insert danych do PostgresSQL:
   create_table_transaction.sql
   insert_into_transaciton.sql

Dane do zadania:
   /data/transactions.json

Do uruchomienia projektu wykorzystany zostal conteiner(zawierajacy Kafka i PostgresSQL) z repozytorium zajec - https://github.com/kloosekdev/streaming_lab.git oraz dodatkowy container z grafowa baza danych Neo4j (w wersji 5) z rezpozytorium zajec - https://github.com/kloosekdev/nosql_lab.git, kod uruchomienia container Neo4j ponizej:
docker run -d \
   --name neo4j_streaming_lab \
   --network streaming_lab_default \
   -p 7474:7474 \
   -p 7687:7687 \
   -e NEO4J_AUTH=neo4j/test1234 \
   -e NEO4J_ACCEPT_LICENSE_AGREEMENT=yes \
   -e "NEO4J_PLUGINS=[\"graph-data-science\"]" \
   -e NEO4J_dbms_security_procedures_unrestricted=gds.* \
   -e NEO4J_dbms_security_procedures_allowlist=gds.* \
   -e NEO4J_server_memory_heap_initial__size=1G \
   -e NEO4J_server_memory_heap_max__size=1G \
   -e NEO4J_server_memory_pagecache_size=512M \
   -v nosql_lab_neo4j_data:/data \
   neo4j:5
