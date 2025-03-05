function conservation() {
    # if conservation action not correct leave function
    if [ "$1" != "on" ] && [ "$1" != "off" ]; then
        echo "Usage: conservation [on|off]"
        return 1
    fi
    # Assign x 1 if action is 'on', 0 if it is 'off'
    x=$([ "$1" = "on" ] && echo 1 || echo 0)
    path=/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
    # If file is not present leave the function
    if [ ! -f "$path" ]; then
        echo "Error: File not found: $path"
        return 1
    fi
    sudo bash -c "echo $x > $path"
    # If previous command fails, return with failure message
    if [ $? -ne 0 ]; then
        echo "Error: Failed to write to $path"
    else
	#Message when the command succeeds
        echo "Conservation mode set to $1"
    fi
}
