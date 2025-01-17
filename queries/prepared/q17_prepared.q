c: .s.sq["select
        l_partkey,
        avg(l_quantity) * 0.2 as avg_quantity
    from
        lineitem
    group by
        l_partkey"](0n)
\t r1:.s.sx[c](enlist 0)
\t r1:.s.sx[c](enlist 0)

b:.s.sq["select
            sum(l.l_extendedprice) / 7.0 as avg_yearly
        from
            lineitem l,
            part p,
            r1 aq
        where
            p.p_partkey = l.l_partkey
            and l.l_partkey = aq.l_partkey
            and p.p_brand = $1
            and p.p_container = $2
            and l.l_quantity < aq.avg_quantity;"](0n;0n)
\t r2:.s.sx[b](23;17)
\t r2:.s.sx[b](23;17)