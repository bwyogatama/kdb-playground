c: .s.sq["select
        ps_partkey,
        min(ps_supplycost) as min_supplycost
    from
        partsupp ps
    join
        supplier s on ps.ps_suppkey = s.s_suppkey
    join
        nation n on s.s_nationkey = n.n_nationkey
    join
        region r on n.n_regionkey = r.r_regionkey
    where
        r.r_name = $1
    group by
        ps_partkey"](0n)

\t r1:.s.sx[c](enlist `EUROPE)
\t r1:.s.sx[c](enlist `EUROPE)

b: .s.sq["select
        s.s_acctbal,
        s.s_name,
        n.n_name,
        p.p_partkey,
        p.p_mfgr,
        s.s_address,
        s.s_phone,
        s.s_comment
    from
        part p
    join
        partsupp ps on p.p_partkey = ps.ps_partkey
    join
        supplier s on s.s_suppkey = ps.ps_suppkey
    join
        nation n on s.s_nationkey = n.n_nationkey
    join
        region r on n.n_regionkey = r.r_regionkey
    join
        r1 msc on ps.ps_partkey = msc.ps_partkey and ps.ps_supplycost = msc.min_supplycost
    where
        p.p_size = $1
        and (p.p_type + 3) % 5 = $2
        and r.r_name = $3
    limit 200;"](0n;0n;0n)

\t r2:.s.sx[b](15;0;`EUROPE)
\t r2:.s.sx[b](15;0;`EUROPE)
