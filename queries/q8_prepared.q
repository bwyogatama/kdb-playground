b:.s.sq["select
        o_year,
        sum(case
        when nation = 1
        then volume
        else 0
        end) / sum(volume) as mkt_share
    from (
        select
        o_orderdate/10000 as o_year,
        l_extendedprice * (1 - l_discount) as volume,
        n2.n_nationkey as nation
    from
        part,
        supplier,
        lineitem,
        orders,
        customer,
        nation n1,
        nation n2,
        region
    where
        p_partkey = l_partkey
        and s_suppkey = l_suppkey
        and l_orderkey = o_orderkey
        and o_custkey = c_custkey
        and c_nationkey = n1.n_nationkey
        and n1.n_regionkey = r_regionkey
        and r_regionkey = $1
        and s_nationkey = n2.n_nationkey
        and o_orderdate between $2 and $3
        and p_type = $4
        ) as all_nations
    group by
        o_year;"](0n;0n;0n;0n)
\t r1:.s.sx[b](1;19950101;19961231;103)
\t r1:.s.sx[b](1;19950101;19961231;103)