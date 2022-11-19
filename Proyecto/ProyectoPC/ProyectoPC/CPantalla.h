#pragma once
class CPantalla
{
private:
	int m_orientacion_inicial;
	int m_orientacion_actual;

public:
	CPantalla();
	~CPantalla();
	void clockwise();
	void counterclockwise();

	void setLandscape();
	void setPortrait();
	void setLandscapeFlipped();
	void setPortraitFlipped();
};
