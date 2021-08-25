cd ..
cd ..
del /s /q docs
rmdir /s /q docs
mkdir docs
cd tools
cd "build tools"
mkdir output
mkdir "output\Duik"
mkdir "output\Duik\ScriptUI Panels"
mkdir "output\Duik\Tools"
mkdir "output\Duik\Help"
mkdir "output\Duik_API"
DuBuilder ..\..\inc\api.jsxinc -nobanner output\Duik_API\Duik_api.jsxinc
DuBuilder ..\..\inc\api_all.jsxinc -nobanner -d jsdoc_conf.json output\Duik_API\DuAEF_Duik_api.jsxinc
DuBuilder ..\..\Duik.jsx -nobanner "output\Duik\ScriptUI Panels\Duik.jsx"
DuBuilder "..\..\Duik Layer Manager.jsx" -nobanner "output\Duik\ScriptUI Panels\Duik Layer Managers.jsx"
DuBuilder "..\..\Duik Rigging.jsx" -nobanner "output\Duik\ScriptUI Panels\Duik Rigging.jsx"
echo " " > "output\Duik\LICENSE.md"
echo " " > "output\Duik_API\LICENSE.md"
echo " " > "output\Duik\LICENSE.txt"
echo " " > "output\Duik_API\LICENSE.txt"
echo " " > "output\Duik\README.txt"
xcopy /Y items\LICENSE.md "output\Duik\LICENSE.md"
xcopy /Y items\LICENSE.md "output\Duik_API\LICENSE.md"
xcopy /Y items\LICENSE.txt "output\Duik\LICENSE.txt"
xcopy /Y items\LICENSE.txt "output\Duik_API\LICENSE.txt"
xcopy /Y items\README.txt "output\Duik\README.txt"
xcopy /S /I /Y ..\..\docs output\Duik_API\docs
xcopy /S /I /Y ..\..\Duik_Docs\docs output\Duik\Help
cd output\Duik\Help
rm -f CNAME
cd ..
cd ..
cd ..
cd output\Duik_API\docs
xcopy /Y Duik.html index.html
cd ..
cd ..
cd ..
cd ..
cd ..
cd docs
xcopy /Y Duik.html index.html
echo duik.rxlab.io > "CNAME"
pause