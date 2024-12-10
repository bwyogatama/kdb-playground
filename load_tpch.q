colnames:`L_ORDERKEY`L_PARTKEY`L_SUPPKEY`L_LINENUMBER`L_QUANTITY`L_EXTENDEDPRICE`L_DISCOUNT`L_TAX`L_RETURNFLAG`L_LINESTATUS`L_SHIPDATE`L_COMMITDATE`L_RECEIPTDATE`L_SHIPINSTRUCT`L_SHIPMODE`L_COMMENT
.Q.fs[{`lineitem insert flip colnames!("jjjjffffjjjjjjjs";"|")0:x}]`:lineitem.tbl

colnames:`O_ORDERKEY`O_CUSTKEY`O_ORDERSTATUS`O_TOTALPRICE`O_ORDERDATE`O_ORDERPRIORITY`O_CLERK`O_SHIPPRIORITY`O_COMMENT
.Q.fs[{`orders insert flip colnames!("jjjfjjjjs";"|")0:x}]`:orders.tbl

colnames:`P_PARTKEY`P_NAME`P_MFGR`P_BRAND`P_TYPE`P_SIZE`P_CONTAINER`P_RETAILPRICE`P_COMMENT
.Q.fs[{`part insert flip colnames!("jsjjjjjfs";"|")0:x}]`:part.tbl

colnames:`C_CUSTKEY`C_NAME`C_ADDRESS`C_NATIONKEY`C_PHONE`C_ACCTBAL`C_MKTSEGMENT`C_COMMENT
.Q.fs[{`customer insert flip colnames!("jssjsfjs";"|")0:x}]`:customer.tbl

colnames:`S_SUPPKEY`S_NAME`S_ADDRESS`S_NATIONKEY`S_PHONE`S_ACCTBAL`S_COMMENT
.Q.fs[{`supplier insert flip colnames!("jssjsfs";"|")0:x}]`:supplier.tbl

colnames:`PS_PARTKEY`PS_SUPPKEY`PS_AVAILQTY`PS_SUPPLYCOST`PS_COMMENT
.Q.fs[{`partsupp insert flip colnames!("jjffs";"|")0:x}]`:partsupp.tbl

colnames:`R_REGIONKEY`R_NAME`R_COMMENT
.Q.fs[{`region insert flip colnames!("jss";"|")0:x}]`:region.tbl

colnames:`N_NATIONKEY`N_NAME`N_REGIONKEY`N_COMMENT
.Q.fs[{`nation insert flip colnames!("jsjs";"|")0:x}]`:nation.tbl
