Percona Server for MongoDB 3.2
==============================

Setup
-----

-   Client (sysbench-mongodb) and server are on different servers, connected via 10Gb network.
-   CPU: 56 logical CPU threads servers Intel(R) Xeon(R) CPU E5-2683 v3 @ 2.00GHz
-   sysbench 8 tables x 60mln rows, uniform distribution
-   OS: Ubuntu 16.04 (Xenial Xerus)
-   Kernel 4.4.0-21-generic
-   Storage devices
-   Samsung SM863 SATA SSD, single device, with ext4 filesystem
-   Samsung 850 PRO SATA SSD, single device, with ext4 filesystem
-   Samsung PM 1725 NVMe SSD, single device

Results
=======

=============

Read-only
=========

RO, cachesize vary
------------------

### Samsung 850

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-1-1.png)

RO, threads vary
----------------

### Samsung 850

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-2-1.png)

RO, cachesize vary
------------------

### Samsung 863

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-3-1.png)

RO, Threads 1-1000 in memory (cachesize 200GB)
----------------------------------------------

### Samsung 863

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-4-1.png)

Read-Writes
===========

RW, cachesize vary
------------------

### Samsung 850

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-5-1.png) ![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-5-2.png)

RW, cachesize vary
------------------

### Samsung 863

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-6-1.png) ![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-6-2.png)

Read-Write, threads
===================

RW, Threads 1-1000 in memory (cachesize 200GB)
----------------------------------------------

### Samsung 863

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-7-1.png)

RW, Threads 1-1000 io bound (cachesize 20GB)
--------------------------------------------

### Samsung 863

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-8-1.png) ![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-8-2.png)

### RW, Threads 112 io bound (cachesize 20GB)

-   Samsung 863

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-9-1.png)

RW, Threads 1-1000 in memory (cachesize 200GB)
----------------------------------------------

### Samsung 850

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-10-1.png)

RW, Threads 1-300 io-bound (cachesize 20GB)
-------------------------------------------

### Samsung 850

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-11-1.png)

RW, Threads 1-1000 in memory (cachesize 200GB)
----------------------------------------------

### Samsung PM1725

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-12-1.png)

RW, Threads 1-300 io-bound (cachesize 20GB)
-------------------------------------------

### Samsung pm1725

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-13-1.png) ![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-13-2.png)

RW, Threads 1-1000 in memory (cachesize 200GB)
----------------------------------------------

### Samsung storage

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-14-1.png)

RW, Threads 1-1000 iobound (cachesize 20GB)
-------------------------------------------

### Samsung storage

![](summary-OLTP-mongo_files/figure-markdown_github/unnamed-chunk-15-1.png)

-   Charts examples

\*RO, memory scale

\*RocksDB, compession
