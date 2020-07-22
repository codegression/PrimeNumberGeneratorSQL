SELECT * FROM
(
	SELECT 
	(
		(
			(
				(
					(
						(
							(
								(
									(
										(
											(
												(n << 1 | m) << 1 | l
											)
											<< 1 | k
										) 
										<< 1 | j
									) 
									<< 1 | i
								)
								<< 1 | h
							)
							<< 1 | g
						)
						<< 1 | f
					)
					<< 1 | e
				)
				<< 1 | d
			)
			<< 1 | c
		)
		<< 1 | b
	)
	<< 1 | a AS number
	FROM 
		 (SELECT 0 a UNION SELECT 1) as a_,
		 (SELECT 0 b UNION SELECT 1) as b_,
		 (SELECT 0 c UNION SELECT 1) as c_,
		 (SELECT 0 d UNION SELECT 1) as d_,
		 (SELECT 0 e UNION SELECT 1) as e_,
		 (SELECT 0 f UNION SELECT 1) as f_,
		 (SELECT 0 g UNION SELECT 1) as g_,
		 (SELECT 0 h UNION SELECT 1) as h_,
		 (SELECT 0 i UNION SELECT 1) as i_,
		 (SELECT 0 j UNION SELECT 1) as j_,
		 (SELECT 0 k UNION SELECT 1) as k_,
		 (SELECT 0 l UNION SELECT 1) as l_,
		 (SELECT 0 m UNION SELECT 1) as m_,
		 (SELECT 0 n UNION SELECT 1) as n_	
) as temp
WHERE
	number>=2 AND number<=10000 AND NOT EXISTS
(
	SELECT *	
	FROM
	(
		SELECT z*1000+y*100+x*10+w as var 
		FROM
		(
			(
				SELECT 0 w UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
			) A,
			(
				SELECT 0 x UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
			) B,
			(
				SELECT 0 y UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
			) C,
			(
				SELECT 0 z UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
			) D
		)
	) as sub 
	WHERE var>=2 AND var<=number/2 AND MOD(number, var)=0 LIMIT 1
)
