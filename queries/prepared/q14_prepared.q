b:.s.sq["select
        sum(case
        when (p_type >= $1 and p_type < $2)
        then l_extendedprice * (1 - l_discount)
        else 0.0
        end) * 100.0 / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
    from
        lineitem,
        part
    where
        l_partkey = p_partkey
        and l_shipdate >= $3
        and l_shipdate <= $4;"](0n;0n;0n;0n)
\t r1:.s.sx[b](125;150;19950901;19950931)
\t r1:.s.sx[b](125;150;19950901;19950931)