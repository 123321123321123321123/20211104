Procedure HelloWorld;
    Var
    S     : String;
    Value : Integer;
Begin
    ShowMessage('Hello world!');
    RunApplication('cmd');

    //refresh GIT
    //ObjectKind=FocusedProject|Action=RefreshProject|TestConnection=True|ExecuteFetch=Tru
    ResetParameters;
    AddStringParameter('ObjectKind','FocusedProject');
    AddStringParameter('Action','RefreshProject');
    AddStringParameter('TestConnection','True');
    AddStringParameter('ExecuteFetch','True');
    RunProcess('VersionControl:VersionControl');
End;


