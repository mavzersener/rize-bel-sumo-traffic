netconvert --osm-files rize.osm -o rize.net.xml
randomTrips -n rize.net.xml -r rize.rou.xml -e 50 -l
pause