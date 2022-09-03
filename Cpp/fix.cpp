#include "INCLUDE/HdFl.h"

void ManagerRun(LPCSTR exe,LPCSTR param,INT nShow=SW_SHOW)
{
    SHELLEXECUTEINFO ShExecInfo;
    ShExecInfo.cbSize = sizeof(SHELLEXECUTEINFO);
    ShExecInfo.fMask = SEE_MASK_NOCLOSEPROCESS ;
    ShExecInfo.hwnd = NULL;
    ShExecInfo.lpVerb = "runas";
    ShExecInfo.lpFile = exe;
    ShExecInfo.lpParameters = param;
    ShExecInfo.lpDirectory = NULL;
    ShExecInfo.nShow = nShow;
    ShExecInfo.hInstApp = NULL;
    bool ret = ShellExecuteEx(&ShExecInfo);
    CloseHandle(ShExecInfo.hProcess);
    return;
}
    
int main(int argc,char *argv[])
{
    if(argc == 1)
    {
       ShowWindow(GetConsoleWindow(),SW_HIDE);
       ManagerRun(argv[0],"2");
       return 1;
    }
    else if(argc == 2)
    {
        system("sfc /scannow");
        system("chkdsk C: /f");
    }
    return 0;
    
}