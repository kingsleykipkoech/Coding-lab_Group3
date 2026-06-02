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


water_audit() {
echo "checking avarage  water  usage  for  the  ICU_WATER_RESERVE"
grep " ICU_WATER_RESERVE" active_logs/water_usage_log.log | \
awk -F'|' '{sum += $3; count++} END {printf "Average ICU Water Usage: %.2f\n", sum/count}'
}
water_audit
