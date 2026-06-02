process_vitals() {
echo "scanning for critical conditions"
grep "CRITICAL" $activelogs/heart_rate_log.log $activelogs/temprature_log.log |awk -F'|' '{
$1=Timestamp ,$2=Device_ID 
$3=Status
$4=Value
Print 'Timestamp:"$1" | Device_ID: "$2" | Value:"$4"}'>$REPORT_FILE
echo"scan complete"
}
process_vitals
