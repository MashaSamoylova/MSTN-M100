# MSTN-M100
Describes work with MSTN-M100 controller

## Ubuntu 18.04
Step-by-step
1. Run
```
sudo ./setup.sh
```
2. Reboot your system
3. Connect your controller to computer with usb. On success, two(or one, it depends on controller mode) interfaces
should appear in your system:
If controller in user-mode - `/dev/mstn-ctrl<int>` and `/dev/mstn-io<int>`,
If controller in boot-mode - `/dev/mstn-boot<int>`
