<?
$dbconn = pg_connect("host=postgresql-service dbname=my_db user=db_user password=password");
$result = pg_query($dbconn, "select * from tabla");
while ($row = pg_fetch_row($result)) {
  echo "$row[0] $row[1] $row[2]\n";
}
pg_close($dbconn);
?>

