## NekoTools Server Script (win)

![NekoToolsServerScript](/NekoToolsServer.png?raw=true "NekoToolsServerScript")


### Installation

1. Create a folder where the script will be stored and put the files **NekoToolsServer.bat** and **NekoToolsServer.reg** into that.

2. Change the file path in **NekoToolsServer.reg** (below **C:\\my\\path\to**\\NekoToolsServer.bat\ ) to the path of the folder you just created.

```
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\Directory\shell\NekoToolsServer]
@="Run NekoTools Server..."

[HKEY_CLASSES_ROOT\Directory\shell\NekoToolsServer\command]
@="\"C:\\my\\path\to\\NekoToolsServer.bat\" \"%1\""
```

3. Double click the **NekoToolsServer.reg** file, and confirm the changes to the registry.

### Usage

In Explorer, rightclick on the folder where you want to start Nekotools Server, and select the menu alternative "Run Nekotools Server..."

This starts nekotools with the following parameters: **nekotools server -rewrite -d %1**, where %1 being the path to the rightclicked folder.

Now, you should be able to browse to **"http://localhost:2000/"**. index.htm and index.n (compiled neko files) are served automatically.
