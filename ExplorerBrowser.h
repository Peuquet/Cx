// ExplorerBrowser.h : main header file for the ExplorerBrowser application
//
#pragma once

#ifndef __AFXWIN_H__
	#error "include 'stdafx.h' before including this file for PCH"
#endif

#include "resource.h"       // main symbols
#include "ExplorerBrowser_i.h"


// CExplorerBrowserApp:
// See ExplorerBrowser.cpp for the implementation of this class
//

class CExplorerBrowserApp : public CWinApp
{
public:
	CExplorerBrowserApp();
	
	bool m_bShowFrames;

// Overrides
public:
	virtual BOOL InitInstance();

// Implementation
	afx_msg void OnAppAbout();
	DECLARE_MESSAGE_MAP()
	afx_msg void OnFileNewframedwindow();
	afx_msg void OnFileNew();
	BOOL ExitInstance(void);
};

extern CExplorerBrowserApp theApp;