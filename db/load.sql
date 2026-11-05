BEGIN;
DELETE FROM readings;
DELETE FROM events;
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(1,1,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(1,1,'s2',3.3);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(1,1,'s3',34.8);
INSERT INTO events(n,t_s,type,message)
                VALUES(1,1,'THRESHOLD','');
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(2,2,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(2,2,'s2',3.3);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(2,2,'s3',34.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(3,3,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(3,3,'s2',0.7);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(3,3,'s3',34.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(4,4,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(4,4,'s2',0.7);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(4,4,'s3',34.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(5,5,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(5,5,'s2',0.7);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(5,5,'s3',34.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(6,6,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(6,6,'s2',5.2);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(6,6,'s3',34.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(7,7,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(7,7,'s2',6.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(7,7,'s3',34.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(8,8,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(8,8,'s2',10.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(8,8,'s3',34.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(9,9,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(9,9,'s2',11.2);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(9,9,'s3',34.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(10,10,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(10,10,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(10,10,'s3',34.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(11,11,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(11,11,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(11,11,'s3',34.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(12,12,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(12,12,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(12,12,'s3',34.8);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(13,13,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(13,13,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(13,13,'s3',2);
INSERT INTO events(n,t_s,type,message)
                VALUES(13,13,'NORMAL','');
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(14,14,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(14,14,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(14,14,'s3',69.6);
INSERT INTO events(n,t_s,type,message)
                VALUES(14,14,'THRESHOLD','');
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(15,15,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(15,15,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(15,15,'s3',397.6);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(16,16,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(16,16,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(16,16,'s3',294.3);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(17,17,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(17,17,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(17,17,'s3',223.7);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(18,18,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(18,18,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(18,18,'s3',140.2);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(19,19,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(19,19,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(19,19,'s3',237.6);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(20,20,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(20,20,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(20,20,'s3',237.6);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(21,21,'s1',24.4);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(21,21,'s2',14);
INSERT INTO readings(n,t_s,sensor,value)
                    VALUES(21,21,'s3',237.6);
COMMIT;

