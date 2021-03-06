// SSDT-UIAC-ALL.dsl
//
// This SSDT can be used as a template to build your own
// customization for USBInjectAll.kext.
//
// This SSDT contains all ports, so using it is the same as without
// a custom SSDT.  Delete ports that are not connected or ports you
// do not need.
//
// Change the UsbConnector or portType as needed to match your
// actual USB configuration.
//
// Note:
// portType=0 seems to indicate normal external USB2 port (as seen in MacBookPro8,1)
// portType=2 seems to indicate "internal device" (as seen in MacBookPro8,1)
// portType=4 is used by MacBookPro8,3 (reason/purpose unknown)
//

DefinitionBlock ("", "SSDT", 2, "hack", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            "8086_9d2f", Package()
            {
                "port-count", Buffer() { 26, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package() // USB2_3 Left Rear
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package() // USB2_3 Right Rear
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
//                    "HS03", Package() // Nothing
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 3, 0, 0, 0 },
//                    },
                    "HS04", Package() // USB2_3 Right Front
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
//                    "HS05", Package() // USB2 WWAN
//                    {
//                        "UsbConnector", 255,
//                        "port", Buffer() { 5, 0, 0, 0 },
//                    },
//                    "HS06", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 6, 0, 0, 0 },
//                    },
                    "HS07", Package() // USB2 Bluetooth
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package() // USB2 Camera
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
//                    "HS09", Package() // Biometrics
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 9, 0, 0, 0 },
//                    },
//                    "HS10", Package() // Touchscreen
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 10, 0, 0, 0 },
//                    },
                    "SS01", Package() // USB2_3 Left Rear
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    "SS02", Package() // USB2_3 Right Rear
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 14, 0, 0, 0 },
                    },
                    "SS03", Package() // Card Reader
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 15, 0, 0, 0 },
                    },
                    "SS04", Package() // USB2_3 Right Front
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
//                    "SS05", Package() // USB-C (not supported - yet?)
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 17, 0, 0, 0 },
//                    },
//                    "SS06", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 18, 0, 0, 0 },
//                    },
//                    "USR1", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 11, 0, 0, 0 },
//                    },
//                    "USR2", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 12, 0, 0, 0 },
//                    },
                },
            },
        })
    }
}
//EOF
