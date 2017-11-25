/* Entrar com,
   Login: system
   Pwd:   <passord>
   e correr os seguintes comandos.
*/

/* Cria utilizador */

CREATE USER BlueInfinity IDENTIFIED BY BlueInfinity;

/* Atribuição de previlégio */
GRANT "CONNECT" TO BlueInfinity;
GRANT "RESOURCE" TO BlueInfinity;
GRANT UNLIMITED TABLESPACE TO BlueInfinity;
GRANT ALTER ANY CLUSTER TO BlueInfinity;
GRANT ALTER SESSION TO BlueInfinity;
GRANT CREATE PROCEDURE TO BlueInfinity;
GRANT CREATE SEQUENCE TO BlueInfinity;
GRANT CREATE TABLE TO BlueInfinity;
GRANT CREATE TRIGGER TO BlueInfinity;
GRANT CREATE VIEW TO BlueInfinity;
ALTER USER BlueInfinity DEFAULT ROLE ALL;

COMMIT;


/* Agora devem sair da conta, e 
   entrar como,
   Login: bd
   Pwd:   bd
   e correr os outros dois scripts: 
   createTables.sql e insertData.sql.
*/
