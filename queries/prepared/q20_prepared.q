b: .s.sq["select
        s_name,
        s_address
    from
        supplier, nation
    where
        s_suppkey in (
        select
            ps_suppkey
        from
            partsupp
        where
            ps_partkey in (
            select
                p_partkey
            from
                part
            where
                p_name like 'forest%'
            )
            and ps_availqty > (
                select
                    sum(l_quantity) * 0.5
                from
                    lineitem
                where
                    l_partkey = ps_partkey
                    and l_suppkey = ps_suppkey
                    and l_shipdate >= 19940101
                    and l_shipdate <= 19941231
            )
        )
        and s_nationkey = n_nationkey
        and n_nationkey = $1
    order by
        s_name;"](0n)
\t r1:.s.sx[b](enlist 3)
\t r2:.s.sx[b](enlist 3)


