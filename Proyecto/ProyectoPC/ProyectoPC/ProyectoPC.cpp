#include <iostream>
#include <windows.h>
#include <winuser.h>

#include "serial.h"
#include "CPantalla.h"
#include <string>
#include <ctime>

using namespace std;

enum
{
    LANDSCAPE,
    PORTRAIT,
    LANDSCAPE_FLIPPED,
    PORTRAIT_FLIPPED,
};

int main(void)
{
    std::cout << "Welcome to Screen Rotator. " << std::endl;
    std::cout << "To close the program keep pressed the return or enter key. " << std::endl;

    CSerial port;
    CPantalla pantalla;
    unsigned char buffer[10];
    unsigned long resultado;

    //pantalla.setLandscape Flipped();
    while (1)
    {
        if (port.PortRead(10, buffer, &resultado))
        { // buffferlength bufferpointern_Elem_read pointer
            cout << (int)buffer[0] << endl;
            cout << buffer[0] << endl;
            switch ((int)buffer[0]-48 )
            {
            case LANDSCAPE:
                pantalla.setLandscape();
                break;
            case PORTRAIT:
                pantalla.setPortraitFlipped();
                break;
            case LANDSCAPE_FLIPPED:
                pantalla.setLandscapeFlipped();
                break;
            case PORTRAIT_FLIPPED:
                pantalla.setPortrait();
                break;
            default:
                break;
            }

            //     if (buffer[0] == 0) pantalla.counterclockwise();
            //    if (buffer[0] == 1) pantalla.clockwise();
        }

        ////https://docs.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
        uint8_t a = GetKeyState(VK_ESCAPE) & 0x80;
        uint8_t b = GetKeyState(VK_RETURN) & 0x80;
        if (a == 0x80 || b == 0x80)
        {
            cout << "\nProgram is closing by user action";
            // End program, call destructor
            return 0;
        }
    }
    return 0;
}