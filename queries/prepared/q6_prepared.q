b: .s.sq["select
 	sum(l_extendedprice * l_discount) as revenue
	from
		lineitem
	where
	l_shipdate >= $1
	and l_shipdate <= $2
	and l_discount between $3 and $4
	and l_quantity < $5;"](0n;0n;0n;0n;0n)

\t r2:.s.sx[b](19940101;19941231;0.05;0.07;24)
\t r2:.s.sx[b](19940101;19941231;0.05;0.07;24)
\t r2:.s.sx[b](19940101;19941231;0.05;0.07;24)