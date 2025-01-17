c: .s.sq["select
        l_orderkey
    from
        lineitem
    where
        l_commitdate < l_receiptdate
    group by
        l_orderkey;"](0n)

\t r1:.s.sx[c](enlist 0)
\t r1:.s.sx[c](enlist 0)

b: .s.sq["select
        o.o_orderpriority,
        count(*) as order_count
    from
        orders o
    join
        r1 vli ON o.o_orderkey = vli.l_orderkey
    where
        o.o_orderdate >= 19930701
        and o.o_orderdate <= 19930931
    group by
        o.o_orderpriority
    order by
        o.o_orderpriority;"](0n;0n)

\t r2:.s.sx[b](19930701;19930931)
\t r2:.s.sx[b](19930701;19930931)
