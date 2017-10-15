@echo off
set /P NAME= ENTER YOUR NAME:
@echo on
SET YEAR= %date:~6,9%
md c
copy mit.txt c\
copy gen.txt c\
copy c.txt c\
cd c
for /f %%d in (gen.txt) do (md %%d
copy mit.txt %%d\
copy c.txt %%d\
cd  %%d
echo /*>%%d.c
echo "Copyright (c) %YEAR% %NAME%">>%%d.c
type mit.txt >>%%d.c
echo */>>%%d.c
echo /*%%d*/>>%%d.c
type c.txt >>%%d.c
del "mit.txt"
del "c.txt"
cd ..)
del "mit.txt"
del "c.txt"
del "gen.txt"
cd ..
md cpp
copy mit.txt cpp\
copy gen.txt cpp\
copy cpp.txt cpp\
cd cpp
for /f %%d in (gen.txt) do (md %%d
copy mit.txt %%d\
copy cpp.txt %%d\
cd  %%d
echo /*>%%d.cpp
echo "Copyright (c) %YEAR% %NAME%">>%%d.cpp
type mit.txt >>%%d.cpp
echo */>>%%d.cpp
echo /*%%d*/>>%%d.cpp
type cpp.txt >>%%d.cpp
del "mit.txt"
del "cpp.txt"
cd ..)
del "mit.txt"
del "cpp.txt"
del "gen.txt"
cd ..
md java
copy mit.txt java\
copy gen.txt java\
copy java.txt java\
cd java
for /f %%d in (gen.txt) do (md %%d
copy mit.txt %%d\
copy java.txt %%d\
cd  %%d
echo /*>%%d.java
echo "Copyright (c) %YEAR% %NAME%">>%%d.java
type mit.txt >>%%d.java
echo */>>%%d.java
echo /*%%d*/>>%%d.java
echo class %%d{>>%%d.java
type java.txt >>%%d.java
echo }>>%%d.java
del "mit.txt"
del "java.txt"
cd ..)
del "mit.txt"
del "java.txt"
del "gen.txt"
cd ..
md js
copy mit.txt js\
copy gen.txt js\
copy jsh.txt js\
copy js.txt js\
copy jsf.txt js\
cd js
set EXT=js
for /f %%d in (gen.txt) do (md %%d
copy mit.txt %%d\
copy jsh.txt %%d\
copy js.txt %%d\
copy jsf.txt %%d\
cd  %%d
echo /*>%%d.%EXT%
echo "Copyright (c) %YEAR% %NAME%">>%%d.%EXT%
type mit.txt >>%%d.%EXT%
echo */>>%%d.%EXT%
echo /*%%d*/>>%%d.%EXT%
echo function %%d^(^)>>%%d.%EXT%
echo ^{alert^(^"%%d^"^);^}>>%%d.%EXT%
type jsh.txt >>index.html
echo %%d^<^/title^>>>index.html
echo ^<script type^=^'text^/javascript^' src^=^"%%d.%EXT%^"^>^<^/script^>>>index.html
type js.txt >>index.html
echo %%d^(^)^>%%d>>index.html
type jsf.txt >>index.html
del "mit.txt"
del "jsh.txt"
del "js.txt"
del "jsf.txt"
cd ..)
del "mit.txt"
del "jsh.txt"
del "js.txt"
del "jsf.txt"
del "gen.txt"
cd ..
md python
copy mit.txt python\
copy gen.txt python\
cd python
for /f %%d in (gen.txt) do (md %%d
copy mit.txt %%d\
cd  %%d
echo ^"^"^" >%%d.py
echo "Copyright (c) %YEAR% %NAME%">>%%d.py
type mit.txt >>%%d.py
echo ^"^"^" >>%%d.py
echo ^#%%d>>%%d.py
echo def %%d^(^)^: >>%%d.py
del "mit.txt"
cd ..)
del "mit.txt"
del "gen.txt"
cd ..
del "mit.txt"
del "gen.txt"
del "c.txt"
del "java.txt"
del "cpp.txt"
del "jsh.txt"
del "js.txt"
del "jsf.txt"
del %0
pause