b:.s.sq["select
        c.c_custkey,
        count(o.o_orderkey) as order_count
    from
        customer c
    left outer join
        orders o on c.c_custkey = o.o_custkey
        and o.o_comment not like '%special%requests%'
    group by
        c.c_custkey;"](0n)
\t r1:.s.sx[b](enlist 0)
\t r1:.s.sx[b](enlist 0)

c:.s.sq["select
        order_count as c_count,
        count(*) as custdist
    from
        r1
    group by
        r1.order_count;"](0n)
\t r2:.s.sx[c](enlist 0)
\t r2:.s.sx[c](enlist 0)