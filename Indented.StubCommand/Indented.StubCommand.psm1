$class = @(
    'ScriptBuilder'
)

foreach ($file in $class) {
    . ("{0}\class\{1}.ps1" -f $psscriptroot, $file)
}

$private = @(
    'GetTypeName'
    'TestIsForeignAssembly'
)

foreach ($file in $private) {
    . ("{0}\private\{1}.ps1" -f $psscriptroot, $file)
}

$public = @(
    'Get-StubRequiredType'
    'New-StubCommand'
    'New-StubDynamicParam'
    'New-StubModule'
    'New-StubType'
)

foreach ($file in $public) {
    . ("{0}\public\{1}.ps1" -f $psscriptroot, $file)
}

$functionsToExport = @(
    'Get-StubRequiredType'
    'New-StubCommand'
    'New-StubDynamicParam'
    'New-StubModule'
    'New-StubType'
)
Export-ModuleMember -Function $functionsToExport

. ("{0}\InitializeModule.ps1" -f $psscriptroot)
InitializeModule

