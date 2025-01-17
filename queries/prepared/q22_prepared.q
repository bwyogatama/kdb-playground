b:.s.sq["select
        cntrycode,
        count(*) as numcust,
        sum(c_acctbal) as totacctbal
    from (
        select
            substr(c_phone, 1, 2) as cntrycode,
            c_acctbal
            from
            customer
        where
            substr(c_phone, 1, 2) in ('13', '31', '23')
        and c_acctbal > (
                select
                avg(c_acctbal)
            from
                customer
            where
                c_acctbal > $1
                and substr(c_phone, 1, 2) in ('13', '31', '23', '29', '30', '18', '17')
            )
        and not exists (
            select
                *
            from
                orders
            where
                o_custkey = c_custkey
        )
        ) as custsale
    group by
        cntrycode
    order by
        cntrycode;"](0n);
\t r1:.s.sx[b](enlist 0.00)
\t r2:.s.sx[b](enlist 0.00)