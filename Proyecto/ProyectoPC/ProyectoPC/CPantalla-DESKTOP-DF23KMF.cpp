#include "CPantalla.h"

CPantalla::CPantalla()
{
    DEVMODE dm;
    // initialize the DEVMODE structure
    ZeroMemory(&dm, sizeof(dm));
    dm.dmSize = sizeof(dm);

    if (0 != EnumDisplaySettings(NULL, ENUM_CURRENT_SETTINGS, &dm))
    {
        std::cout << "Orientation\n";
        switch (dm.dmDisplayOrientation) {
        case DMDO_DEFAULT: std::cout << "DMDO_DEFAULT\n"; break;
        case DMDO_90: std::cout << "DMDO_90\n"; break;
        case DMDO_180: std::cout << "DMDO_180\n"; break;
        case DMDO_270: std::cout << "DMDO_270\n"; break;
        }
}
