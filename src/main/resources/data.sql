-- City
INSERT INTO city (name, latitude, longitude) VALUES ('Manaus',         -3.101944,  -60.025);
INSERT INTO city (name, latitude, longitude) VALUES ('Salvador',       -12.971389, -38.501389);     -- 2
INSERT INTO city (name, latitude, longitude) VALUES ('Fortaleza',      -3.717222,  -38.543056);
INSERT INTO city (name, latitude, longitude) VALUES ('Brasília',       -15.780148, -47.929169);     -- 4
INSERT INTO city (name, latitude, longitude) VALUES ('Vitória',        -20.315278, -40.312778);
INSERT INTO city (name, latitude, longitude) VALUES ('Goiânia',        -16.686389, -49.264444);     -- 6
INSERT INTO city (name, latitude, longitude) VALUES ('São Luís',       -2.529722,  -44.302778);
INSERT INTO city (name, latitude, longitude) VALUES ('Cuiabá',         -15.596667, -56.096944);     -- 8
INSERT INTO city (name, latitude, longitude) VALUES ('Campo Grande',   -20.442778, -54.646389);
INSERT INTO city (name, latitude, longitude) VALUES ('Belo Horizonte', -19.916667, -43.933333);     -- 10
INSERT INTO city (name, latitude, longitude) VALUES ('Belém',          -1.455833,  -48.504444);
INSERT INTO city (name, latitude, longitude) VALUES ('João Pessoa',    -7.115,     -34.863056);     -- 12
INSERT INTO city (name, latitude, longitude) VALUES ('Curitiba',       -25.429722, -49.271944);
INSERT INTO city (name, latitude, longitude) VALUES ('Recife',         -8.047778,  -34.877778);     -- 14
INSERT INTO city (name, latitude, longitude) VALUES ('Teresina',       -5.092222,  -42.803056);
INSERT INTO city (name, latitude, longitude) VALUES ('Rio de Janeiro', -22.908333, -43.196389);     -- 16
INSERT INTO city (name, latitude, longitude) VALUES ('Natal',          -5.794444,  -35.211667);
INSERT INTO city (name, latitude, longitude) VALUES ('Porto Alegre',   -30.033056, -51.23);         -- 18
INSERT INTO city (name, latitude, longitude) VALUES ('Porto Velho',    -8.761944,  -63.903889);
INSERT INTO city (name, latitude, longitude) VALUES ('Boa Vista',      2.819722,   -60.671667);     -- 20
INSERT INTO city (name, latitude, longitude) VALUES ('Florianópolis',  -27.595833, -48.548889);
INSERT INTO city (name, latitude, longitude) VALUES ('São Paulo',      -23.547778, -46.635833);     -- 22
INSERT INTO city (name, latitude, longitude) VALUES ('Aracaju',        -10.947222, -37.073056);
INSERT INTO city (name, latitude, longitude) VALUES ('Palmas',         -10.183333, -48.333333);     -- 24
INSERT INTO city (name, latitude, longitude) VALUES ('Maceió',         -9.66625,   -35.7351);
INSERT INTO city (name, latitude, longitude) VALUES ('Rio Branco',     -9.97472,   -67.81);         -- 26

-- Segment
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (20,  1,  785, 10*60+23);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 1, 20,  785, 10*60+23);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (19,  1,  981, 17*60+22);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 1, 19,  981, 17*60+22);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (19, 26,  514,  5*60+49);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (26, 19,  514,  5*60+49);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (19,  8, 1458, 16*60+ 0);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 8, 19, 1458, 16*60+ 0);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 8,  6,  841,  8*60+52);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 6,  8,  841,  8*60+52);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 8,  9,  706,  7*60+39);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 9,  8,  706,  7*60+39);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 9,  6,  839, 10*60+27);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 6,  9,  839, 10*60+27);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 9, 13,  997, 10*60+46);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (13,  9,  997, 10*60+46);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (13, 18,  740,  8*60+ 0);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (18, 13,  740,  8*60+ 0);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (13, 21,  302,  3*60+39);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (21, 13,  302,  3*60+39);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (13, 22,  384,  4*60+17);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (22, 13,  384,  4*60+17);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (21, 18,  456,  4*60+45);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (18, 21,  456,  4*60+45);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (22, 16,  414,  4*60+44);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (16, 22,  414,  4*60+44);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (22, 10,  607,  6*60+38);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (10, 22,  607,  6*60+38);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (22,  6, 1077, 11*60+18);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 6, 22, 1077, 11*60+18);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (22,  4, 1036, 10*60+41);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 4, 22, 1036, 10*60+41);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 4,  6,  208,  2*60+56);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 6,  4,  208,  2*60+56);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 4, 10,  740, 10*60+ 0);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (10,  4,  740, 10*60+ 0);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 4, 24,  970, 10*60+21);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (24,  4,  970, 10*60+21);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 4,  2, 1445, 18*60+45);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 2,  4, 1445, 18*60+45);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (10, 16,  441,  6*60+35);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (16, 10,  441,  6*60+35);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (10,  5,  515,  8*60+21);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 5, 10,  515,  8*60+21);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (10,  2, 1351, 20*60+19);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 2, 10, 1351, 20*60+19);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (16,  5,  518,  7*60+16);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 5, 16,  518,  7*60+16);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 5,  2, 1175, 17*60+16);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 2,  5, 1175, 17*60+16);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 2, 15, 1152, 16*60+25);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (15,  2, 1152, 16*60+25);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 2, 24, 1662, 19*60+27);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (24,  2, 1662, 19*60+27);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 2, 23,  326,  5*60+ 2);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (23,  2,  326,  5*60+ 2);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 2,  3, 1180, 16*60+50);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 3,  2, 1180, 16*60+50);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (11, 24, 1363, 16*60+42);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (24, 11, 1363, 16*60+42);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (11,  7,  576, 10*60+37);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 7, 11,  576, 10*60+37);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (15,  7,  436,  6*60+50);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 7, 15,  436,  6*60+50);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (15,  3,  604,  8*60+41);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 3, 15,  604,  8*60+41);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (15, 23, 1118, 15*60+ 9);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (23, 15, 1118, 15*60+ 9);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (15, 25, 1192, 16*60+20);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (25, 15, 1192, 16*60+20);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (15, 14, 1126, 15*60+52);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (14, 15, 1126, 15*60+52);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (23, 25,  272,  3*60+53);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (25, 23,  272,  3*60+53);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (25, 14,  256,  3*60+42);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (14, 25,  256,  3*60+42);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (14, 12,  116,  1*60+58);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (12, 14,  116,  1*60+58);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (12, 17,  181,  2*60+21);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (17, 12,  181,  2*60+21);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES (17,  3,  521,  7*60+40);
INSERT INTO segment (from_id, to_id, distance, duration) VALUES ( 3, 17,  521,  7*60+40);