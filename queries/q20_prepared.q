c: .s.sq["select
        l_partkey,
        l_suppkey,
        sum(l_quantity) * 0.5 as sum_l_quantity
    from
        lineitem
    where
        l_shipdate >= $1
        and l_shipdate <= $2
    group by
        l_partkey,
        l_suppkey;"](0n;0n)
\t r1:.s.sx[c](19940101;19941231)
\t r1:.s.sx[c](19940101;19941231)

d: .s.sq["select
            ps_suppkey
        from
            partsupp,
            r1 psl
        where
            ps_partkey = psl.l_partkey
            and ps_suppkey = psl.l_suppkey
            and ps_availqty > psl.sum_l_quantity;"](0n)
\t r2:.s.sx[d](enlist 0)
\t r2:.s.sx[d](enlist 0)

b: .s.sq["select
        s_name,
        s_address
    from
        supplier, nation, r2
    where
        s_suppkey = r2.ps_suppkey
        and s_nationkey = n_nationkey
        and n_nationkey = $1"](0n)
\t r3:.s.sx[b](enlist 3)
\t r3:.s.sx[b](enlist 3)


