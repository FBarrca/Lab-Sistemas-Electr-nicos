#include "CPantalla.h"
#include <iostream>
#include <windows.h>
#include "serial.h"
#include <string>

CPantalla::CPantalla()
{ // var inicialiation
    m_orientacion_actual = 0;
    m_orientacion_inicial = 0;
    // get current display orientation
    DEVMODE dm;
    ZeroMemory(&dm, sizeof(dm));
    dm.dmSize = sizeof(dm);
    if (0 != EnumDisplaySettings(NULL, ENUM_CURRENT_SETTINGS, &dm))
    {
        std::cout << "Initializing: "
                  << "\n";
        ;
        std::cout << "Default Orientation: ";
        switch (dm.dmDisplayOrientation)
        {
        case DMDO_DEFAULT:
            m_orientacion_inicial = 0;
            break;
        case DMDO_90:
            m_orientacion_inicial = 90;
            break;
        case DMDO_180:
            m_orientacion_inicial = 180;
            break;
        case DMDO_270:
            m_orientacion_inicial = 270;
            break;
        }
        m_orientacion_actual = m_orientacion_inicial;
        std::cout << m_orientacion_inicial << "\n";
    }
}
CPantalla::~CPantalla() // Destructor de CPantalla devuelve a la pos inicial
{
    // std::cout <<"Posicion antes de borrar" << m_orientacion_actual << "\n";
    // std::cout << "Por tanto tendre que girar:" << (m_orientacion_actual - m_orientacion_inicial) / 90 << "\n";
    std::cout << "\nReverting to default orientation";
    //int n_rot;
    //if (m_orientacion_actual > m_orientacion_inicial)
    //{
    //    n_rot = (m_orientacion_actual - m_orientacion_inicial) / 90;
    //    for (int i = 0; i < n_rot; i++)
    //    {
    //        // std::cout << "Ejecutado counterclock borrar" << i << "\n";
    //        counterclockwise();
    //    }
    //}
    //else if (m_orientacion_actual < m_orientacion_inicial)
    //{
    //    n_rot = (m_orientacion_inicial - m_orientacion_actual) / 90;
    //    for (int i = 0; i < n_rot; i++)
    //    {
    //        // std::cout << "Ejecutado clock borrar" << i << "\n";
    //        clockwise();
    //    }
    //}
    CPantalla::setLandscape();
}

void CPantalla::clockwise() // gira la pantalla +90�
{
    if (m_orientacion_actual == 270)
        m_orientacion_actual = 0;
    else
        m_orientacion_actual += 90;
    std::cout << "\r Actual Orientation: " << m_orientacion_actual << "         ";
    DEVMODE dm;
    // initialize the DEVMODE structure
    ZeroMemory(&dm, sizeof(dm));
    dm.dmSize = sizeof(dm);
    if (0 != EnumDisplaySettings(NULL, ENUM_CURRENT_SETTINGS, &dm))
    {
        // swap height and width
        DWORD dwTemp = dm.dmPelsHeight;
        dm.dmPelsHeight = dm.dmPelsWidth;
        dm.dmPelsWidth = dwTemp;

        // determine new orientaion
        switch (dm.dmDisplayOrientation)
        {
        case DMDO_DEFAULT:
            dm.dmDisplayOrientation = DMDO_270;
            break;
        case DMDO_270:
            dm.dmDisplayOrientation = DMDO_180;
            break;
        case DMDO_180:
            dm.dmDisplayOrientation = DMDO_90;
            break;
        case DMDO_90:
            dm.dmDisplayOrientation = DMDO_DEFAULT;
            break;
        default:
            // unknown orientation value
            // add exception handling here
            break;
        }
        long lRet = ChangeDisplaySettings(&dm, 0);
        if (DISP_CHANGE_SUCCESSFUL != lRet)
        {
            // add exception handling here
        }
    }
}

void CPantalla::counterclockwise() // gira la pantalla -90�
{
    if (m_orientacion_actual == 0)
        m_orientacion_actual = 270;
    else
        m_orientacion_actual -= 90;
    std::cout << "\r Actual Orientation: " << m_orientacion_actual << "        ";
    DEVMODE dm;
    // initialize the DEVMODE structure
    ZeroMemory(&dm, sizeof(dm));
    dm.dmSize = sizeof(dm);

    if (0 != EnumDisplaySettings(NULL, ENUM_CURRENT_SETTINGS, &dm))
    {
        // swap height and width
        DWORD dwTemp = dm.dmPelsHeight;
        dm.dmPelsHeight = dm.dmPelsWidth;
        dm.dmPelsWidth = dwTemp;
        // determine new orientaion
        switch (dm.dmDisplayOrientation)
        {
        case DMDO_DEFAULT:
            dm.dmDisplayOrientation = DMDO_90;
            break;
        case DMDO_270:
            dm.dmDisplayOrientation = DMDO_DEFAULT;
            break;
        case DMDO_180:
            dm.dmDisplayOrientation = DMDO_270;
            break;
        case DMDO_90:
            dm.dmDisplayOrientation = DMDO_180;
            break;
        default:
            // unknown orientation value
            // add exception handling here
            break;
        }
        long lRet = ChangeDisplaySettings(&dm, 0);
        if (DISP_CHANGE_SUCCESSFUL != lRet)
        {
            // add exception handling here
        }
    }
}

void CPantalla::setLandscape()
{
    DEVMODE dm;
    // initialize the DEVMODE structure
    ZeroMemory(&dm, sizeof(dm));
    dm.dmSize = sizeof(dm);

    if (0 != EnumDisplaySettings(NULL, ENUM_CURRENT_SETTINGS, &dm))
    {
        if (dm.dmDisplayOrientation == DMDO_90 || dm.dmDisplayOrientation == DMDO_270) // IF PORTRAIT
        {
            // swap height and width
            DWORD dwTemp = dm.dmPelsHeight;
            dm.dmPelsHeight = dm.dmPelsWidth;
            dm.dmPelsWidth = dwTemp;
        }
        // determine new orientaion
        dm.dmDisplayOrientation = DMDO_DEFAULT;
        long lRet = ChangeDisplaySettings(&dm, 0);
        if (DISP_CHANGE_SUCCESSFUL != lRet)
        {
            // add exception handling here
        }
    }
}
void CPantalla::setPortrait()
{
    DEVMODE dm;
    // initialize the DEVMODE structure
    ZeroMemory(&dm, sizeof(dm));
    dm.dmSize = sizeof(dm);

    if (0 != EnumDisplaySettings(NULL, ENUM_CURRENT_SETTINGS, &dm))
    {
        if (dm.dmDisplayOrientation == DMDO_DEFAULT || dm.dmDisplayOrientation == DMDO_180) // IF LANDSCAPE
        {
            // swap height and width
            DWORD dwTemp = dm.dmPelsHeight;
            dm.dmPelsHeight = dm.dmPelsWidth;
            dm.dmPelsWidth = dwTemp;
        }
        // determine new orientaion
        dm.dmDisplayOrientation = DMDO_90;
        long lRet = ChangeDisplaySettings(&dm, 0);
        if (DISP_CHANGE_SUCCESSFUL != lRet)
        {
            // add exception handling here
        }
    }
}
void CPantalla::setLandscapeFlipped()
{
    DEVMODE dm;
    // initialize the DEVMODE structure
    ZeroMemory(&dm, sizeof(dm));
    dm.dmSize = sizeof(dm);

    if (0 != EnumDisplaySettings(NULL, ENUM_CURRENT_SETTINGS, &dm))
    {
        if (dm.dmDisplayOrientation == DMDO_90 || dm.dmDisplayOrientation == DMDO_270) // IF PORTRAIT
        {
            // swap height and width
            DWORD dwTemp = dm.dmPelsHeight;
            dm.dmPelsHeight = dm.dmPelsWidth;
            dm.dmPelsWidth = dwTemp;
        }
        // determine new orientaion
        dm.dmDisplayOrientation = DMDO_180;
        long lRet = ChangeDisplaySettings(&dm, 0);
        if (DISP_CHANGE_SUCCESSFUL != lRet)
        {
            // add exception handling here
        }
    }
}
void CPantalla::setPortraitFlipped()
{
    DEVMODE dm;
    // initialize the DEVMODE structure
    ZeroMemory(&dm, sizeof(dm));
    dm.dmSize = sizeof(dm);

    if (0 != EnumDisplaySettings(NULL, ENUM_CURRENT_SETTINGS, &dm))
    {
        if (dm.dmDisplayOrientation == DMDO_DEFAULT || dm.dmDisplayOrientation == DMDO_180) // IF LANDSCAPE
        {
            // swap height and width
            DWORD dwTemp = dm.dmPelsHeight;
            dm.dmPelsHeight = dm.dmPelsWidth;
            dm.dmPelsWidth = dwTemp;
        }
        // determine new orientaion
        dm.dmDisplayOrientation = DMDO_270;
        long lRet = ChangeDisplaySettings(&dm, 0);
        if (DISP_CHANGE_SUCCESSFUL != lRet)
        {
            // add exception handling here
        }
    }
}