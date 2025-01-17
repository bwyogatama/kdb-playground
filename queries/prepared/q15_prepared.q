b:.s.sq["select
        l_suppkey as supplier_no,
        sum(l_extendedprice * (1 - l_discount)) as total_revenue
    from
        lineitem
    where
        l_shipdate >= $1
        and l_shipdate <= $2
    group by
        l_suppkey;"](0n;0n)
\t r1:.s.sx[b](19960101;19960331)
\t r1:.s.sx[b](19960101;19960331)

c:.s.sq["select
        s_suppkey,
        s_name,
        s_address,
        s_phone,
        total_revenue
    from
        supplier,
        r1
    where
        s_suppkey = supplier_no
        and total_revenue = (
            select
                max(total_revenue)
            from
                r1
            );"](0n)
\t r2:.s.sx[c](enlist 0)
\t r2:.s.sx[c](enlist 0)