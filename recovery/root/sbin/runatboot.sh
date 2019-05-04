#!/sbin/sh

# The below variables shouldn't need to be changed
# unless you want to call the script something else
SCRIPTNAME="VendorInit"
LOGFILE=/tmp/recovery.log

# Functions for logging to the recovery log
log_info()
{
	echo "I:$SCRIPTNAME:"$1 >> $LOGFILE
}

log_error()
{
	echo "E:$SCRIPTNAME:"$1 >> $LOGFILE
}

# Functions to update props using resetprop
update_product_device()
{
	log_info "Current product: $product"
	resetprop ro.build.product $1
	product=$(getprop ro.build.product)
	log_info "New product: $product"
	log_info "Current device: $device"
	resetprop ro.product.device $1
	device=$(getprop ro.product.device)
	log_info "New device: $device"
}

update_model()
{
	log_info "Current model: $model"
	resetprop ro.product.model $1
	model=$(getprop ro.product.model)
	log_info "New model: $model"
}

# These variables will pull directly from getprop output
bootmid=$(getprop ro.boot.mid)
bootcid=$(getprop ro.boot.cid)
device=$(getprop ro.product.device)
model=$(getprop ro.product.model)
product=$(getprop ro.build.product)
hardware=$(getprop ro.hardware)

# Here's where the fun begins...
# To adapt this for other devices, only the MID strings in the case statement
# need to be updated, and the value of the props to be set based on them.
# I tried to make the syntax as straightforward as possible so it's easy
# to update for future devices.
log_info "Updating device properties based on MID and CID..."
log_info "MID Found: $bootmid"
log_info "CID Found: $bootcid"

case $bootmid in
	"2Q3F50000")
		## japan ##
		if [ $hardware == 'htc_ocl' ]; then
			update_product_device "htc_ocla1_sprout";
			log_info "Current model: $model"
		fi
		;;
	"2Q3F20000")
		## HTC Europe ##
		if [ $hardware == 'htc_ocl' ]; then
			update_product_device "htc_ocla1_sprout";
			log_info "Current model: $model"
		fi
		;;
	*)
		log_error "MID not found. Setting default values."
		if [ $hardware == 'htc_ocl' ]; then
			update_product_device "htc_ocla1_sprout";
			log_info "Current model: $model"
		fi
		;;
esac

exit 0
