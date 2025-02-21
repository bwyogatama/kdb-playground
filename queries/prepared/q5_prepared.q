b: .s.sq["select
        n_name,
        sum(l_extendedprice * (1 - l_discount)) as revenue
    from
        customer,
        orders,
        lineitem,
        supplier,
        nation,
        region
    where
        c_custkey = o_custkey
        and l_orderkey = o_orderkey
        and l_suppkey = s_suppkey
        and c_nationkey = s_nationkey
        and s_nationkey = n_nationkey
        and n_regionkey = r_regionkey
        and r_regionkey = $1
        and o_orderdate >= $2
        and o_orderdate <= $3
    group by
        n_name;"](0n;0n;0n);
\t r1:.s.sx[b](2;19940101;19941231)
\t r2:.s.sx[b](2;19940101;19941231)
\t r2:.s.sx[b](2;19940101;19941231)
\t r2:.s.sx[b](2;19940101;19941231)