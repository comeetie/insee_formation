create table carpop as select cg.id, (regexp_replace(regexp_replace(cg.id, 'LAEA200M_N', ''),'E.*',''))::integer as i, (regexp_replace(regexp_replace(cg.id, 'LAEA200M_N', ''),'.*E',''))::integer as j,
	wkb_geometry, ind_c as pop from car_m as cg, carreaux as c where c.id=cg.id;


