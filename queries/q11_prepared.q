b:.s.sq["select
        *
    from (
        select
            ps_partkey,
            sum(ps_supplycost * ps_availqty) as value
        from
            partsupp,
            supplier,
            nation
        where
            ps_suppkey = s_suppkey
            and s_nationkey = n_nationkey
            and n_nationkey = $1
        group by
            ps_partkey
            ) as inner_query
    where
        value > (
        select
            sum(ps_supplycost * ps_availqty) * 0.0001
        from
            partsupp,
            supplier,
            nation
        where
            ps_suppkey = s_suppkey
            and s_nationkey = n_nationkey
            and n_nationkey = $1
        )
    limit 1;"](0n)
\t r1:.s.sx[b](enlist 7)
\t r1:.s.sx[b](enlist 7)