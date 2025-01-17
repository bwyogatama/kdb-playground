c: .s.sq["select
            l_orderkey,
            sum(l_quantity) as quant
        from
            lineitem
        group by
            l_orderkey"](0n)
\t r1:.s.sx[c](enlist 0)
\t r1:.s.sx[c](enlist 0)

d: .s.sq["select
            l_orderkey
        from
            r1
        where
            quant > $1"](0n)
\t r2:.s.sx[d](enlist 300)
\t r2:.s.sx[d](enlist 300)

b:.s.sq["select
        c_name,
        c_custkey,
        o_orderkey,
        o_orderdate,
        o_totalprice,
        sum(l.l_quantity)
    from
        customer,
        orders,
        lineitem l,
        r2 temp
    where
        o_orderkey = temp.l_orderkey
        and c_custkey = o_custkey
        and o_orderkey = l.l_orderkey
    group by
        c_name,
        c_custkey,
        o_orderkey,
        o_orderdate,
        o_totalprice;"](0n)
\t r3:.s.sx[b](enlist 0)
\t r3:.s.sx[b](enlist 0)