#!/system/bin/sh

exec > /dev/kmsg 2>&1

# prop tweak
resetprop ro.zram.mark_idle_delay_mins 60
resetprop ro.zram.first_wb_delay_mins 130
resetprop ro.zram.periodic_wb_delay_hours 24
resetprop ro.lmk.kill_timeout_ms 100
resetprop ro.lmk.psi_complete_stall_ms 150
resetprop ro.lmk.swap_free_low_percentage 20
resetprop ro.lmk.downgrade_pressure 60
killall lmkd
echo "[Genom] Prop lmkd done"
