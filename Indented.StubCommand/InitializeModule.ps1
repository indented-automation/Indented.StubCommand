function InitializeModule {
    Register-ArgumentCompleter -CommandName New-StubModule -ParameterName FromModule -ScriptBlock { Get-Module | Select-Object -ExpandProperty Name }
    Register-ArgumentCompleter -CommandName New-StubCommand -ParameterName CommandName -ScriptBlock { Get-Command -CommandType Function, Cmdlet | Select-Object -ExpandProperty Name }
}