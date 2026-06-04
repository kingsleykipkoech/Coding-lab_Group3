process_vitals() {
echo "scanning for critical conditions"
grep "CRITICAL" active_logs/heart_rate_log.log active_logs/temperature_log.log | \
awk -F'|' '{print $1, $2, $3}'>reports/critical_alerts.txt
echo "scan complete"
}
process_vitals

water_audit() {
echo "checking avarage  water  usage  for  the  ICU_WATER_RESERVE"
grep " ICU_WATER_RESERVE" active_logs/water_usage_log.log | \
awk -F'|' '{sum += $3; count++} END {printf "Average ICU Water Usage: %.2f\n", sum/count}'
}
water_audit
