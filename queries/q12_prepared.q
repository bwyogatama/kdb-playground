b:.s.sq["select
        l_shipmode,
        sum(case
            when o_orderpriority = 0 or o_orderpriority = 1
            then 1
            else 0
        end) as high_line_count,
        sum(case
            when o_orderpriority <> 0 and o_orderpriority <> 1
            then 1
            else 0
        end) as low_line_count
        from
            orders,
            lineitem
        where
            o_orderkey = l_orderkey
            and l_shipmode in ($1, $2)
            and l_commitdate < l_receiptdate
            and l_shipdate < l_commitdate
            and l_receiptdate >= $3
            and l_receiptdate <= $4
        group by
            l_shipmode;"](0n;0n;0n;0n)
\t r1:.s.sx[b](4;6;19940101;19941231)
\t r1:.s.sx[b](4;6;19940101;19941231)