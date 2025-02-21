b:.s.sq["select
        supp_nation,
        cust_nation,
        l_year,
        sum(volume) as revenue
    from (
        select
            n1.n_nationkey as supp_nation,
            n2.n_nationkey as cust_nation,
            l_shipdate/10000 as l_year,
            l_extendedprice * (1 - l_discount) as volume
        from
            supplier,
            lineitem,
            orders,
            customer,
            nation n1,
            nation n2
        where
            s_suppkey = l_suppkey
            and o_orderkey = l_orderkey
            and c_custkey = o_custkey
            and s_nationkey = n1.n_nationkey
            and c_nationkey = n2.n_nationkey
            and (
                (n1.n_nationkey = $1 and n2.n_nationkey = $2)
                or (n1.n_nationkey = $2 and n2.n_nationkey = $1)
            )
            and l_shipdate between $3 and $4
            ) as shipping
    group by
        supp_nation,
        cust_nation,
        l_year;"](0n;0n;0n;0n);
\t r1:.s.sx[b](6;7;19950101;19961231)
\t r2:.s.sx[b](6;7;19950101;19961231)
\t r2:.s.sx[b](6;7;19950101;19961231)
\t r2:.s.sx[b](6;7;19950101;19961231)