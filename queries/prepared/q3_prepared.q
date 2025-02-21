b: .s.sq["select
	l_orderkey,
	sum(l_extendedprice * (1 - l_discount)) as revenue,
	o_orderdate,
	o_shippriority
	from
		customer,
		orders,
		lineitem
	where
		c_mktsegment = $1
		and c_custkey = o_custkey
		and l_orderkey = o_orderkey
		and o_orderdate < $2
		and l_shipdate > $3
	group by
		l_orderkey,
		o_orderdate,
		o_shippriority
    limit 10;"](0n;0n;0n);
\t r1:.s.sx[b](1;19950315;19950315)
\t r2:.s.sx[b](1;19950315;19950315)
\t r2:.s.sx[b](19930701;19930931)
\t r2:.s.sx[b](19930701;19930931)