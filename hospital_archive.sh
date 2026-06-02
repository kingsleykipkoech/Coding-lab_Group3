#!/bin/bash
TIMESTAMP=$(date +"%Y%m%d_%H%M")
echo "Timestamping........"
mv active_logs/heart_rate_log.log archived_logs/heart_rate_$TIMESTAMP.log
mv active_logs/temperature_log.log archived_logs/temperature_$TIMESTAMP.log
mv active_logs/water_usage_log.log archived_logs/water_usage_$TIMESTAMP.log
echo "Logs successfully moved to archived_logs/"
touch active_logs/heart_rate_log.log
touch active_logs/temperature_log.log
touch active_logs/water_usage_log.log
echo "Structuring  success......"
