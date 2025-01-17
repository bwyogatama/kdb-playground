b:.s.sq["select
        p_brand,
        p_type,
        count(distinct ps_suppkey) as supplier_cnt,
        p_size
    from
        partsupp,
        part
    where
        p_partkey = ps_partkey
        and p_brand <> $1
        and (p_type < $2 or p_type >= $3)
        and p_size in (49, 14, 23, 45, 19, 3, 36, 9)
        and ps_suppkey not in (
            select
                s_suppkey
            from
                supplier
            where
                s_comment like '%Customer%Complaints%'
            )
    group by
        p_brand,
        p_type,
        p_size"](0n;0n;0n)
\t r1:.s.sx[b](45;65;70)
\t r1:.s.sx[b](45;65;70)